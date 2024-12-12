# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] status
      #   Required. The updated status of the account collection flow. Can only be used to mark a flow as `cancelled`.
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status]
      required :status, enum: -> { ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status }

      # Required. The updated status of the account collection flow. Can only be used to mark a flow as `cancelled`.
      class Status < ModernTreasury::Enum
        CANCELLED = :cancelled
      end
    end
  end
end
