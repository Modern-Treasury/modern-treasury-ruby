# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    #
    class LedgerableEvent < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute custom_data
      #   Additionally data to be used by the Ledger Event Handler.
      #
      #   @return [Object, nil]
      required :custom_data, ModernTreasury::Unknown, nil?: true

      # @!attribute description
      #   Description of the ledgerable event.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute ledger_event_handler_id
      #   Id of the ledger event handler that is used to create a ledger transaction.
      #
      #   @return [String]
      required :ledger_event_handler_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      required :metadata, ModernTreasury::HashOf[String], nil?: true

      # @!attribute name
      #   Name of the ledgerable event.
      #
      #   @return [String]
      required :name, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param custom_data [Object, nil]
      #   # @param description [String, nil]
      #   # @param ledger_event_handler_id [String]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}, nil]
      #   # @param name [String]
      #   # @param object [String]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     custom_data:,
      #     description:,
      #     ledger_event_handler_id:,
      #     live_mode:,
      #     metadata:,
      #     name:,
      #     object:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
