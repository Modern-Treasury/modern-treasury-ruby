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
  # page.auto_paging_each do |item|
  # #   item ...
  # end
  # ```
  #
  # @example
  # ```ruby
  # items = page.to_enum.take(2)
  #
  # items => Array
  # ```
  class Page < ::Array
    include ModernTreasury::BasePage

    # @return [Integer]
    attr_accessor :per_page

    # @return [String]
    attr_accessor :after_cursor

    # @private
    #
    # @param client [ModernTreasury::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}]
    # @param unwrapped [Hash{Symbol=>Object}]
    #
    def initialize(client:, req:, headers:, unwrapped:)
      @client = client
      @req = req

      model = req.fetch(:model)

      case unwrapped
      in Array
        super(unwrapped&.map { |row| model.coerce(row) })
      else
        super([])
      end

      @client = client
      @req = req

      @per_page = ModernTreasury::Util.coerce_integer(headers["X-Per-Page"])

      @after_cursor = headers["X-After-Cursor"]&.to_s
    end

    # @return [Boolean]
    #
    def next_page?
      !after_cursor.nil?
    end

    # @raise [ModernTreasury::HTTP::Error]
    # @return [ModernTreasury::Page]
    #
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end

      req = ModernTreasury::Util.deep_merge(@req, {query: {after_cursor: after_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.each { |row| blk.call(row) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} per_page=#{per_page.inspect} after_cursor=#{after_cursor.inspect}>"
    end
  end
end
