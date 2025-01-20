# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] legal_entity_type
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType, nil]
      optional :legal_entity_type, enum: -> { ModernTreasury::Models::LegalEntityListParams::LegalEntityType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      #   attr_writer :legal_entity_type

      # @!attribute [r] metadata
      #   For example, if you want to query for records with metadata key `Type` and value `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] show_deleted
      #
      #   @return [String, nil]
      optional :show_deleted, String

      # @!parse
      #   # @return [String]
      #   attr_writer :show_deleted

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param legal_entity_type [String]
      #   #
      #   # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
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
      # ```ruby
      # case legal_entity_type
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
