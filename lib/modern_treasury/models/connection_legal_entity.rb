# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ConnectionLegalEntities#create
    class ConnectionLegalEntity < ModernTreasury::Internal::Type::BaseModel
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
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute legal_entity_id
      #   The ID of the legal entity.
      #
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::BooleanModel

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
      #   # @param connection_id [String]
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param legal_entity_id [String]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param status [Symbol, ModernTreasury::Models::ConnectionLegalEntity::Status]
      #   # @param updated_at [Time]
      #   # @param vendor_id [String]
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
      #     vendor_id:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # The status of the connection legal entity.
      #
      # @see ModernTreasury::Models::ConnectionLegalEntity#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
