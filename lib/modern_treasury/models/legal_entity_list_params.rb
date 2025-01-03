# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute legal_entity_type
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      optional :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntityListParams::LegalEntityType }

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute show_deleted
      #
      #   @return [String]
      optional :show_deleted, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param legal_entity_type [String]
      #   #
      #   # @param metadata [Hash{Symbol => String}] For example, if you want to query for records with metadata key `Type` and value
      #   #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   #   parameters.
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param show_deleted [String]
      #   #
      #   def initialize(after_cursor: nil, legal_entity_type: nil, metadata: nil, per_page: nil, show_deleted: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # end
      # ```
      class LegalEntityType < ModernTreasury::Enum
        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!
      end
    end
  end
end
