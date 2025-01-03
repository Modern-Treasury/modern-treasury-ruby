# frozen_string_literal: true

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute ledger_account_id
      #   The Ledger Account associated to this account.
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   The nickname for the internal account.
      #
      #   @return [String]
      optional :name, String

      # @!attribute parent_account_id
      #   The parent internal account for this account.
      #
      #   @return [String]
      optional :parent_account_id, String

      # @!parse
      #   # @param counterparty_id [String] The Counterparty associated to this account.
      #   #
      #   # @param ledger_account_id [String] The Ledger Account associated to this account.
      #   #
      #   # @param metadata [Hash{Symbol => String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   #   an empty string or `null` as the value.
      #   #
      #   # @param name [String] The nickname for the internal account.
      #   #
      #   # @param parent_account_id [String] The parent internal account for this account.
      #   #
      #   def initialize(counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, parent_account_id: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
