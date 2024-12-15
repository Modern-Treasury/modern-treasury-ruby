# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!attribute status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status }

      # The status of the connection legal entity.
      class Status < ModernTreasury::Enum
        PROCESSING = :processing
      end
    end
  end
end
