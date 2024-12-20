# frozen_string_literal: true

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute annual_income
      #   The annual income of the individual.
      #
      #   @return [Integer]
      required :annual_income, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute employer_country
      #   The country in which the employer is located.
      #
      #   @return [String]
      required :employer_country, String

      # @!attribute employer_name
      #   The name of the employer.
      #
      #   @return [String]
      required :employer_name, String

      # @!attribute employer_state
      #   The state in which the employer is located.
      #
      #   @return [String]
      required :employer_state, String

      # @!attribute employment_status
      #   The employment status of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus]
      required :employment_status,
               enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus }

      # @!attribute income_country
      #   The country in which the individual's income is earned.
      #
      #   @return [String]
      required :income_country, String

      # @!attribute income_source
      #   The source of the individual's income.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource]
      required :income_source, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource }

      # @!attribute income_state
      #   The state in which the individual's income is earned.
      #
      #   @return [String]
      required :income_state, String

      # @!attribute industry
      #   The industry of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Industry]
      required :industry, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::Industry }

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute occupation
      #   The occupation of the individual.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation]
      required :occupation, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::Occupation }

      # @!attribute source_of_funds
      #   The source of the individual's funds.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds]
      required :source_of_funds,
               enum: -> {
                 ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds
               }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute wealth_source
      #   The source of the individual's wealth.
      #
      #   @return [Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource]
      required :wealth_source, enum: -> { ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource }

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param annual_income [Integer, nil] The annual income of the individual.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param employer_country [String, nil] The country in which the employer is located.
      #   #
      #   # @param employer_name [String, nil] The name of the employer.
      #   #
      #   # @param employer_state [String, nil] The state in which the employer is located.
      #   #
      #   # @param employment_status [String, nil] The employment status of the individual.
      #   #
      #   # @param income_country [String, nil] The country in which the individual's income is earned.
      #   #
      #   # @param income_source [String, nil] The source of the individual's income.
      #   #
      #   # @param income_state [String, nil] The state in which the individual's income is earned.
      #   #
      #   # @param industry [String, nil] The industry of the individual.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param occupation [String, nil] The occupation of the individual.
      #   #
      #   # @param source_of_funds [String, nil] The source of the individual's funds.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param wealth_source [String, nil] The source of the individual's wealth.
      #   #
      #   def initialize(
      #     id:,
      #     annual_income:,
      #     created_at:,
      #     discarded_at:,
      #     employer_country:,
      #     employer_name:,
      #     employer_state:,
      #     employment_status:,
      #     income_country:,
      #     income_source:,
      #     income_state:,
      #     industry:,
      #     live_mode:,
      #     object:,
      #     occupation:,
      #     source_of_funds:,
      #     updated_at:,
      #     wealth_source:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The employment status of the individual.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :employed
      #   # ...
      # in :retired
      #   # ...
      # in :self_employed
      #   # ...
      # in :student
      #   # ...
      # in :unemployed
      #   # ...
      # end
      # ```
      class EmploymentStatus < ModernTreasury::Enum
        EMPLOYED = :employed
        RETIRED = :retired
        SELF_EMPLOYED = :self_employed
        STUDENT = :student
        UNEMPLOYED = :unemployed

        finalize!
      end

      # The source of the individual's income.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :family_support
      #   # ...
      # in :government_benefits
      #   # ...
      # in :inheritance
      #   # ...
      # in :investments
      #   # ...
      # in :rental_income
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class IncomeSource < ModernTreasury::Enum
        FAMILY_SUPPORT = :family_support
        GOVERNMENT_BENEFITS = :government_benefits
        INHERITANCE = :inheritance
        INVESTMENTS = :investments
        RENTAL_INCOME = :rental_income
        RETIREMENT = :retirement
        SALARY = :salary
        SELF_EMPLOYED = :self_employed

        finalize!
      end

      # The industry of the individual.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :accounting
      #   # ...
      # in :agriculture
      #   # ...
      # in :automotive
      #   # ...
      # in :chemical_manufacturing
      #   # ...
      # in :construction
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # The occupation of the individual.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :consulting
      #   # ...
      # in :executive
      #   # ...
      # in :finance_accounting
      #   # ...
      # in :food_services
      #   # ...
      # in :government
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # The source of the individual's funds.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :alimony
      #   # ...
      # in :annuity
      #   # ...
      # in :business_owner
      #   # ...
      # in :general_employee
      #   # ...
      # in :government_benefits
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # The source of the individual's wealth.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :business_sale
      #   # ...
      # in :family_support
      #   # ...
      # in :government_benefits
      #   # ...
      # in :inheritance
      #   # ...
      # in :investments
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end
    end
  end
end
