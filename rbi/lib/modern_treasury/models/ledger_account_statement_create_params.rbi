# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The inclusive lower bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      def effective_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_lower_bound=(_)
      end

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      #   be included in the ledger account statement.
      sig { returns(Time) }
      def effective_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def effective_at_upper_bound=(_)
      end

      # The id of the ledger account whose ledger entries are queried against, and its
      #   balances are computed as a result.
      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      # The description of the ledger account statement.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig do
        params(
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ledger_account_id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ledger_account_id:,
        description: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              effective_at_lower_bound: Time,
              effective_at_upper_bound: Time,
              ledger_account_id: String,
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
