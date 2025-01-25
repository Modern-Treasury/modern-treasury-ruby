# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute [r] id
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :id, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :id

        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute [r] per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :per_page

        # @!attribute [r] transaction_id
        #
        #   @return [String, nil]
        optional :transaction_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :transaction_id

        # @!attribute type
        #
        #   @return [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil]
        optional :type,
                 enum: -> {
                   ModernTreasury::Models::Transactions::LineItemListParams::Type
                 },
                 nil?: true

        # @!parse
        #   # @param id [Hash{Symbol=>String}]
        #   # @param after_cursor [String, nil]
        #   # @param per_page [Integer]
        #   # @param transaction_id [String]
        #   # @param type [String, nil]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(id: nil, after_cursor: nil, per_page: nil, transaction_id: nil, type: nil, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :originating
        #   # ...
        # in :receiving
        #   # ...
        # end
        # ```
        class Type < ModernTreasury::Enum
          ORIGINATING = :originating
          RECEIVING = :receiving

          finalize!
        end
      end
    end
  end
end
