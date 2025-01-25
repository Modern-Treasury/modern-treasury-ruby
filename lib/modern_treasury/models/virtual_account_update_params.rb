# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ledger_account_id

      # @!attribute [r] metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param counterparty_id [String]
      #   # @param ledger_account_id [String]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
