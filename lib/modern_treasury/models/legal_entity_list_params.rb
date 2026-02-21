# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntities#list
    class LegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute legal_entity_type
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType, nil]
      optional :legal_entity_type, enum: -> { ModernTreasury::LegalEntityListParams::LegalEntityType }

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute show_deleted
      #
      #   @return [String, nil]
      optional :show_deleted, String

      # @!attribute status
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::LegalEntityListParams::Status }

      # @!method initialize(after_cursor: nil, external_id: nil, legal_entity_type: nil, metadata: nil, per_page: nil, show_deleted: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param external_id [String] An optional user-defined 180 character unique identifier.
      #
      #   @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param show_deleted [String]
      #
      #   @param status [Symbol, ModernTreasury::Models::LegalEntityListParams::Status]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        PENDING = :pending
        ACTIVE = :active
        SUSPENDED = :suspended
        CLOSED = :closed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
