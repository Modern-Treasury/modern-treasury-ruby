# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerBalance < ModernTreasury::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute amount_string
      #
      #   @return [String]
      required :amount_string, String

      # @!attribute credits
      #
      #   @return [Integer]
      required :credits, Integer

      # @!attribute credits_string
      #
      #   @return [String]
      required :credits_string, String

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

      # @!attribute debits_string
      #
      #   @return [String]
      required :debits_string, String

      # @!method initialize(amount:, amount_string:, credits:, credits_string:, currency:, currency_exponent:, debits:, debits_string:)
      #   @param amount [Integer]
      #
      #   @param amount_string [String]
      #
      #   @param credits [Integer]
      #
      #   @param credits_string [String]
      #
      #   @param currency [String] The currency of the ledger account.
      #
      #   @param currency_exponent [Integer] The currency exponent of the ledger account.
      #
      #   @param debits [Integer]
      #
      #   @param debits_string [String]
    end
  end
end
