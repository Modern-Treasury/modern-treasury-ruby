# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerableEvent < BaseModel
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
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # Create a new instance of LedgerableEvent from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, custom_data: nil, description: nil, ledger_event_handler_id: nil, live_mode: nil, metadata: nil, name: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param created_at [String]
      # @param custom_data [Object] Additionally data to be used by the Ledger Event Handler.
      # @param description [String] Description of the ledgerable event.
      # @param ledger_event_handler_id [String] Id of the ledger event handler that is used to create a ledger transaction.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] Name of the ledgerable event.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
