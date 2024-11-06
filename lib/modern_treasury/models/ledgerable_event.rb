# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerableEvent < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] custom_data
      #   Additionally data to be used by the Ledger Event Handler.
      #   @return [Object]
      required :custom_data, ModernTreasury::Unknown

      # @!attribute [rw] description
      #   Description of the ledgerable event.
      #   @return [String]
      required :description, String

      # @!attribute [rw] ledger_event_handler_id
      #   Id of the ledger event handler that is used to create a ledger transaction.
      #   @return [String]
      required :ledger_event_handler_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   Name of the ledgerable event.
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # Create a new instance of LedgerableEvent from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [Object] :custom_data Additionally data to be used by the Ledger Event Handler.
      #   #   @option data [String] :description Description of the ledgerable event.
      #   #   @option data [String] :ledger_event_handler_id Id of the ledger event handler that is used to create a ledger transaction.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name Name of the ledgerable event.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
