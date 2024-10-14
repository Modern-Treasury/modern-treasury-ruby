# frozen_string_literal: true

module ModernTreasury
  module Models
    class Ledger < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   An optional free-form description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] name_
      #   The name of the ledger.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # Create a new instance of Ledger from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, description: nil, discarded_at: nil, live_mode: nil, metadata: nil, name: nil, object: nil, updated_at: nil)
      # @param id [String]
      # @param created_at [String]
      # @param description [String] An optional free-form description for internal use.
      # @param discarded_at [String]
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param name [String] The name of the ledger.
      # @param object [String]
      # @param updated_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
