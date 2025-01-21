# frozen_string_literal: true

module ModernTreasury
  # @private
  #
  class BasePage
    # rubocop:disable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page? = (raise NotImplementedError)

    # @raise [ModernTreasury::APIError]
    # @return [ModernTreasury::BasePage]
    #
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def auto_paging_each(&blk) = (raise NotImplementedError)

    # @return [Enumerable]
    #
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @private
    #
    # @param client [ModernTreasury::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param opts [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}]
    # @param unwrapped [Object]
    #
    def initialize(client:, req:, opts:, headers:, unwrapped:)
      @client = client
      @req = req
      @opts = opts
    end

    # rubocop:enable Lint/UnusedMethodArgument
  end
end
