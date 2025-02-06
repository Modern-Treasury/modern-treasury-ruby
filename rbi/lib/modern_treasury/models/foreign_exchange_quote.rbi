# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuote < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Time) }
      attr_accessor :effective_at

      sig { returns(Time) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :foreign_exchange_indicator

      sig { returns(ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate) }
      attr_accessor :foreign_exchange_rate

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

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
          foreign_exchange_rate: ModernTreasury::Models::ForeignExchangeQuote::ForeignExchangeRate,
          internal_account_id: String,
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          object: String,
          updated_at: Time,
          vendor_id: String
        ).void
      end
      def initialize(
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
        override.returns(
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
        sig { returns(Integer) }
        attr_accessor :base_amount

        sig { returns(Symbol) }
        attr_accessor :base_currency

        sig { returns(Integer) }
        attr_accessor :exponent

        sig { returns(String) }
        attr_accessor :rate_string

        sig { returns(Integer) }
        attr_accessor :target_amount

        sig { returns(Symbol) }
        attr_accessor :target_currency

        sig { returns(Integer) }
        attr_accessor :value

        sig do
          params(
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          ).void
        end
        def initialize(
          base_amount:,
          base_currency:,
          exponent:,
          rate_string:,
          target_amount:,
          target_currency:,
          value:
        )
        end

        sig do
          override.returns(
            {
              base_amount: Integer,
              base_currency: Symbol,
              exponent: Integer,
              rate_string: String,
              target_amount: Integer,
              target_currency: Symbol,
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
