# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(Symbol) }
      attr_accessor :target_currency

      sig { returns(T.nilable(Integer)) }
      attr_reader :base_amount

      sig { params(base_amount: Integer).void }
      attr_writer :base_amount

      sig { returns(T.nilable(Symbol)) }
      attr_reader :base_currency

      sig { params(base_currency: Symbol).void }
      attr_writer :base_currency

      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :target_amount

      sig { params(target_amount: Integer).void }
      attr_writer :target_amount

      sig do
        params(
          internal_account_id: String,
          target_currency: Symbol,
          base_amount: Integer,
          base_currency: Symbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        internal_account_id:,
        target_currency:,
        base_amount: nil,
        base_currency: nil,
        effective_at: nil,
        target_amount: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            internal_account_id: String,
            target_currency: Symbol,
            base_amount: Integer,
            base_currency: Symbol,
            effective_at: Time,
            target_amount: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
