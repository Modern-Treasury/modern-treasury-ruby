# typed: strong

module ModernTreasury
  module Models
    class Event < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # The body of the event.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :data

      # The ID of the entity for the event.
      sig { returns(String) }
      attr_accessor :entity_id

      # The name of the event.
      sig { returns(String) }
      attr_accessor :event_name

      # The time of the event.
      sig { returns(Time) }
      attr_accessor :event_time

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The type of resource for the event.
      sig { returns(String) }
      attr_accessor :resource

      sig { returns(Time) }
      attr_accessor :updated_at

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
      def self.new(
        id:,
        created_at:,
        # The body of the event.
        data:,
        # The ID of the entity for the event.
        entity_id:,
        # The name of the event.
        event_name:,
        # The time of the event.
        event_time:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The type of resource for the event.
        resource:,
        updated_at:
      ); end
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
      def to_hash; end
    end
  end
end
