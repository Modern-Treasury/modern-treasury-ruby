# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountCollectionFlows#update
    class AccountCollectionFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute status
      #   Required. The updated status of the account collection flow. Can only be used to
      #     mark a flow as `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status }

      # @!parse
      #   # @param status [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
