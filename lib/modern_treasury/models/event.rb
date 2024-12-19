# frozen_string_literal: true

module ModernTreasury
  module Models
    class Event < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute data
      #   The body of the event.
      #
      #   @return [Hash{Symbol => Object}]
      required :data, ModernTreasury::HashOf[ModernTreasury::Unknown]

      # @!attribute entity_id
      #   The ID of the entity for the event.
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute event_name
      #   The name of the event.
      #
      #   @return [String]
      required :event_name, String

      # @!attribute event_time
      #   The time of the event.
      #
      #   @return [Time]
      required :event_time, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute resource
      #   The type of resource for the event.
      #
      #   @return [String]
      required :resource, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param data [Hash{Symbol => Object}] The body of the event.
      #   #
      #   # @param entity_id [String] The ID of the entity for the event.
      #   #
      #   # @param event_name [String] The name of the event.
      #   #
      #   # @param event_time [String] The time of the event.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param resource [String] The type of resource for the event.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     data:,
      #     entity_id:,
      #     event_name:,
      #     event_time:,
      #     live_mode:,
      #     object:,
      #     resource:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
