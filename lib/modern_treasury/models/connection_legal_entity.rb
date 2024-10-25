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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

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
      #   One of the constants defined in {ModernTreasury::Models::ConnectionLegalEntity::Status}
      #   @return [Symbol]
      required :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntity::Status }

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

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
    end
  end
end
