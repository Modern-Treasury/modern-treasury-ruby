# frozen_string_literal: true

module ModernTreasury
  module Models
    class Event < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute data
      #   The body of the event.
      #   @return [Hash]
      required :data, Hash

      # @!attribute entity_id
      #   The ID of the entity for the event.
      #   @return [String]
      required :entity_id, String

      # @!attribute event_name
      #   The name of the event.
      #   @return [String]
      required :event_name, String

      # @!attribute event_time
      #   The time of the event.
      #   @return [Time]
      required :event_time, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute resource
      #   The type of resource for the event.
      #   @return [String]
      required :resource, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # Create a new instance of Event from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [Hash] :data The body of the event.
      #   #   @option data [String] :entity_id The ID of the entity for the event.
      #   #   @option data [String] :event_name The name of the event.
      #   #   @option data [String] :event_time The time of the event.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :resource The type of resource for the event.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
