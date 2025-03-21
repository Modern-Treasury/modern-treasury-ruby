# typed: strong

module ModernTreasury
  module Models
    module LedgerTransactions
      class VersionListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   created_at timestamp. For example, for all dates after Jan 1 2000 12:00 UTC, use
        #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
        sig { returns(T.nilable(T::Hash[Symbol, Time])) }
        attr_reader :created_at

        sig { params(created_at: T::Hash[Symbol, Time]).void }
        attr_writer :created_at

        # Get all ledger transaction versions that are included in the ledger account
        #   statement.
        sig { returns(T.nilable(String)) }
        attr_reader :ledger_account_statement_id

        sig { params(ledger_account_statement_id: String).void }
        attr_writer :ledger_account_statement_id

        # Get all the ledger transaction versions corresponding to the ID of a ledger
        #   transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :ledger_transaction_id

        sig { params(ledger_transaction_id: String).void }
        attr_writer :ledger_transaction_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        #   version. For example, for all versions after 2, use version%5Bgt%5D=2.
        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :version

        sig { params(version: T::Hash[Symbol, Integer]).void }
        attr_writer :version

        sig do
          params(
            after_cursor: T.nilable(String),
            created_at: T::Hash[Symbol, Time],
            ledger_account_statement_id: String,
            ledger_transaction_id: String,
            per_page: Integer,
            version: T::Hash[Symbol, Integer],
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          after_cursor: nil,
          created_at: nil,
          ledger_account_statement_id: nil,
          ledger_transaction_id: nil,
          per_page: nil,
          version: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                after_cursor: T.nilable(String),
                created_at: T::Hash[Symbol, Time],
                ledger_account_statement_id: String,
                ledger_transaction_id: String,
                per_page: Integer,
                version: T::Hash[Symbol, Integer],
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
