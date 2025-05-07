# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ConnectionLegalEntities#update
    class ConnectionLegalEntityUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::ConnectionLegalEntityUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::ConnectionLegalEntityUpdateParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, ModernTreasury::ConnectionLegalEntityUpdateParams::Status] The status of the connection legal entity.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The status of the connection legal entity.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        PROCESSING = :processing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
