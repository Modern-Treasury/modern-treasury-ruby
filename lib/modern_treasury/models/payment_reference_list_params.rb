# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute reference_number
      #   The actual reference number assigned by the bank.
      #   @return [String]
      optional :reference_number, String

      # @!attribute referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the referenceable_type or will return an error.
      #   @return [String]
      optional :referenceable_id, String

      # @!attribute referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the referenceable or will return an error.
      #   @return [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType]
      optional :referenceable_type,
               enum: -> { ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType }

      # One of the referenceable types. This must be accompanied by the id of the referenceable or will return an error.
      class ReferenceableType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal
      end
    end
  end
end
