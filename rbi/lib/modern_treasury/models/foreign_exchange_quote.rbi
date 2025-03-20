# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuote < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The timestamp until when the quoted rate is valid.
      sig { returns(Time) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      # The timestamp until which the quote must be booked by.
      sig { returns(Time) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      # Either `fixed_to_variable` if the `base_amount` was specified, or
      #   `variable_to_fixed` if the `target_amount` was specified when requesting the
      #   quote.
      sig { returns(String) }
      def foreign_exchange_indicator
      end

      sig { params(_: String).returns(String) }
      def foreign_exchange_indicator=(_)
      end

      # The serialized rate information represented by this quote.
      sig { returns(ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate) }
      def foreign_exchange_rate
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate, ModernTreasury::Util::AnyHash)
          )
      end
      def foreign_exchange_rate=(_)
      end

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # This vendor assigned ID for this quote.
      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: String).returns(String) }
      def vendor_id=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          effective_at: Time,
          expires_at: Time,
          foreign_exchange_indicator: String,
          foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time,
          vendor_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        effective_at:,
        expires_at:,
        foreign_exchange_indicator:,
        foreign_exchange_rate:,
        internal_account_id:,
        live_mode:,
        metadata:,
        object:,
        updated_at:,
        vendor_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              effective_at: Time,
              expires_at: Time,
              foreign_exchange_indicator: String,
              foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
              internal_account_id: String,
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              object: String,
              updated_at: Time,
              vendor_id: String
            }
          )
      end
      def to_hash
      end

      class ForeignExchangeRate < ModernTreasury::BaseModel
        # Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        sig { returns(Integer) }
        def base_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def base_amount=(_)
        end

        # Currency to convert, often called the "sell" currency.
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        def base_currency
        end

        sig do
          params(_: ModernTreasury::Models::Currency::TaggedSymbol)
            .returns(ModernTreasury::Models::Currency::TaggedSymbol)
        end
        def base_currency=(_)
        end

        # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        sig { returns(Integer) }
        def exponent
        end

        sig { params(_: Integer).returns(Integer) }
        def exponent=(_)
        end

        # A string representation of the rate.
        sig { returns(String) }
        def rate_string
        end

        sig { params(_: String).returns(String) }
        def rate_string=(_)
        end

        # Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        sig { returns(Integer) }
        def target_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def target_amount=(_)
        end

        # Currency to convert the `base_currency` to, often called the "buy" currency.
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        def target_currency
        end

        sig do
          params(_: ModernTreasury::Models::Currency::TaggedSymbol)
            .returns(ModernTreasury::Models::Currency::TaggedSymbol)
        end
        def target_currency=(_)
        end

        # The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        # The serialized rate information represented by this quote.
        sig do
          params(
            base_amount: Integer,
            base_currency: ModernTreasury::Models::Currency::TaggedSymbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: ModernTreasury::Models::Currency::TaggedSymbol,
            value: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:)
        end

        sig do
          override
            .returns(
              {
                base_amount: Integer,
                base_currency: ModernTreasury::Models::Currency::TaggedSymbol,
                exponent: Integer,
                rate_string: String,
                target_amount: Integer,
                target_currency: ModernTreasury::Models::Currency::TaggedSymbol,
                value: Integer
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
