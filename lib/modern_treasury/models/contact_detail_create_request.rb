# frozen_string_literal: true

module ModernTreasury
  module Models
    class ContactDetailCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute contact_identifier
      #
      #   @return [String, nil]
      optional :contact_identifier, String

      # @!attribute contact_identifier_type
      #
      #   @return [Symbol, ModernTreasury::Models::ContactDetailCreateRequest::ContactIdentifierType, nil]
      optional :contact_identifier_type,
               enum: -> { ModernTreasury::ContactDetailCreateRequest::ContactIdentifierType }

      # @!method initialize(contact_identifier: nil, contact_identifier_type: nil)
      #   @param contact_identifier [String]
      #   @param contact_identifier_type [Symbol, ModernTreasury::Models::ContactDetailCreateRequest::ContactIdentifierType]

      # @see ModernTreasury::Models::ContactDetailCreateRequest#contact_identifier_type
      module ContactIdentifierType
        extend ModernTreasury::Internal::Type::Enum

        EMAIL = :email
        PHONE_NUMBER = :phone_number
        WEBSITE = :website

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
