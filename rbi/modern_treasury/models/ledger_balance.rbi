# typed: strong

module ModernTreasury
  module Models
    class LedgerBalance < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerBalance,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :amount_string

      sig { returns(Integer) }
      attr_accessor :credits

      sig { returns(String) }
      attr_accessor :credits_string

      # The currency of the ledger account.
      sig { returns(String) }
      attr_accessor :currency

      # The currency exponent of the ledger account.
      sig { returns(Integer) }
      attr_accessor :currency_exponent

      sig { returns(Integer) }
      attr_accessor :debits

      sig { returns(String) }
      attr_accessor :debits_string

      sig do
        params(
          amount: Integer,
          amount_string: String,
          credits: Integer,
          credits_string: String,
          currency: String,
          currency_exponent: Integer,
          debits: Integer,
          debits_string: String
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        amount_string:,
        credits:,
        credits_string:,
        # The currency of the ledger account.
        currency:,
        # The currency exponent of the ledger account.
        currency_exponent:,
        debits:,
        debits_string:
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            amount_string: String,
            credits: Integer,
            credits_string: String,
            currency: String,
            currency_exponent: Integer,
            debits: Integer,
            debits_string: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
