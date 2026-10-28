# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionUpdateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerTransactionUpdateRequest,
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

      # A unique string to represent the ledger transaction. Only one pending or posted
      # ledger transaction may have this ID in the ledger.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

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
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::OrSymbol
          )
        )
      end
      attr_reader :ledgerable_type

      sig do
        params(
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::OrSymbol
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
            ModernTreasury::LedgerTransactionUpdateRequest::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            ModernTreasury::LedgerTransactionUpdateRequest::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          description: T.nilable(String),
          effective_at: Time,
          external_id: T.nilable(String),
          ledger_entries:
            T::Array[ModernTreasury::LedgerEntryCreateRequest::OrHash],
          ledgerable_id: String,
          ledgerable_type:
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status:
            ModernTreasury::LedgerTransactionUpdateRequest::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # An optional description for internal use.
        description: nil,
        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        # reporting purposes.
        effective_at: nil,
        # A unique string to represent the ledger transaction. Only one pending or posted
        # ledger transaction may have this ID in the ledger.
        external_id: nil,
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
            external_id: T.nilable(String),
            ledger_entries: T::Array[ModernTreasury::LedgerEntryCreateRequest],
            ledgerable_id: String,
            ledgerable_type:
              ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            status:
              ModernTreasury::LedgerTransactionUpdateRequest::Status::OrSymbol
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
              ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdateRequest::LedgerableType::TaggedSymbol
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
              ModernTreasury::LedgerTransactionUpdateRequest::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::LedgerTransactionUpdateRequest::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::LedgerTransactionUpdateRequest::Status::TaggedSymbol
          )
        POSTED =
          T.let(
            :posted,
            ModernTreasury::LedgerTransactionUpdateRequest::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LedgerTransactionUpdateRequest::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
