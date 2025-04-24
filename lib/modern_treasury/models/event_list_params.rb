# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Events#list
    class EventListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute entity_id
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!attribute event_name
      #
      #   @return [String, nil]
      optional :event_name, String

      # @!attribute event_time_end
      #   An inclusive upper bound for when the event occurred
      #
      #   @return [Time, nil]
      optional :event_time_end, Time

      # @!attribute event_time_start
      #   An inclusive lower bound for when the event occurred
      #
      #   @return [Time, nil]
      optional :event_time_start, Time

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute resource
      #
      #   @return [String, nil]
      optional :resource, String

      # @!method initialize(after_cursor: nil, entity_id: nil, event_name: nil, event_time_end: nil, event_time_start: nil, per_page: nil, resource: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #
      #   @param entity_id [String]
      #
      #   @param event_name [String]
      #
      #   @param event_time_end [Time] An inclusive upper bound for when the event occurred
      #
      #   @param event_time_start [Time] An inclusive lower bound for when the event occurred
      #
      #   @param per_page [Integer]
      #
      #   @param resource [String]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
