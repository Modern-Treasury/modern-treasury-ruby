# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute [rw] metadata
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   @return [String]
      optional :name, String
    end
  end
end
