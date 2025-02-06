# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryListParams::Balances)) }
      attr_reader :balances

      sig { params(balances: ModernTreasury::Models::LedgerAccountCategoryListParams::Balances).void }
      attr_writer :balances

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :parent_ledger_account_category_id

      sig { params(parent_ledger_account_category_id: String).void }
      attr_writer :parent_ledger_account_category_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          balances: ModernTreasury::Models::LedgerAccountCategoryListParams::Balances,
          currency: String,
          ledger_account_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_ledger_account_category_id: String,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        balances: nil,
        currency: nil,
        ledger_account_id: nil,
        ledger_id: nil,
        metadata: nil,
        name: nil,
        parent_ledger_account_category_id: nil,
        per_page: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            balances: ModernTreasury::Models::LedgerAccountCategoryListParams::Balances,
            currency: String,
            ledger_account_id: String,
            ledger_id: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            parent_ledger_account_category_id: String,
            per_page: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class Balances < ModernTreasury::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { params(effective_at: Time).void }
        def initialize(effective_at: nil); end

        sig { override.returns({effective_at: Time}) }
        def to_hash; end
      end
    end
  end
end
