# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    #
    # ```ruby
    # connection => {
    #   id: String,
    #   created_at: Time,
    #   discarded_at: Time,
    #   live_mode: ModernTreasury::BooleanModel,
    #   object: String,
    #   **_
    # }
    # ```
    class Connection < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_customer_id
      #   An identifier given to this connection by the bank.
      #
      #   @return [String, nil]
      required :vendor_customer_id, String

      # @!attribute vendor_id
      #   Unique identifier for the bank or vendor.
      #
      #   @return [String]
      required :vendor_id, String

      # @!attribute vendor_name
      #   A human-friendly name for the bank or vendor.
      #
      #   @return [String]
      required :vendor_name, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param vendor_customer_id [String, nil] An identifier given to this connection by the bank.
      #   #
      #   # @param vendor_id [String] Unique identifier for the bank or vendor.
      #   #
      #   # @param vendor_name [String] A human-friendly name for the bank or vendor.
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     discarded_at:,
      #     live_mode:,
      #     object:,
      #     updated_at:,
      #     vendor_customer_id:,
      #     vendor_id:,
      #     vendor_name:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
