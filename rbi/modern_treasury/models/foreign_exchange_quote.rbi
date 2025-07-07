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
      sig { returns(ModernTreasury::ForeignExchangeRate) }
      attr_reader :foreign_exchange_rate

      sig do
        params(
          foreign_exchange_rate: ModernTreasury::ForeignExchangeRate::OrHash
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
          foreign_exchange_rate: ModernTreasury::ForeignExchangeRate::OrHash,
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
            foreign_exchange_rate: ModernTreasury::ForeignExchangeRate,
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
    end
  end
end
