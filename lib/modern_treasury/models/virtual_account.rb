# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccount < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_details
      #   An array of account detail objects.
      #   @return [Array<ModernTreasury::Models::AccountDetail>]
      required :account_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::AccountDetail })

      # @!attribute [rw] counterparty_id
      #   The ID of a counterparty that the virtual account belongs to. Optional.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money enters the virtual account, this ledger account will be credited. Must be accompanied by a debit_ledger_account_id if present.
      #   @return [String]
      required :credit_ledger_account_id, String

      # @!attribute [rw] debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account, this ledger account will be debited. Must be accompanied by a credit_ledger_account_id if present.
      #   @return [String]
      required :debit_ledger_account_id, String

      # @!attribute [rw] description
      #   An optional free-form description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] internal_account_id
      #   The ID of the internal account that the virtual account is in.
      #   @return [String]
      required :internal_account_id, String

      # @!attribute [rw] ledger_account_id
      #   If the virtual account links to a ledger account in Modern Treasury, the id of the ledger account will be populated here.
      #   @return [String]
      required :ledger_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   The name of the virtual account.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] routing_details
      #   An array of routing detail objects. These will be the routing details of the internal account.
      #   @return [Array<ModernTreasury::Models::RoutingDetail>]
      required :routing_details, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::RoutingDetail })

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # Create a new instance of VirtualAccount from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_details: nil, counterparty_id: nil, created_at: nil, credit_ledger_account_id: nil, debit_ledger_account_id: nil, description: nil, discarded_at: nil, internal_account_id: nil, ledger_account_id: nil, live_mode: nil, metadata: nil, name: nil, object: nil, routing_details: nil, updated_at: nil)
      # @param id [String]
      # @param account_details [Array<Object>] An array of account detail objects.
      # @param counterparty_id [String] The ID of a counterparty that the virtual account belongs to. Optional.
      # @param created_at [String]
      # @param credit_ledger_account_id [String] The ID of a credit normal ledger account. When money enters the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      # @param debit_ledger_account_id [String] The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      # @param description [String] An optional free-form description for internal use.
      # @param discarded_at [String]
      # @param internal_account_id [String] The ID of the internal account that the virtual account is in.
      # @param ledger_account_id [String] If the virtual account links to a ledger account in Modern Treasury, the id of
      #   the ledger account will be populated here.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] The name of the virtual account.
      # @param object [String]
      # @param routing_details [Array<Object>] An array of routing detail objects. These will be the routing details of the
      #   internal account.
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
