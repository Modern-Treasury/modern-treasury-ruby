# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccounts#update
    class VirtualAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute party_address
      #   The address of the owner of the virtual account. Omit to leave it unchanged;
      #   pass `null` to clear it, after which the internal account's party address is
      #   used.
      #
      #   @return [ModernTreasury::Models::AddressRequest, nil]
      optional :party_address, -> { ModernTreasury::AddressRequest }, nil?: true

      # @!method initialize(id:, counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, party_address: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::VirtualAccountUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param counterparty_id [String]
      #
      #   @param ledger_account_id [String] The ledger account that you'd like to link to the virtual account.
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param name [String, nil]
      #
      #   @param party_address [ModernTreasury::Models::AddressRequest, nil] The address of the owner of the virtual account. Omit to leave it unchanged; pas
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
