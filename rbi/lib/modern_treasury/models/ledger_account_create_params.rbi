# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The currency of the ledger account.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The id of the ledger that this account belongs to.
      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # The name of the ledger account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
      def normal_balance
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
      end
      def normal_balance=(_)
      end

      # The currency exponent of the ledger account.
      sig { returns(T.nilable(Integer)) }
      def currency_exponent
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def currency_exponent=(_)
      end

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The array of ledger account category ids that this ledger account should be a
      #   child of.
      sig { returns(T.nilable(T::Array[String])) }
      def ledger_account_category_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def ledger_account_category_ids=(_)
      end

      # If the ledger account links to another object in Modern Treasury, the id will be
      #   populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: String).returns(String) }
      def ledgerable_id=(_)
      end

      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol)) }
      def ledgerable_type
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol)
          .returns(ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol)
      end
      def ledgerable_type=(_)
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
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        currency:,
        ledger_id:,
        name:,
        normal_balance:,
        currency_exponent: nil,
        description: nil,
        ledger_account_category_ids: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      module LedgerableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol) }

        COUNTERPARTY =
          T.let(:counterparty, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        EXTERNAL_ACCOUNT =
          T.let(:external_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        INTERNAL_ACCOUNT =
          T.let(:internal_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        VIRTUAL_ACCOUNT =
          T.let(:virtual_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)

        class << self
          sig do
            override.returns(T::Array[ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
