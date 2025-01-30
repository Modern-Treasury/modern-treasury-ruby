# typed: strong

module ModernTreasury
  module Resources
    class LegalEntities
      sig do
        params(
          params: T.any(ModernTreasury::Models::LegalEntityCreateParams, T::Hash[Symbol, T.anything]),
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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LegalEntity)
      end
      def create(
        params,
        legal_entity_type:,
        addresses:,
        bank_settings:,
        business_name:,
        citizenship_country:,
        date_formed:,
        date_of_birth:,
        doing_business_as_names:,
        email:,
        first_name:,
        identifications:,
        last_name:,
        legal_entity_associations:,
        legal_structure:,
        metadata:,
        middle_name:,
        phone_numbers:,
        politically_exposed_person:,
        preferred_name:,
        prefix:,
        risk_rating:,
        suffix:,
        wealth_and_employment_details:,
        website:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LegalEntity)
      end
      def retrieve(id, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::LegalEntity)
      end
      def update(
        id,
        addresses:,
        bank_settings:,
        business_name:,
        citizenship_country:,
        date_formed:,
        date_of_birth:,
        doing_business_as_names:,
        email:,
        first_name:,
        identifications:,
        last_name:,
        legal_structure:,
        metadata:,
        middle_name:,
        phone_numbers:,
        politically_exposed_person:,
        preferred_name:,
        prefix:,
        risk_rating:,
        suffix:,
        wealth_and_employment_details:,
        website:,
        request_options: {}
      ); end

      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type: Symbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::LegalEntity])
      end
      def list(after_cursor:, legal_entity_type:, metadata:, per_page:, show_deleted:, request_options: {})
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
