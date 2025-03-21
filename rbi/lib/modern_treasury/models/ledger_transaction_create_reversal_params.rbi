# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreateReversalParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # An optional free-form description for the reversal ledger transaction. Maximum
      #   of 1000 characters allowed.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The timestamp (ISO8601 format) at which the reversal ledger transaction happened
      #   for reporting purposes. It defaults to the `effective_at` of the original ledger
      #   transaction if not provided.
      sig { returns(T.nilable(Time)) }
      def effective_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def effective_at=(_)
      end

      # Must be unique within the ledger.
      sig { returns(T.nilable(String)) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      sig { returns(T.nilable(String)) }
      def ledgerable_id
      end

      sig { params(_: String).returns(String) }
      def ledgerable_id=(_)
      end

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      sig do
        returns(
          T.nilable(ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol)
        )
      end
      def ledgerable_type
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol)
      end
      def ledgerable_type=(_)
      end

      # Additional data to be added to the reversal ledger transaction as key-value
      #   pairs. Both the key and value must be strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      sig { returns(T.nilable(ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol)
          .returns(ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          status: ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      module LedgerableType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol) }

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

        class << self
          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::LedgerTransactionCreateReversalParams::LedgerableType::TaggedSymbol]
              )
          end
          def values
          end
        end
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol) }

        ARCHIVED =
          T.let(:archived, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)
        POSTED =
          T.let(:posted, ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[ModernTreasury::Models::LedgerTransactionCreateReversalParams::Status::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
