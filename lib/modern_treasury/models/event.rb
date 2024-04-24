# frozen_string_literal: true

module ModernTreasury
  module Models
    class Event < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] data
      #   The body of the event.
      #   @return [Hash]
      required :data, Hash

      # @!attribute [rw] entity_id
      #   The ID of the entity for the event.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] event_name
      #   The name of the event.
      #   @return [String]
      required :event_name, String

      # @!attribute [rw] event_time
      #   The time of the event.
      #   @return [String]
      required :event_time, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] resource
      #   The type of resource for the event.
      #   @return [String]
      required :resource, String

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
