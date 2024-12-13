# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute metadata
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   @return [String]
      optional :name, String
    end
  end
end
