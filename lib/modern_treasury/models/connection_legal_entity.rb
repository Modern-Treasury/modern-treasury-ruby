# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntity < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute connection_id
      #   The ID of the connection.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute legal_entity_id
      #   The ID of the legal entity.
      #
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status]
      required :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntity::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   The ID of the legal entity at the vendor.
      #
      #   @return [String]
      required :vendor_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param connection_id [String] The ID of the connection.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param legal_entity_id [String] The ID of the legal entity.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param status [String] The status of the connection legal entity.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param vendor_id [String] The ID of the legal entity at the vendor.
      #   #
      #   def initialize(
      #     id:,
      #     connection_id:,
      #     created_at:,
      #     discarded_at:,
      #     legal_entity_id:,
      #     live_mode:,
      #     object:,
      #     status:,
      #     updated_at:,
      #     vendor_id:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
