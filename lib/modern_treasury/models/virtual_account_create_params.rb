# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccounts#create
    class VirtualAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute internal_account_id
      #   The ID of the internal account that this virtual account is associated with.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute name
      #   The name of the virtual account.
      #
      #   @return [String]
      required :name, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::AccountDetailCreateRequest>, nil]
      optional :account_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetailCreateRequest] }

      # @!attribute counterparty_id
      #   The ID of the counterparty that the virtual account belongs to.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money leaves the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :credit_ledger_account_id, String

      # @!attribute debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :debit_ledger_account_id, String

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute external_id
      #   A user-defined identifier for the virtual account.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute ledger_account
      #   Specifies a ledger account object that will be created with the virtual account.
      #   The resulting ledger account is linked to the virtual account for auto-ledgering
      #   IPDs.
      #
      #   @return [ModernTreasury::Models::LedgerAccountCreateRequest, nil]
      optional :ledger_account, -> { ModernTreasury::LedgerAccountCreateRequest }

      # @!attribute ledger_account_id
      #   The ledger account that you'd like to link to the virtual account.
      #
      #   @return [String, nil]
      optional :ledger_account_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute party_address
      #   The address of the owner of the virtual account. When absent, the internal
      #   account's party address is used.
      #
      #   @return [ModernTreasury::Models::AddressRequest, nil]
      optional :party_address, -> { ModernTreasury::AddressRequest }

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetailCreateRequest>, nil]
      optional :routing_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetailCreateRequest] }

      # @!attribute virtual_account_setting_id
      #   The ID of the virtual account setting used to allocate this virtual account.
      #
      #   @return [String, nil]
      optional :virtual_account_setting_id, String

      # @!method initialize(internal_account_id:, name:, account_details: nil, counterparty_id: nil, credit_ledger_account_id: nil, debit_ledger_account_id: nil, description: nil, external_id: nil, ledger_account: nil, ledger_account_id: nil, metadata: nil, party_address: nil, routing_details: nil, virtual_account_setting_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::VirtualAccountCreateParams} for more details.
      #
      #   @param internal_account_id [String] The ID of the internal account that this virtual account is associated with.
      #
      #   @param name [String] The name of the virtual account.
      #
      #   @param account_details [Array<ModernTreasury::Models::AccountDetailCreateRequest>] An array of account detail objects.
      #
      #   @param counterparty_id [String] The ID of the counterparty that the virtual account belongs to.
      #
      #   @param credit_ledger_account_id [String] The ID of a credit normal ledger account. When money leaves the virtual account,
      #
      #   @param debit_ledger_account_id [String] The ID of a debit normal ledger account. When money enters the virtual account,
      #
      #   @param description [String] An optional description for internal use.
      #
      #   @param external_id [String, nil] A user-defined identifier for the virtual account.
      #
      #   @param ledger_account [ModernTreasury::Models::LedgerAccountCreateRequest] Specifies a ledger account object that will be created with the virtual account.
      #
      #   @param ledger_account_id [String] The ledger account that you'd like to link to the virtual account.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param party_address [ModernTreasury::Models::AddressRequest] The address of the owner of the virtual account. When absent, the internal accou
      #
      #   @param routing_details [Array<ModernTreasury::Models::RoutingDetailCreateRequest>] An array of routing detail objects.
      #
      #   @param virtual_account_setting_id [String] The ID of the virtual account setting used to allocate this virtual account.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
