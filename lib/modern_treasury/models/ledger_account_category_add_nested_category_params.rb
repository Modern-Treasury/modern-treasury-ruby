# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::LedgerAccountCategories#add_nested_category
    class LedgerAccountCategoryAddNestedCategoryParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute sub_category_id
      #
      #   @return [String]
      required :sub_category_id, String

      # @!method initialize(id:, sub_category_id:, request_options: {})
      #   @param id [String]
      #   @param sub_category_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
