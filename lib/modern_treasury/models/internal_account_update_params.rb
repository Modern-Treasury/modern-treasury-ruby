# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] counterparty_id
      #   The Counterparty associated to this account.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] ledger_account_id
      #   The Ledger Account associated to this account.
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute [rw] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] name
      #   The nickname for the internal account.
      #   @return [String]
      optional :name, String

      # @!attribute [rw] parent_account_id
      #   The parent internal account for this account.
      #   @return [String]
      optional :parent_account_id, String
    end
  end
end
