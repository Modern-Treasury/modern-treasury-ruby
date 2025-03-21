# typed: strong

module ModernTreasury
  module Models
    class LedgerTransaction < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The timestamp (ISO8601 format) at which the ledger transaction happened for
      #   reporting purposes.
      sig { returns(Time) }
      attr_accessor :effective_at

      # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      #   purposes.
      sig { returns(Date) }
      attr_accessor :effective_date

      # A unique string to represent the ledger transaction. Only one pending or posted
      #   ledger transaction may have this ID in the ledger.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # An array of ledger entry objects.
      sig { returns(T::Array[ModernTreasury::Models::LedgerEntry]) }
      attr_accessor :ledger_entries

      # The ID of the ledger this ledger transaction belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the id will be populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledgerable_id

      # If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)) }
      attr_accessor :ledgerable_type

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # The ID of the ledger transaction that this ledger transaction partially posts.
      sig { returns(T.nilable(String)) }
      attr_accessor :partially_posts_ledger_transaction_id

      # The time on which the ledger transaction posted. This is null if the ledger
      #   transaction is pending.
      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_at

      # The ID of the ledger transaction that reversed this ledger transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :reversed_by_ledger_transaction_id

      # The ID of the original ledger transaction that this ledger transaction reverses.
      sig { returns(T.nilable(String)) }
      attr_accessor :reverses_ledger_transaction_id

      # To post a ledger transaction at creation, use `posted`.
      sig { returns(ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          effective_at: Time,
          effective_date: Date,
          external_id: T.nilable(String),
          ledger_entries: T::Array[T.any(ModernTreasury::Models::LedgerEntry, ModernTreasury::Util::AnyHash)],
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type: T.nilable(ModernTreasury::Models::LedgerTransaction::LedgerableType::OrSymbol),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          partially_posts_ledger_transaction_id: T.nilable(String),
          posted_at: T.nilable(Time),
          reversed_by_ledger_transaction_id: T.nilable(String),
          reverses_ledger_transaction_id: T.nilable(String),
          status: ModernTreasury::Models::LedgerTransaction::Status::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        description:,
        effective_at:,
        effective_date:,
        external_id:,
        ledger_entries:,
        ledger_id:,
        ledgerable_id:,
        ledgerable_type:,
        live_mode:,
        metadata:,
        object:,
        partially_posts_ledger_transaction_id:,
        posted_at:,
        reversed_by_ledger_transaction_id:,
        reverses_ledger_transaction_id:,
        status:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: T.nilable(String),
              ledger_entries: T::Array[ModernTreasury::Models::LedgerEntry],
              ledger_id: String,
              ledgerable_id: T.nilable(String),
              ledgerable_type: T.nilable(ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              partially_posts_ledger_transaction_id: T.nilable(String),
              posted_at: T.nilable(Time),
              reversed_by_ledger_transaction_id: T.nilable(String),
              reverses_ledger_transaction_id: T.nilable(String),
              status: ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # If the ledger transaction can be reconciled to another object in Modern
      #   Treasury, the type will be populated here, otherwise null. This can be one of
      #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      #   reversal.
      module LedgerableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol) }

        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)
        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)
        REVERSAL = T.let(:reversal, ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LedgerTransaction::LedgerableType::TaggedSymbol]) }
          def values
          end
        end
      end

      # To post a ledger transaction at creation, use `posted`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransaction::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol) }

        ARCHIVED = T.let(:archived, ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol)
        POSTED = T.let(:posted, ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::LedgerTransaction::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
