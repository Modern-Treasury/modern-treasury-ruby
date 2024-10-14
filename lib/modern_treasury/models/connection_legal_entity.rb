# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntity < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] connection_id
      #   The ID of the connection.
      #   @return [String]
      required :connection_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] legal_entity_id
      #   The ID of the legal entity.
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] status
      #   The status of the connection legal entity.
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status]
      required :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntity::Status }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] vendor_id
      #   The ID of the legal entity at the vendor.
      #   @return [String]
      required :vendor_id, String

      # The status of the connection legal entity.
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing
      end

      # Create a new instance of ConnectionLegalEntity from a Hash of raw data.
      #
      # @overload initialize(id: nil, connection_id: nil, created_at: nil, discarded_at: nil, legal_entity_id: nil, live_mode: nil, object: nil, status: nil, updated_at: nil, vendor_id: nil)
      # @param id [String]
      # @param connection_id [String] The ID of the connection.
      # @param created_at [String]
      # @param discarded_at [String]
      # @param legal_entity_id [String] The ID of the legal entity.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param object [String]
      # @param status [String] The status of the connection legal entity.
      # @param updated_at [String]
      # @param vendor_id [String] The ID of the legal entity at the vendor.
      def initialize(data = {})
        super
      end
    end
  end
end
