# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            contra_ledger_account_id: String,
            settled_ledger_account_id: String,
            allow_either_direction: T.nilable(T::Boolean),
            description: T.nilable(String),
            effective_at_upper_bound: T.nilable(Time),
            metadata: T::Hash[Symbol, String],
            skip_settlement_ledger_transaction: T.nilable(T::Boolean),
            status: T.nilable(Symbol)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contra_ledger_account_id

      sig { returns(String) }
      attr_accessor :settled_ledger_account_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_either_direction

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at_upper_bound

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :skip_settlement_ledger_transaction

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :status

      sig do
        params(
          contra_ledger_account_id: String,
          settled_ledger_account_id: String,
          allow_either_direction: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_at_upper_bound: T.nilable(Time),
          metadata: T::Hash[Symbol, String],
          skip_settlement_ledger_transaction: T.nilable(T::Boolean),
          status: T.nilable(Symbol),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        contra_ledger_account_id:,
        settled_ledger_account_id:,
        allow_either_direction: nil,
        description: nil,
        effective_at_upper_bound: nil,
        metadata: nil,
        skip_settlement_ledger_transaction: nil,
        status: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountSettlementCreateParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        PENDING = T.let(:pending, T.nilable(Symbol))
        POSTED = T.let(:posted, T.nilable(Symbol))

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
