# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
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

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   created at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def created_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_id
      end

      sig { params(_: String).returns(String) }
      def ledger_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(String)) }
      def settled_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def settled_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def settlement_entry_direction
      end

      sig { params(_: String).returns(String) }
      def settlement_entry_direction=(_)
      end

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   updated at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      def updated_at
      end

      sig { params(_: T::Hash[Symbol, Time]).returns(T::Hash[Symbol, Time]) }
      def updated_at=(_)
      end

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          ledger_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          settled_ledger_account_id: String,
          settlement_entry_direction: String,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id: nil,
        after_cursor: nil,
        created_at: nil,
        ledger_id: nil,
        ledger_transaction_id: nil,
        metadata: nil,
        per_page: nil,
        settled_ledger_account_id: nil,
        settlement_entry_direction: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              id: T::Array[String],
              after_cursor: T.nilable(String),
              created_at: T::Hash[Symbol, Time],
              ledger_id: String,
              ledger_transaction_id: String,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              settled_ledger_account_id: String,
              settlement_entry_direction: String,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
