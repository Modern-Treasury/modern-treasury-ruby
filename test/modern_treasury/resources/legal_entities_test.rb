# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::LegalEntitiesTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response = @modern_treasury.legal_entities.create(legal_entity_type: :business)

    assert_pattern do
      response => ModernTreasury::Models::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Address]),
        bank_settings: ModernTreasury::Models::BankSettings | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::Models::LegalEntityComplianceDetail | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        doing_business_as_names: ^(ModernTreasury::ArrayOf[String]),
        email: String | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityIndustryClassification]),
        last_name: String | nil,
        legal_entity_associations: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityAssociation]) | nil,
        legal_entity_type: ModernTreasury::Models::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::Models::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        middle_name: String | nil,
        object: String,
        phone_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::BooleanModel | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        risk_rating: ModernTreasury::Models::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::Models::WealthAndEmploymentDetails | nil,
        website: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.legal_entities.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Address]),
        bank_settings: ModernTreasury::Models::BankSettings | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::Models::LegalEntityComplianceDetail | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        doing_business_as_names: ^(ModernTreasury::ArrayOf[String]),
        email: String | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityIndustryClassification]),
        last_name: String | nil,
        legal_entity_associations: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityAssociation]) | nil,
        legal_entity_type: ModernTreasury::Models::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::Models::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        middle_name: String | nil,
        object: String,
        phone_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::BooleanModel | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        risk_rating: ModernTreasury::Models::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::Models::WealthAndEmploymentDetails | nil,
        website: String | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.legal_entities.update("id")

    assert_pattern do
      response => ModernTreasury::Models::LegalEntity
    end

    assert_pattern do
      response => {
        id: String,
        addresses: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Address]),
        bank_settings: ModernTreasury::Models::BankSettings | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::Models::LegalEntityComplianceDetail | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        doing_business_as_names: ^(ModernTreasury::ArrayOf[String]),
        email: String | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityIndustryClassification]),
        last_name: String | nil,
        legal_entity_associations: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityAssociation]) | nil,
        legal_entity_type: ModernTreasury::Models::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::Models::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        middle_name: String | nil,
        object: String,
        phone_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::BooleanModel | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        risk_rating: ModernTreasury::Models::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::Models::WealthAndEmploymentDetails | nil,
        website: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.legal_entities.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::LegalEntity
    end

    assert_pattern do
      row => {
        id: String,
        addresses: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Address]),
        bank_settings: ModernTreasury::Models::BankSettings | nil,
        business_name: String | nil,
        citizenship_country: String | nil,
        compliance_details: ModernTreasury::Models::LegalEntityComplianceDetail | nil,
        created_at: Time,
        date_formed: Date | nil,
        date_of_birth: Date | nil,
        discarded_at: Time | nil,
        doing_business_as_names: ^(ModernTreasury::ArrayOf[String]),
        email: String | nil,
        first_name: String | nil,
        identifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::Identification]),
        industry_classifications: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityIndustryClassification]),
        last_name: String | nil,
        legal_entity_associations: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntityAssociation]) | nil,
        legal_entity_type: ModernTreasury::Models::LegalEntity::LegalEntityType,
        legal_structure: ModernTreasury::Models::LegalEntity::LegalStructure | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        middle_name: String | nil,
        object: String,
        phone_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::LegalEntity::PhoneNumber]),
        politically_exposed_person: ModernTreasury::BooleanModel | nil,
        preferred_name: String | nil,
        prefix: String | nil,
        risk_rating: ModernTreasury::Models::LegalEntity::RiskRating | nil,
        suffix: String | nil,
        updated_at: Time,
        wealth_and_employment_details: ModernTreasury::Models::WealthAndEmploymentDetails | nil,
        website: String | nil
      }
    end
  end
end
