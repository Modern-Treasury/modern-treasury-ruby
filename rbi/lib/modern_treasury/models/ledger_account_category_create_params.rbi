# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The currency of the ledger account category.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The id of the ledger that this account category belongs to.
      sig { returns(String) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      # The name of the ledger account category.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The normal balance of the ledger account category.
      sig { returns(Symbol) }
      def normal_balance
      end

      sig { params(_: Symbol).returns(Symbol) }
      def normal_balance=(_)
      end

      # The currency exponent of the ledger account category.
      sig { returns(T.nilable(Integer)) }
      def currency_exponent
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def currency_exponent=(_)
      end

      # The description of the ledger account category.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The array of ledger account category ids that this ledger account category
      #   should be a child of.
      sig { returns(T.nilable(T::Array[String])) }
      def ledger_account_category_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def ledger_account_category_ids=(_)
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
          normal_balance: Symbol,
          currency_exponent: T.nilable(Integer),
          description: T.nilable(String),
          ledger_account_category_ids: T::Array[String],
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
              normal_balance: Symbol,
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
