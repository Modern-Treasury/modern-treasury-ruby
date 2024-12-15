# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute connection_id
      #
      #   @return [String]
      optional :connection_id, String

      # @!attribute legal_entity_id
      #
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityListParams::Status }

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param connection_id [String, nil]
      #   # @param legal_entity_id [String, nil]
      #   # @param per_page [Integer, nil]
      #   # @param status [String, nil]
      #   #
      #   def initialize(after_cursor: nil, connection_id: nil, legal_entity_id: nil, per_page: nil, status: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing
      end
    end
  end
end
