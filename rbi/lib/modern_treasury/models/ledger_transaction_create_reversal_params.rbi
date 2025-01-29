# typed: strong

module ModernTreasury
  module Models
    class LedgerTransactionCreateReversalParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            description: String,
            effective_at: T.nilable(Time),
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol, String],
            status: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at

      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledgerable_id

      sig { params(ledgerable_id: String).void }
      attr_writer :ledgerable_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :ledgerable_type

      sig { params(ledgerable_type: Symbol).void }
      attr_writer :ledgerable_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          description: String,
          effective_at: T.nilable(Time),
          external_id: String,
          ledgerable_id: String,
          ledgerable_type: Symbol,
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        description: nil,
        effective_at: nil,
        external_id: nil,
        ledgerable_id: nil,
        ledgerable_type: nil,
        metadata: nil,
        status: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerTransactionCreateReversalParams::Shape) }
      def to_h; end

      class LedgerableType < ModernTreasury::Enum
        abstract!

        EXPECTED_PAYMENT = :expected_payment
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        ARCHIVED = :archived
        PENDING = :pending
        POSTED = :posted

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
