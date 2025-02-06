# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreatePartialPostParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig do
        returns(T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry])
      end
      attr_accessor :posted_ledger_entries

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          posted_ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry],
          description: String,
          effective_at: Time,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        posted_ledger_entries:,
        description: nil,
        effective_at: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            posted_ledger_entries: T::Array[ModernTreasury::Models::LedgerTransactionCreatePartialPostParams::PostedLedgerEntry],
            description: String,
            effective_at: Time,
            metadata: T::Hash[Symbol,
                              String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PostedLedgerEntry < ModernTreasury::BaseModel
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Symbol) }
        attr_accessor :direction

        sig { returns(String) }
        attr_accessor :ledger_account_id

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            amount: Integer,
            direction: Symbol,
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String]
          ).void
        end
        def initialize(amount:, direction:, ledger_account_id:, metadata: nil)
        end

        sig do
          override.returns(
            {
              amount: Integer,
              direction: Symbol,
              ledger_account_id: String,
              metadata: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        class Direction < ModernTreasury::Enum
          abstract!

          CREDIT = :credit
          DEBIT = :debit

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
