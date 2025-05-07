# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccounts#create
    class VirtualAccount < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::AccountDetail>]
      required :account_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::AccountDetail] }

      # @!attribute counterparty_id
      #   The ID of a counterparty that the virtual account belongs to. Optional.
      #
      #   @return [String, nil]
      required :counterparty_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money enters the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      #
      #   @return [String, nil]
      required :credit_ledger_account_id, String, nil?: true

      # @!attribute debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      #
      #   @return [String, nil]
      required :debit_ledger_account_id, String, nil?: true

      # @!attribute description
      #   An optional free-form description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute internal_account_id
      #   The ID of the internal account that the virtual account is in.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute ledger_account_id
      #   If the virtual account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      #
      #   @return [String, nil]
      required :ledger_account_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the virtual account.
      #
      #   @return [String]
      required :name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute routing_details
      #   An array of routing detail objects. These will be the routing details of the
      #   internal account.
      #
      #   @return [Array<ModernTreasury::RoutingDetail>]
      required :routing_details, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::RoutingDetail] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, account_details:, counterparty_id:, created_at:, credit_ledger_account_id:, debit_ledger_account_id:, description:, discarded_at:, internal_account_id:, ledger_account_id:, live_mode:, metadata:, name:, object:, routing_details:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::VirtualAccount} for more details.
      #
      #   @param id [String]
      #
      #   @param account_details [Array<ModernTreasury::AccountDetail>] An array of account detail objects.
      #
      #   @param counterparty_id [String, nil] The ID of a counterparty that the virtual account belongs to. Optional.
      #
      #   @param created_at [Time]
      #
      #   @param credit_ledger_account_id [String, nil] The ID of a credit normal ledger account. When money enters the virtual account,
      #
      #   @param debit_ledger_account_id [String, nil] The ID of a debit normal ledger account. When money enters the virtual account,
      #
      #   @param description [String, nil] An optional free-form description for internal use.
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param internal_account_id [String] The ID of the internal account that the virtual account is in.
      #
      #   @param ledger_account_id [String, nil] If the virtual account links to a ledger account in Modern Treasury, the id of t
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String] The name of the virtual account.
      #
      #   @param object [String]
      #
      #   @param routing_details [Array<ModernTreasury::RoutingDetail>] An array of routing detail objects. These will be the routing details of the int
      #
      #   @param updated_at [Time]
    end
  end
end
