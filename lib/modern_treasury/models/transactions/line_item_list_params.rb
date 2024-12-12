# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [Hash]
        optional :id, Hash

        # @!attribute [rw] after_cursor
        #   @return [String]
        optional :after_cursor, String

        # @!attribute [rw] per_page
        #   @return [Integer]
        optional :per_page, Integer

        # @!attribute [rw] transaction_id
        #   @return [String]
        optional :transaction_id, String

        # @!attribute [rw] type
        #   @return [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type]
        optional :type, enum: -> { ModernTreasury::Models::Transactions::LineItemListParams::Type }

        class Type < ModernTreasury::Enum
          ORIGINATING = :originating
          RECEIVING = :receiving
        end
      end
    end
  end
end
