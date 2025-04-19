# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#update
    class InternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute counterparty_id
      #   The Counterparty associated to this account.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute ledger_account_id
      #   The Ledger Account associated to this account.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   The nickname for the internal account.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute parent_account_id
      #   The parent internal account for this account.
      #
      #   @return [String, nil]
      optional :parent_account_id, String

      # @!method initialize(counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, parent_account_id: nil, request_options: {})
      #   @param counterparty_id [String]
      #   @param ledger_account_id [String]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param name [String]
      #   @param parent_account_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
