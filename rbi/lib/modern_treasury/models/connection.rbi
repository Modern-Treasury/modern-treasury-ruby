# typed: strong

module ModernTreasury
  module Models
    class Connection < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :vendor_customer_id

      sig { returns(String) }
      attr_accessor :vendor_id

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
        ).void
      end
      def initialize(
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

      sig { returns(ModernTreasury::Models::Connection::Shape) }
      def to_h; end
    end
  end
end
