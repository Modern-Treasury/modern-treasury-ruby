# frozen_string_literal: true

module ModernTreasury
  class Page < ::Array
    # @return [Integer]
    attr_accessor :per_page

    # @return [String]
    attr_accessor :after_cursor

    # @!visibility private
    #
    # @return [ModernTreasury::Client]
    attr_accessor :client

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :req

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :opts

    # @!visibility private
    #
    # @param model [Object]
    # @param raw_data [Hash{Symbol => Object}]
    # @param response [Net::HTTPResponse]
    # @param client [ModernTreasury::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    def initialize(model, raw_data, response, client, req, opts)
      super(raw_data.map { |e| model.convert(e) })
      self.per_page = ModernTreasury::Util.coerce_integer(response["X-Per-Page"])
      self.after_cursor = response["X-After-Cursor"]
      self.client = client
      self.req = req
      self.opts = opts
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
      client.request(ModernTreasury::Util.deep_merge(req, {query: {after_cursor: after_cursor}}), opts)
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
      "#<#{selfl.class}:0x#{object_id.to_s(16)} per_page=#{per_page.inspect} after_cursor=#{after_cursor.inspect}>"
    end
  end
end
