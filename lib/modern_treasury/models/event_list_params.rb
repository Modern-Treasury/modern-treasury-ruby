# frozen_string_literal: true

module ModernTreasury
  module Models
    class EventListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute entity_id
      #
      #   @return [String]
      optional :entity_id, String

      # @!attribute event_name
      #
      #   @return [String]
      optional :event_name, String

      # @!attribute event_time_end
      #   An inclusive upper bound for when the event occurred
      #
      #   @return [Time]
      optional :event_time_end, Time

      # @!attribute event_time_start
      #   An inclusive lower bound for when the event occurred
      #
      #   @return [Time]
      optional :event_time_start, Time

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute resource
      #
      #   @return [String]
      optional :resource, String
    end
  end
end
