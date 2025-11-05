# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Holds#create
    class HoldCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #   The status of the hold
      #
      #   @return [Symbol, ModernTreasury::Models::HoldCreateParams::Status]
      required :status, enum: -> { ModernTreasury::HoldCreateParams::Status }

      # @!attribute target_id
      #   The ID of the target to hold
      #
      #   @return [String]
      required :target_id, String

      # @!attribute target_type
      #   The type of target to hold
      #
      #   @return [Symbol, ModernTreasury::Models::HoldCreateParams::TargetType]
      required :target_type, enum: -> { ModernTreasury::HoldCreateParams::TargetType }

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

      # @!method initialize(status:, target_id:, target_type:, metadata: nil, reason: nil, request_options: {})
      #   @param status [Symbol, ModernTreasury::Models::HoldCreateParams::Status] The status of the hold
      #
      #   @param target_id [String] The ID of the target to hold
      #
      #   @param target_type [Symbol, ModernTreasury::Models::HoldCreateParams::TargetType] The type of target to hold
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the hold
      #
      #   @param reason [String, nil] The reason for the hold
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The status of the hold
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of target to hold
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
