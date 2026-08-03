# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityWealthEmploymentDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute annual_income
      #   The annual income of the individual in USD.
      #
      #   @return [Integer, nil]
      required :annual_income, Integer, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute employer_country
      #   The country in which the employer is located.
      #
      #   @return [String, nil]
      required :employer_country, String, nil?: true

      # @!attribute employer_name
      #   The name of the employer.
      #
      #   @return [String, nil]
      required :employer_name, String, nil?: true

      # @!attribute employer_state
      #   The state in which the employer is located.
      #
      #   @return [String, nil]
      required :employer_state, String, nil?: true

      # @!attribute employment_status
      #   The employment status of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::EmploymentStatus, nil]
      required :employment_status,
               enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus },
               nil?: true

      # @!attribute income_country
      #   The country in which the individual's income is earned.
      #
      #   @return [String, nil]
      required :income_country, String, nil?: true

      # @!attribute income_source
      #   The source of the individual's income.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::IncomeSource, nil]
      required :income_source,
               enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource },
               nil?: true

      # @!attribute income_state
      #   The state in which the individual's income is earned.
      #
      #   @return [String, nil]
      required :income_state, String, nil?: true

      # @!attribute industry
      #   The industry of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::Industry, nil]
      required :industry, enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::Industry }, nil?: true

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

      # @!attribute occupation
      #   The occupation of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::Occupation, nil]
      required :occupation,
               enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation },
               nil?: true

      # @!attribute source_of_funds
      #   The source of the individual's funds.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::SourceOfFunds, nil]
      required :source_of_funds,
               enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds },
               nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_source
      #   The source of the individual's wealth.
      #
      #   @return [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::WealthSource, nil]
      required :wealth_source,
               enum: -> { ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource },
               nil?: true

      # @!method initialize(id:, annual_income:, created_at:, discarded_at:, employer_country:, employer_name:, employer_state:, employment_status:, income_country:, income_source:, income_state:, industry:, live_mode:, object:, occupation:, source_of_funds:, updated_at:, wealth_source:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityWealthEmploymentDetail} for more details.
      #
      #   @param id [String]
      #
      #   @param annual_income [Integer, nil] The annual income of the individual in USD.
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param employer_country [String, nil] The country in which the employer is located.
      #
      #   @param employer_name [String, nil] The name of the employer.
      #
      #   @param employer_state [String, nil] The state in which the employer is located.
      #
      #   @param employment_status [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::EmploymentStatus, nil] The employment status of the individual.
      #
      #   @param income_country [String, nil] The country in which the individual's income is earned.
      #
      #   @param income_source [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::IncomeSource, nil] The source of the individual's income.
      #
      #   @param income_state [String, nil] The state in which the individual's income is earned.
      #
      #   @param industry [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::Industry, nil] The industry of the individual.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param occupation [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::Occupation, nil] The occupation of the individual.
      #
      #   @param source_of_funds [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::SourceOfFunds, nil] The source of the individual's funds.
      #
      #   @param updated_at [Time]
      #
      #   @param wealth_source [Symbol, ModernTreasury::Models::LegalEntityWealthEmploymentDetail::WealthSource, nil] The source of the individual's wealth.

      # The employment status of the individual.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#employment_status
      module EmploymentStatus
        extend ModernTreasury::Internal::Type::Enum

        EMPLOYED = :employed
        RETIRED = :retired
        SELF_EMPLOYED = :self_employed
        STUDENT = :student
        UNEMPLOYED = :unemployed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The source of the individual's income.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#income_source
      module IncomeSource
        extend ModernTreasury::Internal::Type::Enum

        FAMILY_SUPPORT = :family_support
        GOVERNMENT_BENEFITS = :government_benefits
        INHERITANCE = :inheritance
        INVESTMENTS = :investments
        RENTAL_INCOME = :rental_income
        RETIREMENT = :retirement
        SALARY = :salary
        SELF_EMPLOYED = :self_employed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The industry of the individual.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#industry
      module Industry
        extend ModernTreasury::Internal::Type::Enum

        ACCOUNTING = :accounting
        AGRICULTURE = :agriculture
        AUTOMOTIVE = :automotive
        CHEMICAL_MANUFACTURING = :chemical_manufacturing
        CONSTRUCTION = :construction
        EDUCATIONAL_MEDICAL = :educational_medical
        FOOD_SERVICE = :food_service
        FINANCE = :finance
        GASOLINE = :gasoline
        HEALTH_STORES = :health_stores
        LAUNDRY = :laundry
        MAINTENANCE = :maintenance
        MANUFACTURING = :manufacturing
        MERCHANT_WHOLESALE = :merchant_wholesale
        MINING = :mining
        PERFORMING_ARTS = :performing_arts
        PROFESSIONAL_NON_LEGAL = :professional_non_legal
        PUBLIC_ADMINISTRATION = :public_administration
        PUBLISHING = :publishing
        REAL_ESTATE = :real_estate
        RECREATION_GAMBLING = :recreation_gambling
        RELIGIOUS_CHARITY = :religious_charity
        RENTAL_SERVICES = :rental_services
        RETAIL_CLOTHING = :retail_clothing
        RETAIL_ELECTRONICS = :retail_electronics
        RETAIL_FOOD = :retail_food
        RETAIL_FURNISHING = :retail_furnishing
        RETAIL_HOME = :retail_home
        RETAIL_NON_STORE = :retail_non_store
        RETAIL_SPORTING = :retail_sporting
        TRANSPORTATION = :transportation
        TRAVEL = :travel
        UTILITIES = :utilities

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The occupation of the individual.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#occupation
      module Occupation
        extend ModernTreasury::Internal::Type::Enum

        CONSULTING = :consulting
        EXECUTIVE = :executive
        FINANCE_ACCOUNTING = :finance_accounting
        FOOD_SERVICES = :food_services
        GOVERNMENT = :government
        HEALTHCARE = :healthcare
        LEGAL_SERVICES = :legal_services
        MANUFACTURING = :manufacturing
        OTHER = :other
        SALES = :sales
        SCIENCE_ENGINEERING = :science_engineering
        TECHNOLOGY = :technology

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The source of the individual's funds.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#source_of_funds
      module SourceOfFunds
        extend ModernTreasury::Internal::Type::Enum

        ALIMONY = :alimony
        ANNUITY = :annuity
        BUSINESS_OWNER = :business_owner
        BUSINESS_REVENUE = :business_revenue
        DEBT_FINANCING = :debt_financing
        GENERAL_EMPLOYEE = :general_employee
        GOVERNMENT_BENEFITS = :government_benefits
        HOMEMAKER = :homemaker
        INHERITANCE_GIFT = :inheritance_gift
        INTERCOMPANY_LOAN = :intercompany_loan
        INVESTMENT = :investment
        INVESTOR_FUNDING = :investor_funding
        LEGAL_SETTLEMENT = :legal_settlement
        LOTTERY = :lottery
        REAL_ESTATE = :real_estate
        RETAINED_EARNINGS_OR_SAVINGS = :retained_earnings_or_savings
        RETIRED = :retired
        RETIREMENT = :retirement
        SALARY = :salary
        SALE_OF_BUSINESS_ASSETS = :sale_of_business_assets
        SALE_OF_REAL_ESTATE = :sale_of_real_estate
        SELF_EMPLOYED = :self_employed
        SENIOR_EXECUTIVE = :senior_executive
        TRUST_INCOME = :trust_income

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The source of the individual's wealth.
      #
      # @see ModernTreasury::Models::LegalEntityWealthEmploymentDetail#wealth_source
      module WealthSource
        extend ModernTreasury::Internal::Type::Enum

        BUSINESS_SALE = :business_sale
        FAMILY_SUPPORT = :family_support
        GOVERNMENT_BENEFITS = :government_benefits
        INHERITANCE = :inheritance
        INVESTMENTS = :investments
        OTHER = :other
        RENTAL_INCOME = :rental_income
        RETIREMENT = :retirement
        SALARY = :salary
        SELF_EMPLOYED = :self_employed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
