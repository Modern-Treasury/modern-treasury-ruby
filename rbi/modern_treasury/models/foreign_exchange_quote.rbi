# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuote < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ForeignExchangeQuote,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # The timestamp until when the quoted rate is valid.
      sig { returns(Time) }
      attr_accessor :effective_at

      # The timestamp until which the quote must be booked by.
      sig { returns(Time) }
      attr_accessor :expires_at

      # Either `fixed_to_variable` if the `base_amount` was specified, or
      # `variable_to_fixed` if the `target_amount` was specified when requesting the
      # quote.
      sig { returns(String) }
      attr_accessor :foreign_exchange_indicator

      # The serialized rate information represented by this quote.
      sig { returns(ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate) }
      attr_reader :foreign_exchange_rate

      sig do
        params(
          foreign_exchange_rate:
            ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate::OrHash
        ).void
      end
      attr_writer :foreign_exchange_rate

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      # This vendor assigned ID for this quote.
      sig { returns(T.nilable(String)) }
      attr_reader :vendor_id

      sig { params(vendor_id: String).void }
      attr_writer :vendor_id

      sig do
        params(
          id: String,
          created_at: Time,
          effective_at: Time,
          expires_at: Time,
          foreign_exchange_indicator: String,
          foreign_exchange_rate:
            ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate::OrHash,
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time,
          vendor_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # The timestamp until when the quoted rate is valid.
        effective_at:,
        # The timestamp until which the quote must be booked by.
        expires_at:,
        # Either `fixed_to_variable` if the `base_amount` was specified, or
        # `variable_to_fixed` if the `target_amount` was specified when requesting the
        # quote.
        foreign_exchange_indicator:,
        # The serialized rate information represented by this quote.
        foreign_exchange_rate:,
        # The ID for the `InternalAccount` this quote is associated with.
        internal_account_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        object:,
        updated_at:,
        # This vendor assigned ID for this quote.
        vendor_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            effective_at: Time,
            expires_at: Time,
            foreign_exchange_indicator: String,
            foreign_exchange_rate:
              ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate,
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

      class ForeignExchangeRate < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ForeignExchangeQuote::ForeignExchangeRate,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Amount in the lowest denomination of the `base_currency` to convert, often
        # called the "sell" amount.
        sig { returns(Integer) }
        attr_accessor :base_amount

        # Currency to convert, often called the "sell" currency.
        sig { returns(ModernTreasury::Currency::TaggedSymbol) }
        attr_accessor :base_currency

        # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        # `exponent`).
        sig { returns(Integer) }
        attr_accessor :exponent

        # A string representation of the rate.
        sig { returns(String) }
        attr_accessor :rate_string

        # Amount in the lowest denomination of the `target_currency`, often called the
        # "buy" amount.
        sig { returns(Integer) }
        attr_accessor :target_amount

        # Currency to convert the `base_currency` to, often called the "buy" currency.
        sig { returns(ModernTreasury::Currency::TaggedSymbol) }
        attr_accessor :target_currency

        # The whole number component of the rate. The decimal is calculated as `value` /
        # (10 ^ `exponent`).
        sig { returns(Integer) }
        attr_accessor :value

        # The serialized rate information represented by this quote.
        sig do
          params(
            base_amount: Integer,
            base_currency: ModernTreasury::Currency::OrSymbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: ModernTreasury::Currency::OrSymbol,
            value: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Amount in the lowest denomination of the `base_currency` to convert, often
          # called the "sell" amount.
          base_amount:,
          # Currency to convert, often called the "sell" currency.
          base_currency:,
          # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
          # `exponent`).
          exponent:,
          # A string representation of the rate.
          rate_string:,
          # Amount in the lowest denomination of the `target_currency`, often called the
          # "buy" amount.
          target_amount:,
          # Currency to convert the `base_currency` to, often called the "buy" currency.
          target_currency:,
          # The whole number component of the rate. The decimal is calculated as `value` /
          # (10 ^ `exponent`).
          value:
        )
        end

        sig do
          override.returns(
            {
              base_amount: Integer,
              base_currency: ModernTreasury::Currency::TaggedSymbol,
              exponent: Integer,
              rate_string: String,
              target_amount: Integer,
              target_currency: ModernTreasury::Currency::TaggedSymbol,
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
