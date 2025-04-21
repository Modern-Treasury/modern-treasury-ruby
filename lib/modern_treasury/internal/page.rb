# frozen_string_literal: true

module ModernTreasury
  module Internal
    # @generic Elem
    #
    # @example
    #   if page.has_next?
    #     page = page.next_page
    #   end
    #
    # @example
    #   page.auto_paging_each do |connection|
    #     puts(connection)
    #   end
    class Page < ::Array
      include ModernTreasury::Internal::Type::BasePage

      # @return [Integer]
      attr_accessor :per_page

      # @return [String]
      attr_accessor :after_cursor

      # @return [Boolean]
      def next_page?
        !after_cursor.nil?
      end

      # @raise [ModernTreasury::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = ModernTreasury::Internal::Util.deep_merge(@req, {query: {after_cursor: after_cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [ModernTreasury::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in Array
          replace(page_data.map { ModernTreasury::Internal::Type::Converter.coerce(@model, _1) })
        else
        end

        @per_page = ModernTreasury::Internal::Util.coerce_integer(headers["X-Per-Page"])
        @after_cursor = headers["X-After-Cursor"]&.to_s
      end

      # @api private
      #
      # @return [String]
      def inspect
        # rubocop:disable Layout/LineLength
        model = ModernTreasury::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} per_page=#{per_page.inspect} after_cursor=#{after_cursor.inspect}>"
        # rubocop:enable Layout/LineLength
      end
    end
  end
end
