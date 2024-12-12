# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] entity
      #   A string code representing the vendor (i.e. bank).
      #   @return [String]
      optional :entity, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #   @return [String]
      optional :vendor_customer_id, String
    end
  end
end
