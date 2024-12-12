# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] legal_entity_type
      #   @return [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      optional :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntityListParams::LegalEntityType }

      # @!attribute [rw] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] show_deleted
      #   @return [String]
      optional :show_deleted, String

      class LegalEntityType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual
      end
    end
  end
end
