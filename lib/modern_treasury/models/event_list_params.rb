# frozen_string_literal: true

module ModernTreasury
  module Models
    class EventListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] entity_id
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!attribute [r] event_name
      #
      #   @return [String, nil]
      optional :event_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :event_name

      # @!attribute [r] event_time_end
      #   An inclusive upper bound for when the event occurred
      #
      #   @return [Time, nil]
      optional :event_time_end, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :event_time_end

      # @!attribute [r] event_time_start
      #   An inclusive lower bound for when the event occurred
      #
      #   @return [Time, nil]
      optional :event_time_start, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :event_time_start

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] resource
      #
      #   @return [String, nil]
      optional :resource, String

      # @!parse
      #   # @return [String]
      #   attr_writer :resource

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param entity_id [String]
      #   # @param event_name [String]
      #   # @param event_time_end [String]
      #   # @param event_time_start [String]
      #   # @param per_page [Integer]
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
