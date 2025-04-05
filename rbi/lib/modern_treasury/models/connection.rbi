# typed: strong

module ModernTreasury
  module Models
    class Connection < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      # An identifier given to this connection by the bank.
      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      # Unique identifier for the bank or vendor.
      sig { returns(String) }
      attr_accessor :vendor_id

      # A human-friendly name for the bank or vendor.
      sig { returns(String) }
      attr_accessor :vendor_name

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time,
          vendor_customer_id: T.nilable(String),
          vendor_id: String,
          vendor_name: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        updated_at:,
        vendor_customer_id:,
        vendor_id:,
        vendor_name:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time,
              vendor_customer_id: T.nilable(String),
              vendor_id: String,
              vendor_name: String
            }
          )
      end
      def to_hash; end
    end
  end
end
