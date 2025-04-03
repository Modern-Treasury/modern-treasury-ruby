# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Connections#list
    class Connection < ModernTreasury::Internal::Type::BaseModel
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
      required :discarded_at, Time, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::BooleanModel

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
      required :vendor_customer_id, String, nil?: true

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
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param updated_at [Time]
      #   # @param vendor_customer_id [String, nil]
      #   # @param vendor_id [String]
      #   # @param vendor_name [String]
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

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
