# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The currency of the ledger account.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the ledger that this account belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # The name of the ledger account.
      sig { returns(String) }
      attr_accessor :name

      # The normal balance of the ledger account.
      sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
      attr_accessor :normal_balance

      # The currency exponent of the ledger account.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The array of ledger account category ids that this ledger account should be a
      #   child of.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ledger_account_category_ids

      sig { params(ledger_account_category_ids: T::Array[String]).void }
      attr_writer :ledger_account_category_ids

      # If the ledger account links to another object in Modern Treasury, the id will be
      #   populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      # If the ledger account links to another object in Modern Treasury, the type will
      #   be populated here, otherwise null. The value is one of internal_account or
      #   external_account.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol)) }
      attr_reader :ledgerable_type

      sig { params(ledgerable_type: ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::OrSymbol).void }
      attr_writer :ledgerable_type

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

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
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol) }

        COUNTERPARTY =
          T.let(:counterparty, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        EXTERNAL_ACCOUNT =
          T.let(:external_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        INTERNAL_ACCOUNT =
          T.let(:internal_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)
        VIRTUAL_ACCOUNT =
          T.let(:virtual_account, ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Models::LedgerAccountCreateParams::LedgerableType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
