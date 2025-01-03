# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute reference_number
      #   The actual reference number assigned by the bank.
      #
      #   @return [String]
      optional :reference_number, String

      # @!attribute referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the referenceable_type or will return an error.
      #
      #   @return [String]
      optional :referenceable_id, String

      # @!attribute referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the referenceable or will return an error.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType]
      optional :referenceable_type,
               enum: -> { ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType }

      # @!parse
      #   # @param after_cursor [String, nil]
      #   #
      #   # @param per_page [Integer]
      #   #
      #   # @param reference_number [String] The actual reference number assigned by the bank.
      #   #
      #   # @param referenceable_id [String] The id of the referenceable to search for. Must be accompanied by the
      #   #   referenceable_type or will return an error.
      #   #
      #   # @param referenceable_type [String] One of the referenceable types. This must be accompanied by the id of the
      #   #   referenceable or will return an error.
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     per_page: nil,
      #     reference_number: nil,
      #     referenceable_id: nil,
      #     referenceable_type: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of the referenceable types. This must be accompanied by the id of the referenceable or will return an error.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :payment_order
      #   # ...
      # in :return
      #   # ...
      # in :reversal
      #   # ...
      # end
      # ```
      class ReferenceableType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        finalize!
      end
    end
  end
end
