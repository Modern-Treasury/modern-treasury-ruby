# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerTransactionCreatePartialPostParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # An array of ledger entry objects to be set on the posted ledger transaction.
      # There must be one entry for each of the existing entries with a lesser amount
      # than the existing entry.
      sig do
        returns(
          T::Array[
            ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry
          ]
        )
      end
      attr_accessor :posted_ledger_entries

      # An optional free-form description for the posted ledger transaction. Maximum of
      # 1000 characters allowed.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The timestamp (IS08601 format) at which the posted ledger transaction happened
      # for reporting purposes.
      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          id: String,
          posted_ledger_entries:
            T::Array[
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::OrHash
            ],
          description: String,
          effective_at: Time,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # An array of ledger entry objects to be set on the posted ledger transaction.
        # There must be one entry for each of the existing entries with a lesser amount
        # than the existing entry.
        posted_ledger_entries:,
        # An optional free-form description for the posted ledger transaction. Maximum of
        # 1000 characters allowed.
        description: nil,
        # The timestamp (IS08601 format) at which the posted ledger transaction happened
        # for reporting purposes.
        effective_at: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            posted_ledger_entries:
              T::Array[
                ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry
              ],
            description: String,
            effective_at: Time,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PostedLedgerEntry < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry,
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
        sig do
          returns(
            ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
          )
        end
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
            direction:
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol,
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
              direction:
                ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol,
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

        # One of `credit`, `debit`. Describes the direction money is flowing in the
        # transaction. A `credit` moves money from your account to someone else's. A
        # `debit` pulls money from someone else's account to your own. Note that wire,
        # rtp, and check payments will always be `credit`.
        module Direction
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT =
            T.let(
              :credit,
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::TaggedSymbol
            )
          DEBIT =
            T.let(
              :debit,
              ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::TaggedSymbol
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
