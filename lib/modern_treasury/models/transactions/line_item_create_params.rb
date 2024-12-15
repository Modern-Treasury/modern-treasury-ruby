# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      class LineItemCreateParams < ModernTreasury::BaseModel
        # @!attribute amount
        #   If a matching object exists in Modern Treasury, `amount` will be populated. Value in specified currency's smallest unit (taken from parent Transaction).
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
        #   # @param amount [Integer] If a matching object exists in Modern Treasury, `amount` will be populated.
        #   #   Value in specified currency's smallest unit (taken from parent Transaction).
        #   #
        #   # @param expected_payment_id [String] The ID of the reconciled Expected Payment, otherwise `null`.
        #   #
        #   # @param transaction_id [String] The ID of the parent transaction.
        #   #
        #   def initialize(amount:, expected_payment_id:, transaction_id:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
