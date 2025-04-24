# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @see ModernTreasury::Resources::Transactions::LineItems#create
      class LineItemCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute amount
        #   If a matching object exists in Modern Treasury, `amount` will be populated.
        #   Value in specified currency's smallest unit (taken from parent Transaction).
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

        # @!method initialize(amount:, expected_payment_id:, transaction_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::Transactions::LineItemCreateParams} for more details.
        #
        #   @param amount [Integer] If a matching object exists in Modern Treasury, `amount` will be populated. Valu
        #   ...
        #
        #   @param expected_payment_id [String] The ID of the reconciled Expected Payment, otherwise `null`.
        #
        #   @param transaction_id [String] The ID of the parent transaction.
        #
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
