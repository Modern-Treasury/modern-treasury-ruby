# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # ledger => {
    #   id: String,
    #   created_at: Time,
    #   description: String,
    #   discarded_at: Time,
    #   live_mode: ModernTreasury::BooleanModel,
    #   **_
    # }
    # ```
    class Ledger < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   An optional free-form description for internal use.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

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
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute name
      #   The name of the ledger.
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
      #   # @param description [String, nil]
      #   # @param discarded_at [Time, nil]
      #   # @param live_mode [Boolean]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param object [String]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(id:, created_at:, description:, discarded_at:, live_mode:, metadata:, name:, object:, updated_at:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
