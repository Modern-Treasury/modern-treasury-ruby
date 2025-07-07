# frozen_string_literal: true

module ModernTreasury
  module Models
    class ContactDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute contact_identifier
      #
      #   @return [String]
      required :contact_identifier, String

      # @!attribute contact_identifier_type
      #
      #   @return [Symbol, ModernTreasury::Models::ContactDetail::ContactIdentifierType]
      required :contact_identifier_type, enum: -> { ModernTreasury::ContactDetail::ContactIdentifierType }

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
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, contact_identifier:, contact_identifier_type:, created_at:, discarded_at:, live_mode:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ContactDetail} for more details.
      #
      #   @param id [String]
      #
      #   @param contact_identifier [String]
      #
      #   @param contact_identifier_type [Symbol, ModernTreasury::Models::ContactDetail::ContactIdentifierType]
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::ContactDetail#contact_identifier_type
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
