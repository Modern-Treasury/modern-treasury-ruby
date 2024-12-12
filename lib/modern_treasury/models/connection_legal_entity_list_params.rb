# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] connection_id
      #   @return [String]
      optional :connection_id, String

      # @!attribute [rw] legal_entity_id
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] status
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityListParams::Status }

      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing
      end
    end
  end
end
