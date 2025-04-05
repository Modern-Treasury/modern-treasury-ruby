# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LegalEntities#list
    class LegalEntityListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

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
      #   # @param legal_entity_type [Symbol, ModernTreasury::Models::LegalEntityListParams::LegalEntityType]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param per_page [Integer]
      #   # @param show_deleted [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     legal_entity_type: nil,
      #     metadata: nil,
      #     per_page: nil,
      #     show_deleted: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      module LegalEntityType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        INDIVIDUAL = :individual

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
