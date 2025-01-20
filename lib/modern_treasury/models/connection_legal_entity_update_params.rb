# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!attribute [r] status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param status [String] The status of the connection legal entity.
      #   #
      #   def initialize(status: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The status of the connection legal entity.
      #
      # @example
      # ```ruby
      # case status
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
