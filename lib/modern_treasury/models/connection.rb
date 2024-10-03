# frozen_string_literal: true

module ModernTreasury
  module Models
    class Connection < BaseModel
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
    end
  end
end
