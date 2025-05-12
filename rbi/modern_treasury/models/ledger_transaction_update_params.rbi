# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerTransactionUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The timestamp (ISO8601 format) at which the ledger transaction happened for
      # reporting purposes.
      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      # An array of ledger entry objects.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry]
          )
        )
      end
      attr_reader :ledger_entries

      sig do
        params(
          ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry::OrHash
            ]
        ).void
      end
      attr_writer :ledger_entries

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
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::OrSymbol
          )
        )
      end
      attr_reader :ledgerable_type

      sig do
        params(
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::OrSymbol
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
            ModernTreasury::LedgerTransactionUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::LedgerTransactionUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry::OrHash
            ],
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerTransactionUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An optional description for internal use.
        description: nil,
        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        effective_at: nil,
        # An array of ledger entry objects.
        ledger_entries: nil,
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
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            effective_at: Time,
            ledger_entries:
              T::Array[
                ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry
              ],
            ledgerable_id: String,
            ledgerable_type:
              ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            status:
              ModernTreasury::LedgerTransactionUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LedgerEntry < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerTransactionUpdateParams::LedgerEntry,
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
              ModernTreasury::LedgerTransactionUpdateParams::LedgerableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdateParams::LedgerableType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::LedgerTransactionUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerTransactionUpdateParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerTransactionUpdateParams::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerTransactionUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
