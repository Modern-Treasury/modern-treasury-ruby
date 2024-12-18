# frozen_string_literal: true

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute annual_income
      #   The annual income of the individual.
      #   @return [Integer]
      required :annual_income, Integer

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute employer_country
      #   The country in which the employer is located.
      #   @return [String]
      required :employer_country, String

      # @!attribute employer_name
      #   The name of the employer.
      #   @return [String]
      required :employer_name, String

      # @!attribute employer_state
      #   The state in which the employer is located.
      #   @return [String]
      required :employer_state, String

      # @!attribute employment_status
      #   The employment status of the individual.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus]
      required :employment_status,
               enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus }

      # @!attribute income_country
      #   The country in which the individual's income is earned.
      #   @return [String]
      required :income_country, String

      # @!attribute income_source
      #   The source of the individual's income.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource]
      required :income_source, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource }

      # @!attribute income_state
      #   The state in which the individual's income is earned.
      #   @return [String]
      required :income_state, String

      # @!attribute industry
      #   The industry of the individual.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Industry]
      required :industry, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::Industry }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute occupation
      #   The occupation of the individual.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation]
      required :occupation, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::Occupation }

      # @!attribute source_of_funds
      #   The source of the individual's funds.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds]
      required :source_of_funds,
               enum: -> {
                 ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds
               }

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_source
      #   The source of the individual's wealth.
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource]
      required :wealth_source, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource }

      # The employment status of the individual.
      class EmploymentStatus < ModernTreasury::Enum
        EMPLOYED = :employed
        RETIRED = :retired
        SELF_EMPLOYED = :self_employed
        STUDENT = :student
        UNEMPLOYED = :unemployed
      end

      # The source of the individual's income.
      class IncomeSource < ModernTreasury::Enum
        FAMILY_SUPPORT = :family_support
        GOVERNMENT_BENEFITS = :government_benefits
        INHERITANCE = :inheritance
        INVESTMENTS = :investments
        RENTAL_INCOME = :rental_income
        RETIREMENT = :retirement
        SALARY = :salary
        SELF_EMPLOYED = :self_employed
      end

      # The industry of the individual.
      class Industry < ModernTreasury::Enum
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
      end

      # The occupation of the individual.
      class Occupation < ModernTreasury::Enum
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
      end

      # The source of the individual's funds.
      class SourceOfFunds < ModernTreasury::Enum
        ALIMONY = :alimony
        ANNUITY = :annuity
        BUSINESS_OWNER = :business_owner
        GENERAL_EMPLOYEE = :general_employee
        GOVERNMENT_BENEFITS = :government_benefits
        HOMEMAKER = :homemaker
        INHERITANCE_GIFT = :inheritance_gift
        INVESTMENT = :investment
        LEGAL_SETTLEMENT = :legal_settlement
        LOTTERY = :lottery
        REAL_ESTATE = :real_estate
        RETIRED = :retired
        RETIREMENT = :retirement
        SALARY = :salary
        SELF_EMPLOYED = :self_employed
        SENIOR_EXECUTIVE = :senior_executive
        TRUST_INCOME = :trust_income
      end

      # The source of the individual's wealth.
      class WealthSource < ModernTreasury::Enum
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
      end

      # @!parse
      #   # Create a new instance of WealthAndEmploymentDetails from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :annual_income The annual income of the individual.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [String] :employer_country The country in which the employer is located.
      #   #   @option data [String] :employer_name The name of the employer.
      #   #   @option data [String] :employer_state The state in which the employer is located.
      #   #   @option data [String] :employment_status The employment status of the individual.
      #   #   @option data [String] :income_country The country in which the individual's income is earned.
      #   #   @option data [String] :income_source The source of the individual's income.
      #   #   @option data [String] :income_state The state in which the individual's income is earned.
      #   #   @option data [String] :industry The industry of the individual.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :occupation The occupation of the individual.
      #   #   @option data [String] :source_of_funds The source of the individual's funds.
      #   #   @option data [String] :updated_at
      #   #   @option data [String] :wealth_source The source of the individual's wealth.
      #   def initialize(data = {}) = super
    end
  end
end
