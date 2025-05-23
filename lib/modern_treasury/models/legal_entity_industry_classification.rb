# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityIndustryClassification < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute classification_codes
      #   The industry classification codes for the legal entity.
      #
      #   @return [Array<String>]
      required :classification_codes, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute classification_type
      #   The classification system of the classification codes.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType]
      required :classification_type,
               enum: -> { ModernTreasury::LegalEntityIndustryClassification::ClassificationType }

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

      # @!method initialize(id:, classification_codes:, classification_type:, created_at:, discarded_at:, live_mode:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityIndustryClassification} for more details.
      #
      #   @param id [String]
      #
      #   @param classification_codes [Array<String>] The industry classification codes for the legal entity.
      #
      #   @param classification_type [Symbol, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType] The classification system of the classification codes.
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

      # The classification system of the classification codes.
      #
      # @see ModernTreasury::Models::LegalEntityIndustryClassification#classification_type
      module ClassificationType
        extend ModernTreasury::Internal::Type::Enum

        ANZSIC = :anzsic
        BICS = :bics
        GICS = :gics
        HSICS = :hsics
        ICB = :icb
        ISIC = :isic
        MGECS = :mgecs
        NACE = :nace
        NAICS = :naics
        RBICS = :rbics
        SIC = :sic
        SNI = :sni
        TRBC = :trbc
        UKSIC = :uksic
        UNSPSC = :unspsc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
