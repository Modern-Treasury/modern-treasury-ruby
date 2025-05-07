# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

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
      sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
      attr_accessor :normal_balance

      # The currency exponent of the ledger account.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      # The description of the ledger account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The array of ledger account category ids that this ledger account should be a
      # child of.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ledger_account_category_ids

      sig { params(ledger_account_category_ids: T::Array[String]).void }
      attr_writer :ledger_account_category_ids

      # If the ledger account links to another object in Modern Treasury, the id will be
      # populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      # If the ledger account links to another object in Modern Treasury, the type will
      # be populated here, otherwise null. The value is one of internal_account or
      # external_account.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::OrSymbol
          )
        )
      end
      attr_reader :ledgerable_type

      sig do
        params(
          ledgerable_type:
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::OrSymbol
        ).void
      end
      attr_writer :ledgerable_type

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The currency of the ledger account.
        currency:,
        # The id of the ledger that this account belongs to.
        ledger_id:,
        # The name of the ledger account.
        name:,
        # The normal balance of the ledger account.
        normal_balance:,
        # The currency exponent of the ledger account.
        currency_exponent: nil,
        # The description of the ledger account.
        description: nil,
        # The array of ledger account category ids that this ledger account should be a
        # child of.
        ledger_account_category_ids: nil,
        # If the ledger account links to another object in Modern Treasury, the id will be
        # populated here, otherwise null.
        ledgerable_id: nil,
        # If the ledger account links to another object in Modern Treasury, the type will
        # be populated here, otherwise null. The value is one of internal_account or
        # external_account.
        ledgerable_type: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            ledger_id: String,
            name: String,
            normal_balance: ModernTreasury::TransactionDirection::OrSymbol,
            currency_exponent: T.nilable(Integer),
            description: T.nilable(String),
            ledger_account_category_ids: T::Array[String],
            ledgerable_id: String,
            ledgerable_type:
              ModernTreasury::LedgerAccountCreateParams::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # If the ledger account links to another object in Modern Treasury, the type will
      # be populated here, otherwise null. The value is one of internal_account or
      # external_account.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LedgerAccountCreateParams::LedgerableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTERPARTY =
          T.let(
            :counterparty,
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::TaggedSymbol
          )
        EXTERNAL_ACCOUNT =
          T.let(
            :external_account,
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::TaggedSymbol
          )
        INTERNAL_ACCOUNT =
          T.let(
            :internal_account,
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::TaggedSymbol
          )
        VIRTUAL_ACCOUNT =
          T.let(
            :virtual_account,
            ModernTreasury::LedgerAccountCreateParams::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerAccountCreateParams::LedgerableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
