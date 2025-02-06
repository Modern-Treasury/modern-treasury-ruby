# typed: strong

module ModernTreasury
  module Models
    class Event < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :data

      sig { returns(String) }
      attr_accessor :entity_id

      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(Time) }
      attr_accessor :event_time

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

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
        ).void
      end
      def initialize(
        id:,
        created_at:,
        data:,
        entity_id:,
        event_name:,
        event_time:,
        live_mode:,
        object:,
        resource:,
        updated_at:
      )
      end

      sig do
        override.returns(
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
