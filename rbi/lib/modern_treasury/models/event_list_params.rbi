# typed: strong

module ModernTreasury
  module Models
    class EventListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def event_name
      end

      sig { params(_: String).returns(String) }
      def event_name=(_)
      end

      sig { returns(T.nilable(Time)) }
      def event_time_end
      end

      sig { params(_: Time).returns(Time) }
      def event_time_end=(_)
      end

      sig { returns(T.nilable(Time)) }
      def event_time_start
      end

      sig { params(_: Time).returns(Time) }
      def event_time_start=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(String)) }
      def resource
      end

      sig { params(_: String).returns(String) }
      def resource=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          event_name: String,
          event_time_end: Time,
          event_time_start: Time,
          per_page: Integer,
          resource: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
