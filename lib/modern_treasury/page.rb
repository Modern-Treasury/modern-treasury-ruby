# frozen_string_literal: true

module ModernTreasury
  # @example
  # ```ruby
  # if page.has_next?
  #   page = page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # page.auto_paging_each do |connection|
  #   puts(connection)
  # end
  # ```
  #
  # @example
  # ```ruby
  # connections = page.to_enum.take(2)
  #
  # connections => Array
  # ```
  class Page < ::Array
    include ModernTreasury::BasePage

    # @return [Integer]
    attr_accessor :per_page

    # @return [String]
    attr_accessor :after_cursor

    # @api private
    #
    # @param client [ModernTreasury::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in Array
        replace(page_data&.map { model.coerce(_1) })
      else
      end

      @per_page = ModernTreasury::Util.coerce_integer(headers["X-Per-Page"])

      @after_cursor = headers["X-After-Cursor"]&.to_s
    end

    # @return [Boolean]
    def next_page?
      !after_cursor.nil?
    end

    # @raise [ModernTreasury::HTTP::Error]
    # @return [ModernTreasury::Page]
    def next_page
      unless next_page?
        raise RuntimeError.new("No more pages available. Please check #next_page? before calling ##{__method__}")
      end

      req = ModernTreasury::Util.deep_merge(@req, {query: {after_cursor: after_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.each { blk.call(_1) }
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
