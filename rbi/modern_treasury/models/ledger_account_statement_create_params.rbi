# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountStatementCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The inclusive lower bound of the effective_at timestamp of the ledger entries to
      # be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_lower_bound

      # The exclusive upper bound of the effective_at timestamp of the ledger entries to
      # be included in the ledger account statement.
      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      # The id of the ledger account whose ledger entries are queried against, and its
      # balances are computed as a result.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # The description of the ledger account statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ledger_account_id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The inclusive lower bound of the effective_at timestamp of the ledger entries to
        # be included in the ledger account statement.
        effective_at_lower_bound:,
        # The exclusive upper bound of the effective_at timestamp of the ledger entries to
        # be included in the ledger account statement.
        effective_at_upper_bound:,
        # The id of the ledger account whose ledger entries are queried against, and its
        # balances are computed as a result.
        ledger_account_id:,
        # The description of the ledger account statement.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
