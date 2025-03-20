# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # An array of ledger entry objects to be set on the posted ledger transaction.
      #   There must be one entry for each of the existing entries with a lesser amount
      #   than the existing entry.
      sig { returns(T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry]) }
      def posted_ledger_entries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry])
          .returns(T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry])
      end
      def posted_ledger_entries=(_)
      end

      # An optional free-form description for the posted ledger transaction. Maximum of
      #   1000 characters allowed.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The timestamp (IS08601 format) at which the posted ledger transaction happened
      #   for reporting purposes.
      sig { returns(T.nilable(Time)) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
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
          posted_ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry],
          description: String,
          effective_at: Time,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(posted_ledger_entries:, description: nil, effective_at: nil, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              posted_ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry],
              description: String,
              effective_at: Time,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class PostedLedgerEntry < ModernTreasury::BaseModel
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
        sig do
          returns(
            ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
          )
        end
        def direction
        end

        sig do
          params(
            _: ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
          )
            .returns(
              ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
            )
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
            amount: Integer,
            direction: ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol,
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, direction:, ledger_account_id:, metadata: nil)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                direction: ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol,
                ledger_account_id: String,
                metadata: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end

        # One of `credit`, `debit`. Describes the direction money is flowing in the
        #   transaction. A `credit` moves money from your account to someone else's. A
        #   `debit` pulls money from someone else's account to your own. Note that wire,
        #   rtp, and check payments will always be `credit`.
        module Direction
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::TaggedSymbol
              )
            end

          CREDIT =
            T.let(
              :credit,
              ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
            )
          DEBIT =
            T.let(
              :debit,
              ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry::Direction::OrSymbol
            )
        end
      end
    end
  end
end
