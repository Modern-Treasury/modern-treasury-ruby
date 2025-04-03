# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @see ModernTreasury::Resources::Transactions::LineItems#create
      class LineItemCreateParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute amount
        #   If a matching object exists in Modern Treasury, `amount` will be populated.
        #     Value in specified currency's smallest unit (taken from parent Transaction).
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute expected_payment_id
        #   The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @return [String]
        required :expected_payment_id, String

        # @!attribute transaction_id
        #   The ID of the parent transaction.
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # @param amount [Integer]
        #   # @param expected_payment_id [String]
        #   # @param transaction_id [String]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(amount:, expected_payment_id:, transaction_id:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
