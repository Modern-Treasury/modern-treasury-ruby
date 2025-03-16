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
      sig { returns(T.nilable(Symbol)) }
      def ledgerable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String],
              status: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Specify this if you'd like to link the reversal ledger transaction to a Payment
      #   object like Return or Reversal.
      class LedgerableType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end

      # Status of the reversal ledger transaction. It defaults to `posted` if not
      #   provided.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted
      end
    end
  end
end
