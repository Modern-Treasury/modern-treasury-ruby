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

      sig { returns(Integer) }
      attr_accessor :credits

      # The currency of the ledger account.
      sig { returns(String) }
      attr_accessor :currency

      # The currency exponent of the ledger account.
      sig { returns(Integer) }
      attr_accessor :currency_exponent

      sig { returns(Integer) }
      attr_accessor :debits

      sig do
        params(
          amount: Integer,
          credits: Integer,
          currency: String,
          currency_exponent: Integer,
          debits: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        credits:,
        # The currency of the ledger account.
        currency:,
        # The currency exponent of the ledger account.
        currency_exponent:,
        debits:
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            credits: Integer,
            currency: String,
            currency_exponent: Integer,
            debits: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
