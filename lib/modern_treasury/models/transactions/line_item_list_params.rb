# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @see ModernTreasury::Resources::Transactions::LineItems#list
      class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :id, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute after_cursor
        #
        #   @return [String, nil]
        optional :after_cursor, String, nil?: true

        # @!attribute per_page
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!attribute transaction_id
        #
        #   @return [String, nil]
        optional :transaction_id, String

        # @!attribute type
        #
        #   @return [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil]
        optional :type, enum: -> { ModernTreasury::Models::Transactions::LineItemListParams::Type }, nil?: true

        # @!method initialize(id: nil, after_cursor: nil, per_page: nil, transaction_id: nil, type: nil, request_options: {})
        #   @param id [Hash{Symbol=>String}]
        #   @param after_cursor [String, nil]
        #   @param per_page [Integer]
        #   @param transaction_id [String]
        #   @param type [Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type, nil]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

        module Type
          extend ModernTreasury::Internal::Type::Enum

          ORIGINATING = :originating
          RECEIVING = :receiving

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
