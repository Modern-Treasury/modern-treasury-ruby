# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute entity
      #   A string code representing the vendor (i.e. bank).
      #
      #   @return [String]
      optional :entity, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #
      #   @return [String]
      optional :vendor_customer_id, String

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param entity [String, nil] A string code representing the vendor (i.e. bank).
      #   #
      #   # @param per_page [Integer, nil]
      #   #
      #   # @param vendor_customer_id [String, nil] An identifier assigned by the vendor to your organization.
      #   #
      #   def initialize(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
