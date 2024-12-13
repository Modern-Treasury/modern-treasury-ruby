# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute entity
      #   A string code representing the vendor (i.e. bank).
      #   @return [String]
      optional :entity, String

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #   @return [String]
      optional :vendor_customer_id, String
    end
  end
end
