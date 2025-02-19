# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      def id
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryListParams::Balances)) }
      def balances
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountCategoryListParams::Balances)
          .returns(ModernTreasury::Models::LedgerAccountCategoryListParams::Balances)
      end
      def balances=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def parent_ledger_account_category_id
      end

      sig { params(_: String).returns(String) }
      def parent_ledger_account_category_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

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
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end

      class Balances < ModernTreasury::BaseModel
        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { params(effective_at: Time).void }
        def initialize(effective_at: nil)
        end

        sig { override.returns({effective_at: Time}) }
        def to_hash
        end
      end
    end
  end
end
