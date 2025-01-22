# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentReferenceListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] reference_number
      #   The actual reference number assigned by the bank.
      #
      #   @return [String, nil]
      optional :reference_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :reference_number

      # @!attribute [r] referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the
      #     referenceable_type or will return an error.
      #
      #   @return [String, nil]
      optional :referenceable_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :referenceable_id

      # @!attribute [r] referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the
      #     referenceable or will return an error.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType, nil]
      optional :referenceable_type,
               enum: -> { ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType]
      #   attr_writer :referenceable_type

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer]
      #   # @param reference_number [String]
      #   # @param referenceable_id [String]
      #   # @param referenceable_type [String]
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

      # One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      #
      # @example
      # ```ruby
      # case referenceable_type
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
