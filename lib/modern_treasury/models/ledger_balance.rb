# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerBalance < ModernTreasury::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute credits
      #
      #   @return [Integer]
      required :credits, Integer

      # @!attribute currency
      #   The currency of the ledger account.
      #
      #   @return [String]
      required :currency, String

      # @!attribute currency_exponent
      #   The currency exponent of the ledger account.
      #
      #   @return [Integer]
      required :currency_exponent, Integer

      # @!attribute debits
      #
      #   @return [Integer]
      required :debits, Integer

      # @!method initialize(amount:, credits:, currency:, currency_exponent:, debits:)
      #   @param amount [Integer]
      #
      #   @param credits [Integer]
      #
      #   @param currency [String] The currency of the ledger account.
      #
      #   @param currency_exponent [Integer] The currency exponent of the ledger account.
      #
      #   @param debits [Integer]
    end
  end
end
