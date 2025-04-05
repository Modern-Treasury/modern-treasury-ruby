# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Events#retrieve
    class Event < ModernTreasury::Internal::Type::BaseModel
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
      #   @return [Hash{Symbol=>Object}]
      required :data, ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]

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
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

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
      #   # @param created_at [Time]
      #   # @param data [Hash{Symbol=>Object}]
      #   # @param entity_id [String]
      #   # @param event_name [String]
      #   # @param event_time [Time]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param resource [String]
      #   # @param updated_at [Time]
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

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
