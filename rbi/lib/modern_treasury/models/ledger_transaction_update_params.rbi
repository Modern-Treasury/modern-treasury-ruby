# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])) }
      def ledger_entries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])
          .returns(T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry])
      end
      def ledger_entries=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: String).returns(String) }
      def ledgerable_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ledgerable_type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry],
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        description: nil,
        effective_at: nil,
        ledger_entries: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionUpdateParams::LedgerEntry],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              status: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LedgerEntry < ModernTreasury::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Symbol) }
        def direction
        end

        sig { params(_: Symbol).returns(Symbol) }
        def direction=(_)
        end

        sig { returns(String) }
        def ledger_account_id
        end

        sig { params(_: String).returns(String) }
        def ledger_account_id=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        def available_balance_amount
        end

        sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
        def available_balance_amount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def lock_version
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lock_version=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        def pending_balance_amount
        end

        sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
        def pending_balance_amount=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        def posted_balance_amount
        end

        sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
        def posted_balance_amount=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def show_resulting_ledger_account_balances
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def show_resulting_ledger_account_balances=(_)
        end

        sig do
          params(
            amount: Integer,
            direction: Symbol,
            ledger_account_id: String,
            available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
            lock_version: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
            posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
            show_resulting_ledger_account_balances: T.nilable(T::Boolean)
          )
            .void
        end
        def initialize(
          amount:,
          direction:,
          ledger_account_id:,
          available_balance_amount: nil,
          lock_version: nil,
          metadata: nil,
          pending_balance_amount: nil,
          posted_balance_amount: nil,
          show_resulting_ledger_account_balances: nil
        )
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                direction: Symbol,
                ledger_account_id: String,
                available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                lock_version: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                show_resulting_ledger_account_balances: T.nilable(T::Boolean)
              }
            )
        end
        def to_hash
        end
      end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
