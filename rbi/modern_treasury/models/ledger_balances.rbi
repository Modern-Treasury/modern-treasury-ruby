# typed: strong

module ModernTreasury
  module Models
    class LedgerBalances < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerBalances,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The available_balance is the sum of all posted inbound entries and pending
      # outbound entries. For credit normal, available_amount = posted_credits -
      # pending_debits; for debit normal, available_amount = posted_debits -
      # pending_credits.
      sig { returns(ModernTreasury::LedgerBalance) }
      attr_reader :available_balance

      sig do
        params(available_balance: ModernTreasury::LedgerBalance::OrHash).void
      end
      attr_writer :available_balance

      # The pending_balance is the sum of all pending and posted entries.
      sig { returns(ModernTreasury::LedgerBalance) }
      attr_reader :pending_balance

      sig do
        params(pending_balance: ModernTreasury::LedgerBalance::OrHash).void
      end
      attr_writer :pending_balance

      # The posted_balance is the sum of all posted entries.
      sig { returns(ModernTreasury::LedgerBalance) }
      attr_reader :posted_balance

      sig { params(posted_balance: ModernTreasury::LedgerBalance::OrHash).void }
      attr_writer :posted_balance

      sig do
        params(
          available_balance: ModernTreasury::LedgerBalance::OrHash,
          pending_balance: ModernTreasury::LedgerBalance::OrHash,
          posted_balance: ModernTreasury::LedgerBalance::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The available_balance is the sum of all posted inbound entries and pending
        # outbound entries. For credit normal, available_amount = posted_credits -
        # pending_debits; for debit normal, available_amount = posted_debits -
        # pending_credits.
        available_balance:,
        # The pending_balance is the sum of all pending and posted entries.
        pending_balance:,
        # The posted_balance is the sum of all posted entries.
        posted_balance:
      )
      end

      sig do
        override.returns(
          {
            available_balance: ModernTreasury::LedgerBalance,
            pending_balance: ModernTreasury::LedgerBalance,
            posted_balance: ModernTreasury::LedgerBalance
          }
        )
      end
      def to_hash
      end
    end
  end
end
