# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # Currency to convert the `base_currency` to, often called the "buy" currency.
      sig { returns(ModernTreasury::Currency::OrSymbol) }
      attr_accessor :target_currency

      # Amount in the lowest denomination of the `base_currency` to convert, often
      # called the "sell" amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :base_amount

      sig { params(base_amount: Integer).void }
      attr_writer :base_amount

      # Currency to convert, often called the "sell" currency.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_reader :base_currency

      sig { params(base_currency: ModernTreasury::Currency::OrSymbol).void }
      attr_writer :base_currency

      # The timestamp until when the quoted rate is valid.
      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      # Amount in the lowest denomination of the `target_currency`, often called the
      # "buy" amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_amount

      sig { params(target_amount: Integer).void }
      attr_writer :target_amount

      sig do
        params(
          internal_account_id: String,
          target_currency: ModernTreasury::Currency::OrSymbol,
          base_amount: Integer,
          base_currency: ModernTreasury::Currency::OrSymbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID for the `InternalAccount` this quote is associated with.
        internal_account_id:,
        # Currency to convert the `base_currency` to, often called the "buy" currency.
        target_currency:,
        # Amount in the lowest denomination of the `base_currency` to convert, often
        # called the "sell" amount.
        base_amount: nil,
        # Currency to convert, often called the "sell" currency.
        base_currency: nil,
        # The timestamp until when the quoted rate is valid.
        effective_at: nil,
        # Amount in the lowest denomination of the `target_currency`, often called the
        # "buy" amount.
        target_amount: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            internal_account_id: String,
            target_currency: ModernTreasury::Currency::OrSymbol,
            base_amount: Integer,
            base_currency: ModernTreasury::Currency::OrSymbol,
            effective_at: Time,
            target_amount: Integer,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
