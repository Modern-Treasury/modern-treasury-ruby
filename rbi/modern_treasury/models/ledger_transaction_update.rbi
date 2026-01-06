# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionUpdate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerTransactionUpdate,
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
        returns(T.nilable(T::Array[ModernTreasury::LedgerEntryCreateRequest]))
      end
      attr_reader :ledger_entries

      sig do
        params(
          ledger_entries:
            T::Array[ModernTreasury::LedgerEntryCreateRequest::OrHash]
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
      # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::OrSymbol
          )
        )
      end
      attr_reader :ledgerable_type

      sig do
        params(
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::OrSymbol
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
          T.nilable(ModernTreasury::LedgerTransactionUpdate::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::LedgerTransactionUpdate::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          effective_at: Time,
          ledger_entries:
            T::Array[ModernTreasury::LedgerEntryCreateRequest::OrHash],
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::LedgerTransactionUpdate::Status::OrSymbol
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
        # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
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
            description: T.nilable(String),
            effective_at: Time,
            ledger_entries: T::Array[ModernTreasury::LedgerEntryCreateRequest],
            ledgerable_id: String,
            ledgerable_type:
              ModernTreasury::LedgerTransactionUpdate::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            status: ModernTreasury::LedgerTransactionUpdate::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      # If the ledger transaction can be reconciled to another object in Modern
      # Treasury, the type will be populated here, otherwise null. This can be one of
      # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LedgerTransactionUpdate::LedgerableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdate::LedgerableType::TaggedSymbol
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
            T.all(Symbol, ModernTreasury::LedgerTransactionUpdate::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerTransactionUpdate::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerTransactionUpdate::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerTransactionUpdate::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdate::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
