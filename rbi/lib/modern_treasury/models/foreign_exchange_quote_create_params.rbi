# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # Currency to convert the `base_currency` to, often called the "buy" currency.
      sig { returns(Symbol) }
      def target_currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def target_currency=(_)
      end

      # Amount in the lowest denomination of the `base_currency` to convert, often
      #   called the "sell" amount.
      sig { returns(T.nilable(Integer)) }
      def base_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def base_amount=(_)
      end

      # Currency to convert, often called the "sell" currency.
      sig { returns(T.nilable(Symbol)) }
      def base_currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def base_currency=(_)
      end

      # The timestamp until when the quoted rate is valid.
      sig { returns(T.nilable(Time)) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      # Amount in the lowest denomination of the `target_currency`, often called the
      #   "buy" amount.
      sig { returns(T.nilable(Integer)) }
      def target_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def target_amount=(_)
      end

      sig do
        params(
          internal_account_id: String,
          target_currency: Symbol,
          base_amount: Integer,
          base_currency: Symbol,
          effective_at: Time,
          target_amount: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end
    end
  end
end
