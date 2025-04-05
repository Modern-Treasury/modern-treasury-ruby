# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # Currency to convert the `base_currency` to, often called the "buy" currency.
      sig { returns(ModernTreasury::Models::Currency::OrSymbol) }
      attr_accessor :target_currency

      # Amount in the lowest denomination of the `base_currency` to convert, often
      #   called the "sell" amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :base_amount

      sig { params(base_amount: Integer).void }
      attr_writer :base_amount

      # Currency to convert, often called the "sell" currency.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      attr_reader :base_currency

      sig { params(base_currency: ModernTreasury::Models::Currency::OrSymbol).void }
      attr_writer :base_currency

      # The timestamp until when the quoted rate is valid.
      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      # Amount in the lowest denomination of the `target_currency`, often called the
      #   "buy" amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_amount

      sig { params(target_amount: Integer).void }
      attr_writer :target_amount

      sig do
        params(
          internal_account_id: String,
          target_currency: ModernTreasury::Models::Currency::OrSymbol,
          base_amount: Integer,
          base_currency: ModernTreasury::Models::Currency::OrSymbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        internal_account_id:,
        target_currency:,
        base_amount: nil,
        base_currency: nil,
        effective_at: nil,
        target_amount: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              internal_account_id: String,
              target_currency: ModernTreasury::Models::Currency::OrSymbol,
              base_amount: Integer,
              base_currency: ModernTreasury::Models::Currency::OrSymbol,
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
