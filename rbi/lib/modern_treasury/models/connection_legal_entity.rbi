# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(String) }
      attr_accessor :legal_entity_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :vendor_id

      sig do
        params(
          id: String,
          connection_id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          legal_entity_id: String,
          live_mode: T::Boolean,
          object: String,
          status: Symbol,
          updated_at: Time,
          vendor_id: String
        ).void
      end
      def initialize(
        id:,
        connection_id:,
        created_at:,
        discarded_at:,
        legal_entity_id:,
        live_mode:,
        object:,
        status:,
        updated_at:,
        vendor_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            connection_id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            legal_entity_id: String,
            live_mode: T::Boolean,
            object: String,
            status: Symbol,
            updated_at: Time,
            vendor_id: String
          }
        )
      end
      def to_hash
      end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
