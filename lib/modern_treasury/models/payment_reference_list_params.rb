# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::PaymentReferences#list
    class PaymentReferenceListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute reference_number
      #   The actual reference number assigned by the bank.
      #
      #   @return [String, nil]
      optional :reference_number, String

      # @!attribute referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the
      #   referenceable_type or will return an error.
      #
      #   @return [String, nil]
      optional :referenceable_id, String

      # @!attribute referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      #
      #   @return [Symbol, ModernTreasury::PaymentReferenceListParams::ReferenceableType, nil]
      optional :referenceable_type, enum: -> { ModernTreasury::PaymentReferenceListParams::ReferenceableType }

      # @!method initialize(after_cursor: nil, per_page: nil, reference_number: nil, referenceable_id: nil, referenceable_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::PaymentReferenceListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param per_page [Integer]
      #
      #   @param reference_number [String] The actual reference number assigned by the bank.
      #
      #   @param referenceable_id [String] The id of the referenceable to search for. Must be accompanied by the referencea
      #
      #   @param referenceable_type [Symbol, ModernTreasury::PaymentReferenceListParams::ReferenceableType] One of the referenceable types. This must be accompanied by the id of the refere
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # One of the referenceable types. This must be accompanied by the id of the
      # referenceable or will return an error.
      module ReferenceableType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
