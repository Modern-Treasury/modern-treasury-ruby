# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] entity
      #   A string code representing the vendor (i.e. bank).
      #
      #   @return [String, nil]
      optional :entity, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #
      #   @return [String, nil]
      optional :vendor_customer_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :vendor_customer_id

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param entity [String] A string code representing the vendor (i.e. bank).
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param vendor_customer_id [String] An identifier assigned by the vendor to your organization.
      #   #
      #   def initialize(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
