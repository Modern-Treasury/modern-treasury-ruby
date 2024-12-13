# frozen_string_literal: true

module ModernTreasury
  module Models
    class Ledger < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional free-form description for internal use.
      #   @return [String]
      required :description, String

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute name
      #   The name of the ledger.
      #   @return [String]
      required :name, String

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # Create a new instance of Ledger from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :description An optional free-form description for internal use.
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   #     strings.
      #   #   @option data [String] :name The name of the ledger.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
