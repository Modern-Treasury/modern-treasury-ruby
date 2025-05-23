# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    #
    # @see ModernTreasury::Resources::LedgerableEvents#create
    class LedgerableEvent < ModernTreasury::Internal::Type::BaseModel
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
      required :custom_data, ModernTreasury::Internal::Type::Unknown, nil?: true

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
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String], nil?: true

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

      # @!method initialize(id:, created_at:, custom_data:, description:, ledger_event_handler_id:, live_mode:, metadata:, name:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LedgerableEvent} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param custom_data [Object, nil] Additionally data to be used by the Ledger Event Handler.
      #
      #   @param description [String, nil] Description of the ledgerable event.
      #
      #   @param ledger_event_handler_id [String] Id of the ledger event handler that is used to create a ledger transaction.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param name [String] Name of the ledgerable event.
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]
    end
  end
end
