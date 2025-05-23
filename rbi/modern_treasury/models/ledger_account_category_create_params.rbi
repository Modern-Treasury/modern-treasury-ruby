# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerAccountCategoryCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The currency of the ledger account category.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the ledger that this account category belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # The name of the ledger account category.
      sig { returns(String) }
      attr_accessor :name

      # The normal balance of the ledger account category.
      sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
      attr_accessor :normal_balance

      # The currency exponent of the ledger account category.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      # The description of the ledger account category.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The array of ledger account category ids that this ledger account category
      # should be a child of.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ledger_account_category_ids

      sig { params(ledger_account_category_ids: T::Array[String]).void }
      attr_writer :ledger_account_category_ids

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
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The currency of the ledger account category.
        currency:,
        # The id of the ledger that this account category belongs to.
        ledger_id:,
        # The name of the ledger account category.
        name:,
        # The normal balance of the ledger account category.
        normal_balance:,
        # The currency exponent of the ledger account category.
        currency_exponent: nil,
        # The description of the ledger account category.
        description: nil,
        # The array of ledger account category ids that this ledger account category
        # should be a child of.
        ledger_account_category_ids: nil,
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
