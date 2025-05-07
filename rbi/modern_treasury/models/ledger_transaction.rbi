# typed: strong

module ModernTreasury
  module Models
    class LedgerTransaction < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The timestamp (ISO8601 format) at which the ledger transaction happened for
      # reporting purposes.
      sig { returns(Time) }
      attr_accessor :effective_at

      # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
      # purposes.
      sig { returns(Date) }
      attr_accessor :effective_date

      # A unique string to represent the ledger transaction. Only one pending or posted
      # ledger transaction may have this ID in the ledger.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # An array of ledger entry objects.
      sig { returns(T::Array[ModernTreasury::LedgerEntry]) }
      attr_accessor :ledger_entries

      # The ID of the ledger this ledger transaction belongs to.
      sig { returns(String) }
      attr_accessor :ledger_id

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the id will be populated here, otherwise null.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledgerable_id

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the type will be populated here, otherwise null. This can be one of
      # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      # reversal.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        )
      end
      attr_accessor :ledgerable_type

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      # The ID of the ledger transaction that this ledger transaction partially posts.
      sig { returns(T.nilable(String)) }
      attr_accessor :partially_posts_ledger_transaction_id

      # The time on which the ledger transaction posted. This is null if the ledger
      # transaction is pending.
      sig { returns(T.nilable(Time)) }
      attr_accessor :posted_at

      # The ID of the ledger transaction that reversed this ledger transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :reversed_by_ledger_transaction_id

      # The ID of the original ledger transaction that this ledger transaction reverses.
      sig { returns(T.nilable(String)) }
      attr_accessor :reverses_ledger_transaction_id

      # To post a ledger transaction at creation, use `posted`.
      sig { returns(ModernTreasury::LedgerTransaction::Status::TaggedSymbol) }
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
          ledger_entries: T::Array[ModernTreasury::LedgerEntry::OrHash],
          ledger_id: String,
          ledgerable_id: T.nilable(String),
          ledgerable_type:
            T.nilable(
              ModernTreasury::LedgerTransaction::LedgerableType::OrSymbol
            ),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          partially_posts_ledger_transaction_id: T.nilable(String),
          posted_at: T.nilable(Time),
          reversed_by_ledger_transaction_id: T.nilable(String),
          reverses_ledger_transaction_id: T.nilable(String),
          status: ModernTreasury::LedgerTransaction::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # An optional description for internal use.
        description:,
        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        effective_at:,
        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        # purposes.
        effective_date:,
        # A unique string to represent the ledger transaction. Only one pending or posted
        # ledger transaction may have this ID in the ledger.
        external_id:,
        # An array of ledger entry objects.
        ledger_entries:,
        # The ID of the ledger this ledger transaction belongs to.
        ledger_id:,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the id will be populated here, otherwise null.
        ledgerable_id:,
        # If the ledger transaction can be reconciled to another object in Modern
        # Treasury, the type will be populated here, otherwise null. This can be one of
        # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        # reversal.
        ledgerable_type:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        # The ID of the ledger transaction that this ledger transaction partially posts.
        partially_posts_ledger_transaction_id:,
        # The time on which the ledger transaction posted. This is null if the ledger
        # transaction is pending.
        posted_at:,
        # The ID of the ledger transaction that reversed this ledger transaction.
        reversed_by_ledger_transaction_id:,
        # The ID of the original ledger transaction that this ledger transaction reverses.
        reverses_ledger_transaction_id:,
        # To post a ledger transaction at creation, use `posted`.
        status:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::LedgerEntry],
            ledger_id: String,
            ledgerable_id: T.nilable(String),
            ledgerable_type:
              T.nilable(
                ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
              ),
            live_mode: T::Boolean,
            metadata: T::Hash[Symbol, String],
            object: String,
            partially_posts_ledger_transaction_id: T.nilable(String),
            posted_at: T.nilable(Time),
            reversed_by_ledger_transaction_id: T.nilable(String),
            reverses_ledger_transaction_id: T.nilable(String),
            status: ModernTreasury::LedgerTransaction::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the type will be populated here, otherwise null. This can be one of
      # payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
      # reversal.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::LedgerTransaction::LedgerableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransaction::LedgerableType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::LedgerTransaction::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerTransaction::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerTransaction::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerTransaction::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::LedgerTransaction::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
