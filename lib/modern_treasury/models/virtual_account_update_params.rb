# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #
      #   @return [String]
      optional :ledger_account_id, String

      # @!attribute metadata
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @param counterparty_id [String]
      #   #
      #   # @param ledger_account_id [String] The ledger account that you'd like to link to the virtual account.
      #   #
      #   # @param metadata [Hash{Symbol => String}]
      #   #
      #   # @param name [String, nil]
      #   #
      #   def initialize(counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
