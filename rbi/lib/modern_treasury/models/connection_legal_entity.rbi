# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(String) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(String) }
      def vendor_id
      end

      sig { params(_: String).returns(String) }
      def vendor_id=(_)
      end

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
