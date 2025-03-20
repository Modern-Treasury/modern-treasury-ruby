# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalCreateParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #   `incorrect_receiving_account`, `date_earlier_than_intended`,
        #   `date_later_than_intended`.
        sig { returns(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol) }
        def reason
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol)
            .returns(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol)
        end
        def reason=(_)
        end

        # Specifies a ledger transaction object that will be created with the reversal. If
        #   the ledger transaction cannot be created, then the reversal creation will fail.
        #   The resulting ledger transaction will mirror the status of the reversal.
        sig { returns(T.nilable(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction)) }
        def ledger_transaction
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def ledger_transaction=(_)
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
            reason: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
            ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
            metadata: T::Hash[Symbol, String],
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(reason:, ledger_transaction: nil, metadata: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                reason: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
                ledger_transaction: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction,
                metadata: T::Hash[Symbol, String],
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        #   `incorrect_receiving_account`, `date_earlier_than_intended`,
        #   `date_later_than_intended`.
        module Reason
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol) }

          DUPLICATE =
            T.let(:duplicate, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol)
          INCORRECT_AMOUNT =
            T.let(:incorrect_amount, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol)
          INCORRECT_RECEIVING_ACCOUNT =
            T.let(
              :incorrect_receiving_account,
              ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol
            )
          DATE_EARLIER_THAN_INTENDED =
            T.let(
              :date_earlier_than_intended,
              ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol
            )
          DATE_LATER_THAN_INTENDED =
            T.let(
              :date_later_than_intended,
              ModernTreasury::Models::PaymentOrders::ReversalCreateParams::Reason::OrSymbol
            )
        end

        class LedgerTransaction < ModernTreasury::BaseModel
          # An array of ledger entry objects.
          sig do
            returns(
              T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry]
            )
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry]
            )
              .returns(
                T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry]
              )
          end
          def ledger_entries=(_)
          end

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # The timestamp (ISO8601 format) at which the ledger transaction happened for
          #   reporting purposes.
          sig { returns(T.nilable(Time)) }
          def effective_at
          end

          sig { params(_: Time).returns(Time) }
          def effective_at=(_)
          end

          # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          #   purposes.
          sig { returns(T.nilable(Date)) }
          def effective_date
          end

          sig { params(_: Date).returns(Date) }
          def effective_date=(_)
          end

          # A unique string to represent the ledger transaction. Only one pending or posted
          #   ledger transaction may have this ID in the ledger.
          sig { returns(T.nilable(String)) }
          def external_id
          end

          sig { params(_: String).returns(String) }
          def external_id=(_)
          end

          # If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the id will be populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          def ledgerable_id
          end

          sig { params(_: String).returns(String) }
          def ledgerable_id=(_)
          end

          # If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   reversal.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            )
          end
          def ledgerable_type
          end

          sig do
            params(
              _: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
          end
          def ledgerable_type=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # To post a ledger transaction at creation, use `posted`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              )
            )
          end
          def status
          end

          sig do
            params(
              _: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
            )
              .returns(ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol)
          end
          def status=(_)
          end

          # Specifies a ledger transaction object that will be created with the reversal. If
          #   the ledger transaction cannot be created, then the reversal creation will fail.
          #   The resulting ledger transaction will mirror the status of the reversal.
          sig do
            params(
              ledger_entries: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry],
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: String,
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            ledger_entries:,
            description: nil,
            effective_at: nil,
            effective_date: nil,
            external_id: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil,
            status: nil
          )
          end

          sig do
            override
              .returns(
                {
                  ledger_entries: T::Array[ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry],
                  description: T.nilable(String),
                  effective_at: Time,
                  effective_date: Date,
                  external_id: String,
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
                  metadata: T::Hash[Symbol, String],
                  status: ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
                }
              )
          end
          def to_hash
          end

          class LedgerEntry < ModernTreasury::BaseModel
            # Value in specified currency's smallest unit. e.g. $10 would be represented
            #   as 1000. Can be any integer up to 36 digits.
            sig { returns(Integer) }
            def amount
            end

            sig { params(_: Integer).returns(Integer) }
            def amount=(_)
            end

            # One of `credit`, `debit`. Describes the direction money is flowing in the
            #   transaction. A `credit` moves money from your account to someone else's. A
            #   `debit` pulls money from someone else's account to your own. Note that wire,
            #   rtp, and check payments will always be `credit`.
            sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
            def direction
            end

            sig do
              params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
            end
            def direction=(_)
            end

            # The ledger account that this ledger entry is associated with.
            sig { returns(String) }
            def ledger_account_id
            end

            sig { params(_: String).returns(String) }
            def ledger_account_id=(_)
            end

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   account’s available balance. If any of these conditions would be false after the
            #   transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def available_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def available_balance_amount=(_)
            end

            # Lock version of the ledger account. This can be passed when creating a ledger
            #   transaction to only succeed if no ledger transactions have posted since the
            #   given version. See our post about Designing the Ledgers API with Optimistic
            #   Locking for more details.
            sig { returns(T.nilable(Integer)) }
            def lock_version
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def lock_version=(_)
            end

            # Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   account’s pending balance. If any of these conditions would be false after the
            #   transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def pending_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def pending_balance_amount=(_)
            end

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   account’s posted balance. If any of these conditions would be false after the
            #   transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def posted_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def posted_balance_amount=(_)
            end

            # If true, response will include the balance of the associated ledger account for
            #   the entry.
            sig { returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def show_resulting_ledger_account_balances=(_)
            end

            sig do
              params(
                amount: Integer,
                direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
                ledger_account_id: String,
                available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                lock_version: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                show_resulting_ledger_account_balances: T.nilable(T::Boolean)
              )
                .returns(T.attached_class)
            end
            def self.new(
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
                    direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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

          # If the ledger transaction can be reconciled to another object in Modern
          #   Treasury, the type will be populated here, otherwise null. This can be one of
          #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          #   reversal.
          module LedgerableType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              end

            EXPECTED_PAYMENT =
              T.let(
                :expected_payment,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            INCOMING_PAYMENT_DETAIL =
              T.let(
                :incoming_payment_detail,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            PAPER_ITEM =
              T.let(
                :paper_item,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            PAYMENT_ORDER =
              T.let(
                :payment_order,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            RETURN =
              T.let(
                :return,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            REVERSAL =
              T.let(
                :reversal,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
          end

          # To post a ledger transaction at creation, use `posted`.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::TaggedSymbol
                )
              end

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::Models::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              )
          end
        end
      end
    end
  end
end
