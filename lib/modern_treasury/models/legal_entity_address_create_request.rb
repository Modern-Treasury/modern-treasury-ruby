# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityAddressCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute country
      #   Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @return [String, nil]
      required :country, String, nil?: true

      # @!attribute line1
      #
      #   @return [String, nil]
      required :line1, String, nil?: true

      # @!attribute locality
      #   Locality or City.
      #
      #   @return [String, nil]
      required :locality, String, nil?: true

      # @!attribute postal_code
      #   The postal code of the address.
      #
      #   @return [String, nil]
      required :postal_code, String, nil?: true

      # @!attribute region
      #   Region or State.
      #
      #   @return [String, nil]
      required :region, String, nil?: true

      # @!attribute address_types
      #   The types of this address.
      #
      #   @return [Array<Symbol, ModernTreasury::Models::LegalEntityAddressCreateRequest::AddressType>, nil]
      optional :address_types,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::LegalEntityAddressCreateRequest::AddressType] }

      # @!attribute line2
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!method initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
      #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
      #
      #   @param line1 [String, nil]
      #
      #   @param locality [String, nil] Locality or City.
      #
      #   @param postal_code [String, nil] The postal code of the address.
      #
      #   @param region [String, nil] Region or State.
      #
      #   @param address_types [Array<Symbol, ModernTreasury::Models::LegalEntityAddressCreateRequest::AddressType>] The types of this address.
      #
      #   @param line2 [String, nil]

      module AddressType
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS = :business
        MAILING = :mailing
        OTHER = :other
        PO_BOX = :po_box
        RESIDENTIAL = :residential

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
