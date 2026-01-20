# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntitiesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.legal_entities.create(legal_entity_type: :business)

    assert_pattern do
      response => ModernTreasury::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Address]),
        bank_settings: ModernTreasury::LegalEntityBankSettings | nil,
        business_description: String | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::LegalEntityComplianceDetail | nil,
        country_of_incorporation: String | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        doing_business_as_names: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        email: String | nil,
        expected_activity_volume: Integer | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]),
        intended_use: String | nil,
        last_name: String | nil,
        legal_entity_type: ModernTreasury::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        middle_name: String | nil,
        object: String,
        operating_jurisdictions: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        phone_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::Internal::Type::Boolean | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        primary_social_media_sites: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        risk_rating: ModernTreasury::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::LegalEntityWealthEmploymentDetail | nil,
        website: String | nil,
        legal_entity_associations: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociation]) | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.legal_entities.retrieve("id")

    assert_pattern do
      response => ModernTreasury::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Address]),
        bank_settings: ModernTreasury::LegalEntityBankSettings | nil,
        business_description: String | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::LegalEntityComplianceDetail | nil,
        country_of_incorporation: String | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        doing_business_as_names: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        email: String | nil,
        expected_activity_volume: Integer | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]),
        intended_use: String | nil,
        last_name: String | nil,
        legal_entity_type: ModernTreasury::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        middle_name: String | nil,
        object: String,
        operating_jurisdictions: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        phone_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::Internal::Type::Boolean | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        primary_social_media_sites: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        risk_rating: ModernTreasury::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::LegalEntityWealthEmploymentDetail | nil,
        website: String | nil,
        legal_entity_associations: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociation]) | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.legal_entities.update("id")

    assert_pattern do
      response => ModernTreasury::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Address]),
        bank_settings: ModernTreasury::LegalEntityBankSettings | nil,
        business_description: String | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::LegalEntityComplianceDetail | nil,
        country_of_incorporation: String | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        doing_business_as_names: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        email: String | nil,
        expected_activity_volume: Integer | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]),
        intended_use: String | nil,
        last_name: String | nil,
        legal_entity_type: ModernTreasury::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        middle_name: String | nil,
        object: String,
        operating_jurisdictions: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        phone_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::Internal::Type::Boolean | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        primary_social_media_sites: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        risk_rating: ModernTreasury::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::LegalEntityWealthEmploymentDetail | nil,
        website: String | nil,
        legal_entity_associations: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociation]) | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.legal_entities.list

    assert_pattern do
      response => ModernTreasury::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::LegalEntity
    end

    assert_pattern do
      row => {
        id: String,
        addresses: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Address]),
        bank_settings: ModernTreasury::LegalEntityBankSettings | nil,
        business_description: String | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::LegalEntityComplianceDetail | nil,
        country_of_incorporation: String | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        documents: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document]),
        doing_business_as_names: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        email: String | nil,
        expected_activity_volume: Integer | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityIndustryClassification]),
        intended_use: String | nil,
        last_name: String | nil,
        legal_entity_type: ModernTreasury::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::Internal::Type::Boolean,
        metadata: ^(ModernTreasury::Internal::Type::HashOf[String]),
        middle_name: String | nil,
        object: String,
        operating_jurisdictions: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        phone_numbers: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::Internal::Type::Boolean | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        primary_social_media_sites: ^(ModernTreasury::Internal::Type::ArrayOf[String]),
        risk_rating: ModernTreasury::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::LegalEntityWealthEmploymentDetail | nil,
        website: String | nil,
        legal_entity_associations: ^(ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::LegalEntityAssociation]) | nil
      }
    end
  end
end
