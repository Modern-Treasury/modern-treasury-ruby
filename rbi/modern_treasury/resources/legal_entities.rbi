# typed: strong

module ModernTreasury
  module Resources
    class LegalEntities
      # create legal_entity
      sig do
        params(
          legal_entity_type:
            ModernTreasury::LegalEntityCreateParams::LegalEntityType::OrSymbol,
          addresses:
            T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
          bank_settings:
            T.nilable(
              ModernTreasury::LegalEntityCreateParams::BankSettings::OrHash
            ),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          last_name: T.nilable(String),
          legal_entity_associations:
            T.nilable(
              T::Array[
                ModernTreasury::LegalEntityCreateParams::LegalEntityAssociation::OrHash
              ]
            ),
          legal_structure:
            T.nilable(
              ModernTreasury::LegalEntityCreateParams::LegalStructure::OrSymbol
            ),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers:
            T::Array[
              ModernTreasury::LegalEntityCreateParams::PhoneNumber::OrHash
            ],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating:
            T.nilable(
              ModernTreasury::LegalEntityCreateParams::RiskRating::OrSymbol
            ),
          suffix: T.nilable(String),
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityCreateParams::WealthAndEmploymentDetails::OrHash
            ),
          website: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LegalEntity)
      end
      def create(
        # The type of legal entity.
        legal_entity_type:,
        # A list of addresses for the entity.
        addresses: nil,
        bank_settings: nil,
        # The business's legal business name.
        business_name: nil,
        # The country of citizenship for an individual.
        citizenship_country: nil,
        compliance_details: nil,
        # A business's formation date (YYYY-MM-DD).
        date_formed: nil,
        # An individual's date of birth (YYYY-MM-DD).
        date_of_birth: nil,
        doing_business_as_names: nil,
        # The entity's primary email.
        email: nil,
        # An individual's first name.
        first_name: nil,
        # A list of identifications for the legal entity.
        identifications: nil,
        # A list of industry classifications for the legal entity.
        industry_classifications: nil,
        # An individual's last name.
        last_name: nil,
        # The legal entity associations and its child legal entities.
        legal_entity_associations: nil,
        # The business's legal structure.
        legal_structure: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # An individual's middle name.
        middle_name: nil,
        phone_numbers: nil,
        # Whether the individual is a politically exposed person.
        politically_exposed_person: nil,
        # An individual's preferred name.
        preferred_name: nil,
        # An individual's prefix.
        prefix: nil,
        # The risk rating of the legal entity. One of low, medium, high.
        risk_rating: nil,
        # An individual's suffix.
        suffix: nil,
        wealth_and_employment_details: nil,
        # The entity's primary website URL.
        website: nil,
        request_options: {}
      )
      end

      # Get details on a single legal entity.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LegalEntity)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Update a legal entity.
      sig do
        params(
          id: String,
          addresses:
            T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
          bank_settings:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::BankSettings::OrHash
            ),
          business_name: T.nilable(String),
          citizenship_country: T.nilable(String),
          compliance_details:
            T.nilable(ModernTreasury::LegalEntityComplianceDetail::OrHash),
          date_formed: T.nilable(Date),
          date_of_birth: T.nilable(Date),
          doing_business_as_names: T::Array[String],
          email: T.nilable(String),
          first_name: T.nilable(String),
          identifications:
            T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
          industry_classifications:
            T::Array[ModernTreasury::LegalEntityIndustryClassification::OrHash],
          last_name: T.nilable(String),
          legal_structure:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::LegalStructure::OrSymbol
            ),
          metadata: T::Hash[Symbol, String],
          middle_name: T.nilable(String),
          phone_numbers:
            T::Array[
              ModernTreasury::LegalEntityUpdateParams::PhoneNumber::OrHash
            ],
          politically_exposed_person: T.nilable(T::Boolean),
          preferred_name: T.nilable(String),
          prefix: T.nilable(String),
          risk_rating:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::RiskRating::OrSymbol
            ),
          suffix: T.nilable(String),
          wealth_and_employment_details:
            T.nilable(
              ModernTreasury::LegalEntityUpdateParams::WealthAndEmploymentDetails::OrHash
            ),
          website: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::LegalEntity)
      end
      def update(
        # id
        id,
        # A list of addresses for the entity.
        addresses: nil,
        bank_settings: nil,
        # The business's legal business name.
        business_name: nil,
        # The country of citizenship for an individual.
        citizenship_country: nil,
        compliance_details: nil,
        # A business's formation date (YYYY-MM-DD).
        date_formed: nil,
        # An individual's date of birth (YYYY-MM-DD).
        date_of_birth: nil,
        doing_business_as_names: nil,
        # The entity's primary email.
        email: nil,
        # An individual's first name.
        first_name: nil,
        # A list of identifications for the legal entity.
        identifications: nil,
        # A list of industry classifications for the legal entity.
        industry_classifications: nil,
        # An individual's last name.
        last_name: nil,
        # The business's legal structure.
        legal_structure: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # An individual's middle name.
        middle_name: nil,
        phone_numbers: nil,
        # Whether the individual is a politically exposed person.
        politically_exposed_person: nil,
        # An individual's preferred name.
        preferred_name: nil,
        # An individual's prefix.
        prefix: nil,
        # The risk rating of the legal entity. One of low, medium, high.
        risk_rating: nil,
        # An individual's suffix.
        suffix: nil,
        wealth_and_employment_details: nil,
        # The entity's primary website URL.
        website: nil,
        request_options: {}
      )
      end

      # Get a list of all legal entities.
      sig do
        params(
          after_cursor: T.nilable(String),
          legal_entity_type:
            ModernTreasury::LegalEntityListParams::LegalEntityType::OrSymbol,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          show_deleted: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::LegalEntity])
      end
      def list(
        after_cursor: nil,
        legal_entity_type: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        show_deleted: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
