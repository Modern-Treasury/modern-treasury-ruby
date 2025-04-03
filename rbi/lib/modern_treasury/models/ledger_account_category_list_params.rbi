# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountCategoryListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # For example, if you want the balances as of a particular time (ISO8601), the
      #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
      #   The balances as of a time are inclusive of entries with that exact time.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountCategoryListParams::Balances)) }
      attr_reader :balances

      sig do
        params(
          balances: T.any(
            ModernTreasury::Models::LedgerAccountCategoryListParams::Balances,
            ModernTreasury::Internal::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :balances

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Query categories which contain a ledger account directly or through child
      #   categories.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Query categories that are nested underneath a parent category
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
          balances: T.any(
            ModernTreasury::Models::LedgerAccountCategoryListParams::Balances,
            ModernTreasury::Internal::Util::AnyHash
          ),
          currency: String,
          ledger_account_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_ledger_account_category_id: String,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        # For example, if you want the balances as of a particular time (ISO8601), the
        #   encoded query string would be `balances%5Beffective_at%5D=2000-12-31T12:00:00Z`.
        #   The balances as of a time are inclusive of entries with that exact time.
        sig { params(effective_at: Time).returns(T.attached_class) }
        def self.new(effective_at: nil)
        end

        sig { override.returns({effective_at: Time}) }
        def to_hash
        end
      end
    end
  end
end
