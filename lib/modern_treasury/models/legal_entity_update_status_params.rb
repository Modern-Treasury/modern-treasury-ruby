# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntities#update_status
    class LegalEntityUpdateStatusParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute status
      #   The target status for the legal entity. One of `active`, `suspended`, or
      #   `denied`. Valid transitions depend on the current status.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityUpdateStatusParams::Status]
      required :status, enum: -> { ModernTreasury::LegalEntityUpdateStatusParams::Status }

      # @!method initialize(id:, status:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityUpdateStatusParams} for more details.
      #
      #   @param id [String]
      #
      #   @param status [Symbol, ModernTreasury::Models::LegalEntityUpdateStatusParams::Status] The target status for the legal entity. One of `active`, `suspended`, or `denied
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The target status for the legal entity. One of `active`, `suspended`, or
      # `denied`. Valid transitions depend on the current status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        SUSPENDED = :suspended
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
