# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::PaymentOrders::ReversalCreateParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        # `incorrect_receiving_account`, `date_earlier_than_intended`,
        # `date_later_than_intended`.
        sig do
          returns(
            ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol
          )
        end
        attr_accessor :reason

        # Specifies a ledger transaction object that will be created with the reversal. If
        # the ledger transaction cannot be created, then the reversal creation will fail.
        # The resulting ledger transaction will mirror the status of the reversal.
        sig do
          returns(
            T.nilable(
              ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction
            )
          )
        end
        attr_reader :ledger_transaction

        sig do
          params(
            ledger_transaction:
              ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::OrHash
          ).void
        end
        attr_writer :ledger_transaction

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            reason:
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
            ledger_transaction:
              ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::OrHash,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
          # `incorrect_receiving_account`, `date_earlier_than_intended`,
          # `date_later_than_intended`.
          reason:,
          # Specifies a ledger transaction object that will be created with the reversal. If
          # the ledger transaction cannot be created, then the reversal creation will fail.
          # The resulting ledger transaction will mirror the status of the reversal.
          ledger_transaction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              reason:
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
              ledger_transaction:
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        # `incorrect_receiving_account`, `date_earlier_than_intended`,
        # `date_later_than_intended`.
        module Reason
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DUPLICATE =
            T.let(
              :duplicate,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          INCORRECT_AMOUNT =
            T.let(
              :incorrect_amount,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          INCORRECT_RECEIVING_ACCOUNT =
            T.let(
              :incorrect_receiving_account,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          DATE_EARLIER_THAN_INTENDED =
            T.let(
              :date_earlier_than_intended,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          DATE_LATER_THAN_INTENDED =
            T.let(
              :date_later_than_intended,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class LedgerTransaction < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction,
                ModernTreasury::Internal::AnyHash
              )
            end

          # An array of ledger entry objects.
          sig do
            returns(
              T::Array[
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry
              ]
            )
          end
          attr_accessor :ledger_entries

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The timestamp (ISO8601 format) at which the ledger transaction happened for
          # reporting purposes.
          sig { returns(T.nilable(Time)) }
          attr_reader :effective_at

          sig { params(effective_at: Time).void }
          attr_writer :effective_at

          # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
          # purposes.
          sig { returns(T.nilable(Date)) }
          attr_reader :effective_date

          sig { params(effective_date: Date).void }
          attr_writer :effective_date

          # A unique string to represent the ledger transaction. Only one pending or posted
          # ledger transaction may have this ID in the ledger.
          sig { returns(T.nilable(String)) }
          attr_reader :external_id

          sig { params(external_id: String).void }
          attr_writer :external_id

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the id will be populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          attr_reader :ledgerable_id

          sig { params(ledgerable_id: String).void }
          attr_writer :ledgerable_id

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          # reversal.
          sig do
            returns(
              T.nilable(
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
              )
            )
          end
          attr_reader :ledgerable_type

          sig do
            params(
              ledgerable_type:
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol
            ).void
          end
          attr_writer :ledgerable_type

          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # To post a ledger transaction at creation, use `posted`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Specifies a ledger transaction object that will be created with the reversal. If
          # the ledger transaction cannot be created, then the reversal creation will fail.
          # The resulting ledger transaction will mirror the status of the reversal.
          sig do
            params(
              ledger_entries:
                T::Array[
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry::OrHash
                ],
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: String,
              ledgerable_id: String,
              ledgerable_type:
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status:
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of ledger entry objects.
            ledger_entries:,
            # An optional description for internal use.
            description: nil,
            # The timestamp (ISO8601 format) at which the ledger transaction happened for
            # reporting purposes.
            effective_at: nil,
            # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
            # purposes.
            effective_date: nil,
            # A unique string to represent the ledger transaction. Only one pending or posted
            # ledger transaction may have this ID in the ledger.
            external_id: nil,
            # If the ledger transaction can be reconciled to another object in Modern
            # Treasury, the id will be populated here, otherwise null.
            ledgerable_id: nil,
            # If the ledger transaction can be reconciled to another object in Modern
            # Treasury, the type will be populated here, otherwise null. This can be one of
            # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
            # reversal.
            ledgerable_type: nil,
            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            metadata: nil,
            # To post a ledger transaction at creation, use `posted`.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                ledger_entries:
                  T::Array[
                    ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry
                  ],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type:
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String],
                status:
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerEntry,
                  ModernTreasury::Internal::AnyHash
                )
              end

            # Value in specified currency's smallest unit. e.g. $10 would be represented
            # as 1000. Can be any integer up to 36 digits.
            sig { returns(Integer) }
            attr_accessor :amount

            # One of `credit`, `debit`. Describes the direction money is flowing in the
            # transaction. A `credit` moves money from your account to someone else's. A
            # `debit` pulls money from someone else's account to your own. Note that wire,
            # rtp, and check payments will always be `credit`.
            sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
            attr_accessor :direction

            # The ledger account that this ledger entry is associated with.
            sig { returns(String) }
            attr_accessor :ledger_account_id

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            # account’s available balance. If any of these conditions would be false after the
            # transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            attr_accessor :available_balance_amount

            # Lock version of the ledger account. This can be passed when creating a ledger
            # transaction to only succeed if no ledger transactions have posted since the
            # given version. See our post about Designing the Ledgers API with Optimistic
            # Locking for more details.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :lock_version

            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            # account’s pending balance. If any of these conditions would be false after the
            # transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            attr_accessor :pending_balance_amount

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            # account’s posted balance. If any of these conditions would be false after the
            # transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            attr_accessor :posted_balance_amount

            # If true, response will include the balance of the associated ledger account for
            # the entry.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :show_resulting_ledger_account_balances

            sig do
              params(
                amount: Integer,
                direction: ModernTreasury::TransactionDirection::OrSymbol,
                ledger_account_id: String,
                available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                lock_version: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                show_resulting_ledger_account_balances: T.nilable(T::Boolean)
              ).returns(T.attached_class)
            end
            def self.new(
              # Value in specified currency's smallest unit. e.g. $10 would be represented
              # as 1000. Can be any integer up to 36 digits.
              amount:,
              # One of `credit`, `debit`. Describes the direction money is flowing in the
              # transaction. A `credit` moves money from your account to someone else's. A
              # `debit` pulls money from someone else's account to your own. Note that wire,
              # rtp, and check payments will always be `credit`.
              direction:,
              # The ledger account that this ledger entry is associated with.
              ledger_account_id:,
              # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              # account’s available balance. If any of these conditions would be false after the
              # transaction is created, the entire call will fail with error code 422.
              available_balance_amount: nil,
              # Lock version of the ledger account. This can be passed when creating a ledger
              # transaction to only succeed if no ledger transactions have posted since the
              # given version. See our post about Designing the Ledgers API with Optimistic
              # Locking for more details.
              lock_version: nil,
              # Additional data represented as key-value pairs. Both the key and value must be
              # strings.
              metadata: nil,
              # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              # account’s pending balance. If any of these conditions would be false after the
              # transaction is created, the entire call will fail with error code 422.
              pending_balance_amount: nil,
              # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              # account’s posted balance. If any of these conditions would be false after the
              # transaction is created, the entire call will fail with error code 422.
              posted_balance_amount: nil,
              # If true, response will include the balance of the associated ledger account for
              # the entry.
              show_resulting_ledger_account_balances: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  direction: ModernTreasury::TransactionDirection::OrSymbol,
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
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
          # reversal.
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXPECTED_PAYMENT =
              T.let(
                :expected_payment,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            INCOMING_PAYMENT_DETAIL =
              T.let(
                :incoming_payment_detail,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            PAPER_ITEM =
              T.let(
                :paper_item,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            PAYMENT_ORDER =
              T.let(
                :payment_order,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            RETURN =
              T.let(
                :return,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )
            REVERSAL =
              T.let(
                :reversal,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::LedgerableType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # To post a ledger transaction at creation, use `posted`.
          module Status
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::TaggedSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::PaymentOrders::ReversalCreateParams::LedgerTransaction::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
