# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ConnectionLegalEntities#list
    class ConnectionLegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute connection_id
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute legal_entity_id
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::ConnectionLegalEntityListParams::Status }

      # @!method initialize(after_cursor: nil, connection_id: nil, legal_entity_id: nil, per_page: nil, status: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param connection_id [String]
      #   @param legal_entity_id [String]
      #   @param per_page [Integer]
      #   @param status [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend ModernTreasury::Internal::Type::Enum

        CLOSED = :closed
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing
        SUSPENDED = :suspended

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
