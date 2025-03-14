# typed: strong

module ModernTreasury
  module Resources
    class LegalEntities
      # create legal_entity
      sig do
        params(
          legal_entity_type: Symbol,
          addresses: T::Array[ModernTreasury::Models::LegalEntityCreateParams::Address],
          bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications: T::Array[ModernTreasury::Models::LegalEntityCreateParams::Identification],
          last_name: T.nilable(String),
          legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::LegalEntityCreateParams::LegalEntityAssociation]),
          legal_structure: T.nilable(Symbol),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers: T::Array[ModernTreasury::Models::LegalEntityCreateParams::PhoneNumber],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating: T.nilable(Symbol),
          suffix: T.nilable(String),
          wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
          website: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LegalEntity)
      end
      def create(
        legal_entity_type:,
        addresses: nil,
        bank_settings: nil,
        business_name: nil,
        citizenship_country: nil,
        date_formed: nil,
        date_of_birth: nil,
        doing_business_as_names: nil,
        email: nil,
        first_name: nil,
        identifications: nil,
        last_name: nil,
        legal_entity_associations: nil,
        legal_structure: nil,
        metadata: nil,
        middle_name: nil,
        phone_numbers: nil,
        politically_exposed_person: nil,
        preferred_name: nil,
        prefix: nil,
        risk_rating: nil,
        suffix: nil,
        wealth_and_employment_details: nil,
        website: nil,
        request_options: {}
      )
      end

      # Get details on a single legal entity.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LegalEntity)
      end
      def retrieve(id, request_options: {})
      end

      # Update a legal entity.
      sig do
        params(
          id: String,
          addresses: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Address],
          bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::Identification],
          last_name: T.nilable(String),
          legal_structure: T.nilable(Symbol),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers: T::Array[ModernTreasury::Models::LegalEntityUpdateParams::PhoneNumber],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating: T.nilable(Symbol),
          suffix: T.nilable(String),
          wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
          website: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::LegalEntity)
      end
      def update(
        id,
        addresses: nil,
        bank_settings: nil,
        business_name: nil,
        citizenship_country: nil,
        date_formed: nil,
        date_of_birth: nil,
        doing_business_as_names: nil,
        email: nil,
        first_name: nil,
        identifications: nil,
        last_name: nil,
        legal_structure: nil,
        metadata: nil,
        middle_name: nil,
        phone_numbers: nil,
        politically_exposed_person: nil,
        preferred_name: nil,
        prefix: nil,
        risk_rating: nil,
        suffix: nil,
        wealth_and_employment_details: nil,
        website: nil,
        request_options: {}
      )
      end

      # Get a list of all legal entities.
      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::LegalEntity])
      end
      def list(
        after_cursor: nil,
        legal_entity_type: nil,
        metadata: nil,
        per_page: nil,
        show_deleted: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
