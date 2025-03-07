# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] status
      #   The status of the connection legal entity.
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param status [Symbol, ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # The status of the connection legal entity.
      class Status < ModernTreasury::Enum
        PROCESSING = :processing

        finalize!
      end
    end
  end
end
