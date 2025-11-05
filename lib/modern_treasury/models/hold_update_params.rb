# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Holds#update
    class HoldUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #   The new status of the hold
      #
      #   @return [Symbol, ModernTreasury::Models::HoldUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::HoldUpdateParams::Status }

      # @!attribute resolution
      #   The resolution of the hold
      #
      #   @return [String, nil]
      optional :resolution, String, nil?: true

      # @!method initialize(status:, resolution: nil, request_options: {})
      #   @param status [Symbol, ModernTreasury::Models::HoldUpdateParams::Status] The new status of the hold
      #
      #   @param resolution [String, nil] The resolution of the hold
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The new status of the hold
      module Status
        extend ModernTreasury::Internal::Type::Enum

        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
