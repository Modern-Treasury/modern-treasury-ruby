# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!attribute status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status }

      # @!parse
      #   # @param status [String] The status of the connection legal entity.
      #   #
      #   def initialize(status: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the connection legal entity.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :processing
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        PROCESSING = :processing

        finalize!
      end
    end
  end
end
