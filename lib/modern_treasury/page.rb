# frozen_string_literal: true

module ModernTreasury
  class Page < ::Array
    # @return [Integer]
    attr_accessor :per_page

    # @return [String]
    attr_accessor :after_cursor

    # @!visibility private
    #
    # @param model [Object]
    # @param raw_data [Hash{Symbol => Object}]
    # @param response [Net::HTTPResponse]
    # @param client [ModernTreasury::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    def initialize(client:, model:, req:, opts:, response:, raw_data:)
      super(raw_data.map { |e| model.convert(e) })
      self.per_page = ModernTreasury::Util.coerce_integer(response["X-Per-Page"])
      self.after_cursor = response["X-After-Cursor"]
      @client = client
      @req = req
      @opts = opts
    end

    # @return [Boolean]
    def next_page?
      !after_cursor.nil?
    end

    # @raise [ModernTreasury::HTTP::Error]
    # @return [ModernTreasury::Page]
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end

      req = ModernTreasury::Util.deep_merge(@req, {query: {after_cursor: after_cursor}})
      @client.request(req, @opts)
    end

    # @param blk [Proc]
    #
    # @return [nil]
    def auto_paging_each(&blk)
      unless block_given?
        raise "A block must be given to #auto_paging_each"
      end
      page = self
      loop do
        page.each { |e| blk.call(e) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} per_page=#{per_page.inspect} after_cursor=#{after_cursor.inspect}>"
    end
  end
end
