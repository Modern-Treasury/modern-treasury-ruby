# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::EmbeddableFlows#update
    class EmbeddableFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute status
      #   The updated status of the flow. Can only be used to mark the flow as
      #   `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::EmbeddableFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::EmbeddableFlowUpdateParams::Status }

      # @!method initialize(id:, status:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::EmbeddableFlowUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param status [Symbol, ModernTreasury::Models::EmbeddableFlowUpdateParams::Status] The updated status of the flow. Can only be used to mark the flow as `cancelled`
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The updated status of the flow. Can only be used to mark the flow as
      # `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
