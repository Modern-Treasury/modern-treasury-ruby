# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreateReversalParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # An optional free-form description for the reversal ledger transaction. Maximum
      # of 1000 characters allowed.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      # for reporting purposes. It defaults to the `effective_at` of the original ledger
      # transaction if not provided.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at

      # Must be unique within the ledger.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      # object like Return or Reversal.
      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      # object like Return or Reversal.
      sig do
        returns(
          T.nilable(ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol)
        )
      end
      attr_reader :ledgerable_type

      sig do
        params(
          ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol
        )
          .void
      end
      attr_writer :ledgerable_type

      # Additional data to be added to the reversal ledger transaction as key-value
      # pairs. Both the key and value must be strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      # provided.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        description: nil,
        effective_at: nil,
        external_id: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              description: String,
              effective_at: T.nilable(Time),
              external_id: String,
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      # object like Return or Reversal.
      module LedgerableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )
        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol
          )

        sig do
          override
            .returns(
              T::Array[ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol]
            )
        end
        def self.values; end
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      # provided.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(:archived, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)
        POSTED =
          T.let(:posted, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
