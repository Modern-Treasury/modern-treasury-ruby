# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountStatementCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time,
            ledger_account_id: String,
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Time) }
      attr_accessor :effective_at_lower_bound

      sig { returns(Time) }
      attr_accessor :effective_at_upper_bound

      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          effective_at_lower_bound: Time,
          effective_at_upper_bound: Time,
          ledger_account_id: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        effective_at_lower_bound:,
        effective_at_upper_bound:,
        ledger_account_id:,
        description: nil,
        metadata: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountStatementCreateParams::Shape) }
      def to_h; end
    end
  end
end
