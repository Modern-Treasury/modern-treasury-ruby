# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::EmbeddableFlows#create
    class EmbeddableFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute options
      #   The parameters for the selected template's flow.
      #
      #   @return [ModernTreasury::Models::AccountCollectionFlowCreateRequest, ModernTreasury::Models::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type]
      required :options, union: -> { ModernTreasury::EmbeddableFlowCreateParams::Options }

      # @!attribute template
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Template]
      required :template, enum: -> { ModernTreasury::EmbeddableFlowCreateParams::Template }

      # @!method initialize(options:, template:, request_options: {})
      #   @param options [ModernTreasury::Models::AccountCollectionFlowCreateRequest, ModernTreasury::Models::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type] The parameters for the selected template's flow.
      #
      #   @param template [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Template]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The parameters for the selected template's flow.
      module Options
        extend ModernTreasury::Internal::Type::Union

        variant -> { ModernTreasury::AccountCollectionFlowCreateRequest }

        variant -> { ModernTreasury::PaymentFlowCreateRequest }

        variant -> { ModernTreasury::EmbeddableFlowCreateParams::Options::Type }

        class Type < ModernTreasury::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type::Type]
          required :type, enum: -> { ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type }

          # @!method initialize(type:)
          #   @param type [Symbol, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type::Type]

          # @see ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type#type
          module Type
            extend ModernTreasury::Internal::Type::Enum

            INDIVIDUAL = :individual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(ModernTreasury::Models::AccountCollectionFlowCreateRequest, ModernTreasury::Models::PaymentFlowCreateRequest, ModernTreasury::Models::EmbeddableFlowCreateParams::Options::Type)]
      end

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
