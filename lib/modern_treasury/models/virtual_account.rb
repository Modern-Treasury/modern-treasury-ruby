# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccount < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::AccountDetail }]

      # @!attribute counterparty_id
      #   The ID of a counterparty that the virtual account belongs to. Optional.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money enters the virtual account, this ledger account will be credited. Must be accompanied by a debit_ledger_account_id if present.
      #
      #   @return [String]
      required :credit_ledger_account_id, String

      # @!attribute debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account, this ledger account will be debited. Must be accompanied by a credit_ledger_account_id if present.
      #
      #   @return [String]
      required :debit_ledger_account_id, String

      # @!attribute description
      #   An optional free-form description for internal use.
      #
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute internal_account_id
      #   The ID of the internal account that the virtual account is in.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute ledger_account_id
      #   If the virtual account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      required :metadata, Hash

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
      #   An array of routing detail objects. These will be the routing details of the internal account.
      #
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf[-> { ModernTreasury::Models::RoutingDetail }]

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param account_details [Array<ModernTreasury::Models::AccountDetail>] An array of account detail objects.
      #   #
      #   # @param counterparty_id [String] The ID of a counterparty that the virtual account belongs to. Optional.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param credit_ledger_account_id [String] The ID of a credit normal ledger account. When money enters the virtual account,
      #   #   this ledger account will be credited. Must be accompanied by a
      #   #   debit_ledger_account_id if present.
      #   #
      #   # @param debit_ledger_account_id [String] The ID of a debit normal ledger account. When money enters the virtual account,
      #   #   this ledger account will be debited. Must be accompanied by a
      #   #   credit_ledger_account_id if present.
      #   #
      #   # @param description [String] An optional free-form description for internal use.
      #   #
      #   # @param discarded_at [String]
      #   #
      #   # @param internal_account_id [String] The ID of the internal account that the virtual account is in.
      #   #
      #   # @param ledger_account_id [String] If the virtual account links to a ledger account in Modern Treasury, the id of
      #   #   the ledger account will be populated here.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param name [String] The name of the virtual account.
      #   #
      #   # @param object [String]
      #   #
      #   # @param routing_details [Array<ModernTreasury::Models::RoutingDetail>] An array of routing detail objects. These will be the routing details of the
      #   #   internal account.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     account_details:,
      #     counterparty_id:,
      #     created_at:,
      #     credit_ledger_account_id:,
      #     debit_ledger_account_id:,
      #     description:,
      #     discarded_at:,
      #     internal_account_id:,
      #     ledger_account_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     routing_details:,
      #     updated_at:
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
