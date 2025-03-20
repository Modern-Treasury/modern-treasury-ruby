# frozen_string_literal: true

module ModernTreasury
  # @example
  #   if page.has_next?
  #     page = page.next_page
  #   end
  #
  # @example
  #   page.auto_paging_each do |connection|
  #     puts(connection)
  #   end
  #
  # @example
  #   connections =
  #     page
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   connections => Array
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
        replace(page_data.map { model.coerce(_1) })
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
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
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
      # rubocop:disable Layout/LineLength
      "#<#{self.class}:0x#{object_id.to_s(16)} per_page=#{per_page.inspect} after_cursor=#{after_cursor.inspect}>"
      # rubocop:enable Layout/LineLength
    end
  end
end
