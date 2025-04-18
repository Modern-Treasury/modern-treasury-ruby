# typed: strong

module ModernTreasury
  module Models
    class LegalEntityIndustryClassification < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The industry classification codes for the legal entity.
      sig { returns(T::Array[String]) }
      attr_accessor :classification_codes

      # The classification system of the classification codes.
      sig { returns(ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::OrSymbol) }
      attr_accessor :classification_type

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          classification_codes: T::Array[String],
          classification_type: ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::OrSymbol,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        classification_codes:,
        classification_type:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        updated_at:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              classification_codes: T::Array[String],
              classification_type: ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::OrSymbol,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            }
          )
      end
      def to_hash; end

      # The classification system of the classification codes.
      module ClassificationType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANZSIC =
          T.let(
            :anzsic,
            ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        BICS =
          T.let(:bics, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        GICS =
          T.let(:gics, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        HSICS =
          T.let(:hsics, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        ICB =
          T.let(:icb, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        ISIC =
          T.let(:isic, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        MGECS =
          T.let(:mgecs, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        NACE =
          T.let(:nace, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        NAICS =
          T.let(:naics, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        RBICS =
          T.let(:rbics, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        SIC =
          T.let(:sic, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        SNI =
          T.let(:sni, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        TRBC =
          T.let(:trbc, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        UKSIC =
          T.let(:uksic, ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol)
        UNSPSC =
          T.let(
            :unspsc,
            ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )

        sig do
          override
            .returns(
              T::Array[ModernTreasury::Models::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol]
            )
        end
        def self.values; end
      end
    end
  end
end
