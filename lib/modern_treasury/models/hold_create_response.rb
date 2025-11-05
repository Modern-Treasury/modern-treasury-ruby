# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Holds#create
    class HoldCreateResponse < ModernTreasury::Internal::Type::BaseModel
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
      #   @return [Symbol, ModernTreasury::Models::HoldCreateResponse::Object]
      required :object, enum: -> { ModernTreasury::Models::HoldCreateResponse::Object }

      # @!attribute status
      #   The status of the hold
      #
      #   @return [Symbol, ModernTreasury::Models::HoldCreateResponse::Status]
      required :status, enum: -> { ModernTreasury::Models::HoldCreateResponse::Status }

      # @!attribute target_id
      #   The ID of the target being held
      #
      #   @return [String]
      required :target_id, String

      # @!attribute target_type
      #   The type of target being held
      #
      #   @return [Symbol, ModernTreasury::Models::HoldCreateResponse::TargetType]
      required :target_type, enum: -> { ModernTreasury::Models::HoldCreateResponse::TargetType }

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
      #   {ModernTreasury::Models::HoldCreateResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param object [Symbol, ModernTreasury::Models::HoldCreateResponse::Object] The type of object
      #
      #   @param status [Symbol, ModernTreasury::Models::HoldCreateResponse::Status] The status of the hold
      #
      #   @param target_id [String] The ID of the target being held
      #
      #   @param target_type [Symbol, ModernTreasury::Models::HoldCreateResponse::TargetType] The type of target being held
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
      # @see ModernTreasury::Models::HoldCreateResponse#object
      module Object
        extend ModernTreasury::Internal::Type::Enum

        HOLD = :hold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the hold
      #
      # @see ModernTreasury::Models::HoldCreateResponse#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of target being held
      #
      # @see ModernTreasury::Models::HoldCreateResponse#target_type
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
