# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerableEvent < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [DateTime]
      required :created_at, DateTime

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
      #   @return [DateTime]
      required :updated_at, DateTime
    end
  end
end
