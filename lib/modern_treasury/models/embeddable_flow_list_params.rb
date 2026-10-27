# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::EmbeddableFlows#list
    class EmbeddableFlowListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute template
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowListParams::Template, nil]
      optional :template, enum: -> { ModernTreasury::EmbeddableFlowListParams::Template }

      # @!method initialize(after_cursor: nil, per_page: nil, status: nil, template: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param per_page [Integer]
      #   @param status [String]
      #   @param template [Symbol, ModernTreasury::Models::EmbeddableFlowListParams::Template]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Template
        extend ModernTreasury::Internal::Type::Enum

        LEGAL_ENTITY_ONBOARDING = :legal_entity_onboarding
        ACCOUNT_COLLECTION = :account_collection
        PAYMENT = :payment

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
