# typed: strong

module ModernTreasury
  module Models
    class EventListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :event_name

      sig { params(event_name: String).void }
      attr_writer :event_name

      # An inclusive upper bound for when the event occurred
      sig { returns(T.nilable(Time)) }
      attr_reader :event_time_end

      sig { params(event_time_end: Time).void }
      attr_writer :event_time_end

      # An inclusive lower bound for when the event occurred
      sig { returns(T.nilable(Time)) }
      attr_reader :event_time_start

      sig { params(event_time_start: Time).void }
      attr_writer :event_time_start

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :resource

      sig { params(resource: String).void }
      attr_writer :resource

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          event_name: String,
          event_time_end: Time,
          event_time_start: Time,
          per_page: Integer,
          resource: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        entity_id: nil,
        event_name: nil,
        event_time_end: nil,
        event_time_start: nil,
        per_page: nil,
        resource: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              entity_id: String,
              event_name: String,
              event_time_end: Time,
              event_time_start: Time,
              per_page: Integer,
              resource: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
