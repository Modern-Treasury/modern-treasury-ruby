# typed: strong

module ModernTreasury
  module Models
    class Event < ModernTreasury::BaseModel
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

      # The body of the event.
      sig { returns(T::Hash[Symbol, T.anything]) }
      def data
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def data=(_)
      end

      # The ID of the entity for the event.
      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The name of the event.
      sig { returns(String) }
      def event_name
      end

      sig { params(_: String).returns(String) }
      def event_name=(_)
      end

      # The time of the event.
      sig { returns(Time) }
      def event_time
      end

      sig { params(_: Time).returns(Time) }
      def event_time=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
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

      # The type of resource for the event.
      sig { returns(String) }
      def resource
      end

      sig { params(_: String).returns(String) }
      def resource=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          data: T::Hash[Symbol, T.anything],
          entity_id: String,
          event_name: String,
          event_time: Time,
          live_mode: T::Boolean,
          object: String,
          resource: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, data:, entity_id:, event_name:, event_time:, live_mode:, object:, resource:, updated_at:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              data: T::Hash[Symbol, T.anything],
              entity_id: String,
              event_name: String,
              event_time: Time,
              live_mode: T::Boolean,
              object: String,
              resource: String,
              updated_at: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
