# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [Hash{Symbol => String}]
        optional :id, ModernTreasury::HashOf[String]

        # @!attribute after_cursor
        #
        #   @return [String]
        optional :after_cursor, String

        # @!attribute per_page
        #
        #   @return [Integer]
        optional :per_page, Integer

        # @!attribute transaction_id
        #
        #   @return [String]
        optional :transaction_id, String

        # @!attribute type
        #
        #   @return [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type]
        optional :type, enum: -> { ModernTreasury::Models::Transactions::LineItemListParams::Type }

        # @!parse
        #   # @param id [Hash{Symbol => String}, nil]
        #   # @param after_cursor [String, nil]
        #   # @param per_page [Integer, nil]
        #   # @param transaction_id [String, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, after_cursor: nil, per_page: nil, transaction_id: nil, type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :originating
        #   # ...
        # in :receiving
        #   # ...
        # end
        # ```
        class Type < ModernTreasury::Enum
          ORIGINATING = :originating
          RECEIVING = :receiving
        end
      end
    end
  end
end
