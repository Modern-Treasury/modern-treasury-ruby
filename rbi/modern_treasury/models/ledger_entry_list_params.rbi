# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerEntryListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Shows all ledger entries that were present on a ledger account at a particular
      # `lock_version`. You must also specify `ledger_account_id`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :as_of_lock_version

      sig { params(as_of_lock_version: Integer).void }
      attr_writer :as_of_lock_version

      # If true, response will include ledger entries that were deleted. When you update
      # a ledger transaction to specify a new set of entries, the previous entries are
      # deleted.
      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: ModernTreasury::TransactionDirection::OrSymbol).void
      end
      attr_writer :direction

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # transaction's effective time. Format ISO8601
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :effective_at

      sig { params(effective_at: T::Hash[Symbol, Time]).void }
      attr_writer :effective_at

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # transaction's effective date. Format YYYY-MM-DD
      sig { returns(T.nilable(T::Hash[Symbol, Date])) }
      attr_reader :effective_date

      sig { params(effective_date: T::Hash[Symbol, Date]).void }
      attr_writer :effective_date

      # Get all ledger entries that match the direction specified. One of `credit`,
      # `debit`.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # lock_version of a ledger account. For example, for all entries created at or
      # before before lock_version 1000 of a ledger account, use
      # `ledger_account_lock_version%5Blte%5D=1000`.
      sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
      attr_reader :ledger_account_lock_version

      sig { params(ledger_account_lock_version: T::Hash[Symbol, Integer]).void }
      attr_writer :ledger_account_lock_version

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_payout_id

      sig { params(ledger_account_payout_id: String).void }
      attr_writer :ledger_account_payout_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_settlement_id

      sig { params(ledger_account_settlement_id: String).void }
      attr_writer :ledger_account_settlement_id

      # Get all ledger entries that are included in the ledger account statement.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_statement_id

      sig { params(ledger_account_statement_id: String).void }
      attr_writer :ledger_account_statement_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
      # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
      # by only one field at a time is supported.
      sig { returns(T.nilable(ModernTreasury::LedgerEntryListParams::OrderBy)) }
      attr_reader :order_by

      sig do
        params(
          order_by: ModernTreasury::LedgerEntryListParams::OrderBy::OrHash
        ).void
      end
      attr_writer :order_by

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # If true, response will include the balances attached to the ledger entry. If
      # there is no balance available, null will be returned instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      # If true, response will include ledger entries that were deleted. When you update
      # a ledger transaction to specify a new set of entries, the previous entries are
      # deleted.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_deleted

      sig { params(show_deleted: T::Boolean).void }
      attr_writer :show_deleted

      # Get all ledger entries that match the status specified. One of `pending`,
      # `posted`, or `archived`. For multiple statuses, use
      # `status[]=pending&status[]=posted`.
      sig do
        returns(
          T.nilable(
            T.any(
              ModernTreasury::LedgerEntryListParams::Status::OrSymbol,
              T::Array[
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1::OrSymbol
              ]
            )
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            T.any(
              ModernTreasury::LedgerEntryListParams::Status::OrSymbol,
              T::Array[
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1::OrSymbol
              ]
            )
        ).void
      end
      attr_writer :status

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          as_of_lock_version: Integer,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          effective_at: T::Hash[Symbol, Time],
          effective_date: T::Hash[Symbol, Date],
          ledger_account_category_id: String,
          ledger_account_id: String,
          ledger_account_lock_version: T::Hash[Symbol, Integer],
          ledger_account_payout_id: String,
          ledger_account_settlement_id: String,
          ledger_account_statement_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          order_by: ModernTreasury::LedgerEntryListParams::OrderBy::OrHash,
          per_page: Integer,
          show_balances: T::Boolean,
          show_deleted: T::Boolean,
          status:
            T.any(
              ModernTreasury::LedgerEntryListParams::Status::OrSymbol,
              T::Array[
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1::OrSymbol
              ]
            ),
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If you have specific IDs to retrieve in bulk, you can pass them as query
        # parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
        id: nil,
        after_cursor: nil,
        # Shows all ledger entries that were present on a ledger account at a particular
        # `lock_version`. You must also specify `ledger_account_id`.
        as_of_lock_version: nil,
        # If true, response will include ledger entries that were deleted. When you update
        # a ledger transaction to specify a new set of entries, the previous entries are
        # deleted.
        direction: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # transaction's effective time. Format ISO8601
        effective_at: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # transaction's effective date. Format YYYY-MM-DD
        effective_date: nil,
        # Get all ledger entries that match the direction specified. One of `credit`,
        # `debit`.
        ledger_account_category_id: nil,
        ledger_account_id: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # lock_version of a ledger account. For example, for all entries created at or
        # before before lock_version 1000 of a ledger account, use
        # `ledger_account_lock_version%5Blte%5D=1000`.
        ledger_account_lock_version: nil,
        ledger_account_payout_id: nil,
        ledger_account_settlement_id: nil,
        # Get all ledger entries that are included in the ledger account statement.
        ledger_account_statement_id: nil,
        ledger_transaction_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        # by only one field at a time is supported.
        order_by: nil,
        per_page: nil,
        # If true, response will include the balances attached to the ledger entry. If
        # there is no balance available, null will be returned instead.
        show_balances: nil,
        # If true, response will include ledger entries that were deleted. When you update
        # a ledger transaction to specify a new set of entries, the previous entries are
        # deleted.
        show_deleted: nil,
        # Get all ledger entries that match the status specified. One of `pending`,
        # `posted`, or `archived`. For multiple statuses, use
        # `status[]=pending&status[]=posted`.
        status: nil,
        # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
        # posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
        # updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            as_of_lock_version: Integer,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            effective_at: T::Hash[Symbol, Time],
            effective_date: T::Hash[Symbol, Date],
            ledger_account_category_id: String,
            ledger_account_id: String,
            ledger_account_lock_version: T::Hash[Symbol, Integer],
            ledger_account_payout_id: String,
            ledger_account_settlement_id: String,
            ledger_account_statement_id: String,
            ledger_transaction_id: String,
            metadata: T::Hash[Symbol, String],
            order_by: ModernTreasury::LedgerEntryListParams::OrderBy,
            per_page: Integer,
            show_balances: T::Boolean,
            show_deleted: T::Boolean,
            status:
              T.any(
                ModernTreasury::LedgerEntryListParams::Status::OrSymbol,
                T::Array[
                  ModernTreasury::LedgerEntryListParams::Status::UnionMember1::OrSymbol
                ]
              ),
            updated_at: T::Hash[Symbol, Time],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class OrderBy < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerEntryListParams::OrderBy,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::OrSymbol
            )
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::OrSymbol
          ).void
        end
        attr_writer :created_at

        sig do
          returns(
            T.nilable(
              ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::OrSymbol
            )
          )
        end
        attr_reader :effective_at

        sig do
          params(
            effective_at:
              ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::OrSymbol
          ).void
        end
        attr_writer :effective_at

        # Order by `created_at` or `effective_at` in `asc` or `desc` order. For example,
        # to order by `effective_at asc`, use `order_by%5Beffective_at%5D=asc`. Ordering
        # by only one field at a time is supported.
        sig do
          params(
            created_at:
              ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::OrSymbol,
            effective_at:
              ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(created_at: nil, effective_at: nil)
        end

        sig do
          override.returns(
            {
              created_at:
                ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::OrSymbol,
              effective_at:
                ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::OrSymbol
            }
          )
        end
        def to_hash
        end

        module CreatedAt
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LedgerEntryListParams::OrderBy::CreatedAt::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module EffectiveAt
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LedgerEntryListParams::OrderBy::EffectiveAt::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Get all ledger entries that match the status specified. One of `pending`,
      # `posted`, or `archived`. For multiple statuses, use
      # `status[]=pending&status[]=posted`.
      module Status
        extend ModernTreasury::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerEntryListParams::Status::TaggedSymbol,
              T::Array[
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1::TaggedSymbol
              ]
            )
          end

        module UnionMember1
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              ModernTreasury::LedgerEntryListParams::Status::UnionMember1::TaggedSymbol
            )
          POSTED =
            T.let(
              :posted,
              ModernTreasury::LedgerEntryListParams::Status::UnionMember1::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              ModernTreasury::LedgerEntryListParams::Status::UnionMember1::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LedgerEntryListParams::Status::UnionMember1::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        sig do
          override.returns(
            T::Array[ModernTreasury::LedgerEntryListParams::Status::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LedgerEntryListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerEntryListParams::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerEntryListParams::Status::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerEntryListParams::Status::TaggedSymbol
          )

        UnionMember1Array =
          T.let(
            ModernTreasury::Internal::Type::ArrayOf[
              enum: ModernTreasury::LedgerEntryListParams::Status::UnionMember1
            ],
            ModernTreasury::Internal::Type::Converter
          )
      end
    end
  end
end
