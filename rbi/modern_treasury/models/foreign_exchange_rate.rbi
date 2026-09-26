# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeRate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ForeignExchangeRate,
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
