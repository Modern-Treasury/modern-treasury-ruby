# frozen_string_literal: true

module ModernTreasury
  module Models
    class Connection < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] vendor_customer_id
      #   An identifier given to this connection by the bank.
      #   @return [String]
      required :vendor_customer_id, String

      # @!attribute [rw] vendor_id
      #   Unique identifier for the bank or vendor.
      #   @return [String]
      required :vendor_id, String

      # @!attribute [rw] vendor_name
      #   A human-friendly name for the bank or vendor.
      #   @return [String]
      required :vendor_name, String

      # @!parse
      #   # Create a new instance of Connection from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   #   @option data [String] :vendor_customer_id An identifier given to this connection by the bank.
      #   #   @option data [String] :vendor_id Unique identifier for the bank or vendor.
      #   #   @option data [String] :vendor_name A human-friendly name for the bank or vendor.
      #   def initialize(data = {}) = super
    end
  end
end
