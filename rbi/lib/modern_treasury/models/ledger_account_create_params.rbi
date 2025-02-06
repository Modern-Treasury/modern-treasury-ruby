# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :ledger_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :normal_balance

      sig { returns(T.nilable(Integer)) }
      attr_accessor :currency_exponent

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ledger_account_category_ids

      sig { params(ledger_account_category_ids: T::Array[String]).void }
      attr_writer :ledger_account_category_ids

      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :ledgerable_type

      sig { params(ledgerable_type: Symbol).void }
      attr_writer :ledgerable_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          currency: String,
          ledger_id: String,
          name: String,
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
      ); end

      sig do
        override.returns(
          {
            currency: String,
            ledger_id: String,
            name: String,
            normal_balance: Symbol,
            currency_exponent: T.nilable(Integer),
            description: T.nilable(String),
            ledger_account_category_ids: T::Array[String],
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        COUNTERPARTY = :counterparty
        EXTERNAL_ACCOUNT = :external_account
        INTERNAL_ACCOUNT = :internal_account
        VIRTUAL_ACCOUNT = :virtual_account

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
