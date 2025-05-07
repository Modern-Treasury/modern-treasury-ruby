# typed: strong

module ModernTreasury
  module Models
    class LegalEntityIndustryClassification < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The industry classification codes for the legal entity.
      sig { returns(T::Array[String]) }
      attr_accessor :classification_codes

      # The classification system of the classification codes.
      sig do
        returns(
          ModernTreasury::LegalEntityIndustryClassification::ClassificationType::OrSymbol
        )
      end
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
          classification_type:
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::OrSymbol,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The industry classification codes for the legal entity.
        classification_codes:,
        # The classification system of the classification codes.
        classification_type:,
        created_at:,
        discarded_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            classification_codes: T::Array[String],
            classification_type:
              ModernTreasury::LegalEntityIndustryClassification::ClassificationType::OrSymbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The classification system of the classification codes.
      module ClassificationType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityIndustryClassification::ClassificationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANZSIC =
          T.let(
            :anzsic,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        BICS =
          T.let(
            :bics,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        GICS =
          T.let(
            :gics,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        HSICS =
          T.let(
            :hsics,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        ICB =
          T.let(
            :icb,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        ISIC =
          T.let(
            :isic,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        MGECS =
          T.let(
            :mgecs,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        NACE =
          T.let(
            :nace,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        NAICS =
          T.let(
            :naics,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        RBICS =
          T.let(
            :rbics,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        SNI =
          T.let(
            :sni,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        TRBC =
          T.let(
            :trbc,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        UKSIC =
          T.let(
            :uksic,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )
        UNSPSC =
          T.let(
            :unspsc,
            ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityIndustryClassification::ClassificationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
