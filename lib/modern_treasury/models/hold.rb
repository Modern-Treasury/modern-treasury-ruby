# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Holds#create
    class Hold < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute object
      #   The type of object
      #
      #   @return [Symbol, ModernTreasury::Models::Hold::Object]
      required :object, enum: -> { ModernTreasury::Hold::Object }

      # @!attribute status
      #   The status of the hold
      #
      #   @return [Symbol, ModernTreasury::Models::Hold::Status]
      required :status, enum: -> { ModernTreasury::Hold::Status }

      # @!attribute target_id
      #   The ID of the target being held
      #
      #   @return [String]
      required :target_id, String

      # @!attribute target_type
      #   The type of target being held
      #
      #   @return [Symbol, ModernTreasury::Models::Hold::TargetType]
      required :target_type, enum: -> { ModernTreasury::Hold::TargetType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean, nil]
      optional :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional metadata for the hold
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String], nil?: true

      # @!attribute reason
      #   The reason for the hold
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute resolution
      #   The resolution of the hold
      #
      #   @return [String, nil]
      optional :resolution, String, nil?: true

      # @!attribute resolved_at
      #   When the hold was resolved
      #
      #   @return [Time, nil]
      optional :resolved_at, Time, nil?: true

      # @!method initialize(id:, created_at:, object:, status:, target_id:, target_type:, updated_at:, live_mode: nil, metadata: nil, reason: nil, resolution: nil, resolved_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Hold} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param object [Symbol, ModernTreasury::Models::Hold::Object] The type of object
      #
      #   @param status [Symbol, ModernTreasury::Models::Hold::Status] The status of the hold
      #
      #   @param target_id [String] The ID of the target being held
      #
      #   @param target_type [Symbol, ModernTreasury::Models::Hold::TargetType] The type of target being held
      #
      #   @param updated_at [Time]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the hold
      #
      #   @param reason [String, nil] The reason for the hold
      #
      #   @param resolution [String, nil] The resolution of the hold
      #
      #   @param resolved_at [Time, nil] When the hold was resolved

      # The type of object
      #
      # @see ModernTreasury::Models::Hold#object
      module Object
        extend ModernTreasury::Internal::Type::Enum

        HOLD = :hold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the hold
      #
      # @see ModernTreasury::Models::Hold#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of target being held
      #
      # @see ModernTreasury::Models::Hold#target_type
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
