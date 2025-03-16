# typed: strong

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The annual income of the individual.
      sig { returns(T.nilable(Integer)) }
      def annual_income
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def annual_income=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      # The country in which the employer is located.
      sig { returns(T.nilable(String)) }
      def employer_country
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def employer_country=(_)
      end

      # The name of the employer.
      sig { returns(T.nilable(String)) }
      def employer_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def employer_name=(_)
      end

      # The state in which the employer is located.
      sig { returns(T.nilable(String)) }
      def employer_state
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def employer_state=(_)
      end

      # The employment status of the individual.
      sig { returns(T.nilable(Symbol)) }
      def employment_status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def employment_status=(_)
      end

      # The country in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      def income_country
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def income_country=(_)
      end

      # The source of the individual's income.
      sig { returns(T.nilable(Symbol)) }
      def income_source
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def income_source=(_)
      end

      # The state in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      def income_state
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def income_state=(_)
      end

      # The industry of the individual.
      sig { returns(T.nilable(Symbol)) }
      def industry
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def industry=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The occupation of the individual.
      sig { returns(T.nilable(Symbol)) }
      def occupation
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def occupation=(_)
      end

      # The source of the individual's funds.
      sig { returns(T.nilable(Symbol)) }
      def source_of_funds
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def source_of_funds=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The source of the individual's wealth.
      sig { returns(T.nilable(Symbol)) }
      def wealth_source
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def wealth_source=(_)
      end

      sig do
        params(
          id: String,
          annual_income: T.nilable(Integer),
          created_at: Time,
          discarded_at: T.nilable(Time),
          employer_country: T.nilable(String),
          employer_name: T.nilable(String),
          employer_state: T.nilable(String),
          employment_status: T.nilable(Symbol),
          income_country: T.nilable(String),
          income_source: T.nilable(Symbol),
          income_state: T.nilable(String),
          industry: T.nilable(Symbol),
          live_mode: T::Boolean,
          object: String,
          occupation: T.nilable(Symbol),
          source_of_funds: T.nilable(Symbol),
          updated_at: Time,
          wealth_source: T.nilable(Symbol)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        annual_income:,
        created_at:,
        discarded_at:,
        employer_country:,
        employer_name:,
        employer_state:,
        employment_status:,
        income_country:,
        income_source:,
        income_state:,
        industry:,
        live_mode:,
        object:,
        occupation:,
        source_of_funds:,
        updated_at:,
        wealth_source:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              annual_income: T.nilable(Integer),
              created_at: Time,
              discarded_at: T.nilable(Time),
              employer_country: T.nilable(String),
              employer_name: T.nilable(String),
              employer_state: T.nilable(String),
              employment_status: T.nilable(Symbol),
              income_country: T.nilable(String),
              income_source: T.nilable(Symbol),
              income_state: T.nilable(String),
              industry: T.nilable(Symbol),
              live_mode: T::Boolean,
              object: String,
              occupation: T.nilable(Symbol),
              source_of_funds: T.nilable(Symbol),
              updated_at: Time,
              wealth_source: T.nilable(Symbol)
            }
          )
      end
      def to_hash
      end

      # The employment status of the individual.
      class EmploymentStatus < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EMPLOYED = :employed
        RETIRED = :retired
        SELF_EMPLOYED = :self_employed
        STUDENT = :student
        UNEMPLOYED = :unemployed
      end

      # The source of the individual's income.
      class IncomeSource < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
    end
  end
end
