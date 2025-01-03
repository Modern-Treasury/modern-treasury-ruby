# frozen_string_literal: true

module ModernTreasury
  module Models
    class EventListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
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

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param entity_id [String]
      #   #
      #   # @param event_name [String]
      #   #
      #   # @param event_time_end [String] An inclusive upper bound for when the event occurred
      #   #
      #   # @param event_time_start [String] An inclusive lower bound for when the event occurred
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param resource [String]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     entity_id: nil,
      #     event_name: nil,
      #     event_time_end: nil,
      #     event_time_start: nil,
      #     per_page: nil,
      #     resource: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
