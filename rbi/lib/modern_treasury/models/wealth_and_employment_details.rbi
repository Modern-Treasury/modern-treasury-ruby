# typed: strong

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The annual income of the individual.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :annual_income

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The country in which the employer is located.
      sig { returns(T.nilable(String)) }
      attr_accessor :employer_country

      # The name of the employer.
      sig { returns(T.nilable(String)) }
      attr_accessor :employer_name

      # The state in which the employer is located.
      sig { returns(T.nilable(String)) }
      attr_accessor :employer_state

      # The employment status of the individual.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)) }
      attr_accessor :employment_status

      # The country in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      attr_accessor :income_country

      # The source of the individual's income.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)) }
      attr_accessor :income_source

      # The state in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      attr_accessor :income_state

      # The industry of the individual.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)) }
      attr_accessor :industry

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The occupation of the individual.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)) }
      attr_accessor :occupation

      # The source of the individual's funds.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)) }
      attr_accessor :source_of_funds

      sig { returns(Time) }
      attr_accessor :updated_at

      # The source of the individual's wealth.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)) }
      attr_accessor :wealth_source

      sig do
        params(
          id: String,
          annual_income: T.nilable(Integer),
          created_at: Time,
          discarded_at: T.nilable(Time),
          employer_country: T.nilable(String),
          employer_name: T.nilable(String),
          employer_state: T.nilable(String),
          employment_status: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol),
          income_country: T.nilable(String),
          income_source: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol),
          income_state: T.nilable(String),
          industry: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol),
          live_mode: T::Boolean,
          object: String,
          occupation: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol),
          source_of_funds: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol),
          updated_at: Time,
          wealth_source: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
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
      ); end
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
              employment_status: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol),
              income_country: T.nilable(String),
              income_source: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol),
              income_state: T.nilable(String),
              industry: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol),
              live_mode: T::Boolean,
              object: String,
              occupation: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol),
              source_of_funds: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol),
              updated_at: Time,
              wealth_source: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
            }
          )
      end
      def to_hash; end

      # The employment status of the individual.
      module EmploymentStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMPLOYED =
          T.let(:employed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol)
        RETIRED =
          T.let(:retired, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol)
        STUDENT =
          T.let(:student, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol)
        UNEMPLOYED =
          T.let(:unemployed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol])
        end
        def self.values; end
      end

      # The source of the individual's income.
      module IncomeSource
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAMILY_SUPPORT =
          T.let(:family_support, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(:inheritance, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        INVESTMENTS =
          T.let(:investments, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        RENTAL_INCOME =
          T.let(:rental_income, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol]) }
        def self.values; end
      end

      # The industry of the individual.
      module Industry
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Industry) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(:accounting, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        AGRICULTURE =
          T.let(:agriculture, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        AUTOMOTIVE =
          T.let(:automotive, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        CHEMICAL_MANUFACTURING =
          T.let(:chemical_manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        CONSTRUCTION =
          T.let(:construction, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        EDUCATIONAL_MEDICAL =
          T.let(:educational_medical, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        FOOD_SERVICE =
          T.let(:food_service, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        FINANCE = T.let(:finance, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        GASOLINE = T.let(:gasoline, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        HEALTH_STORES =
          T.let(:health_stores, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        LAUNDRY = T.let(:laundry, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        MAINTENANCE =
          T.let(:maintenance, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        MANUFACTURING =
          T.let(:manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        MERCHANT_WHOLESALE =
          T.let(:merchant_wholesale, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        MINING = T.let(:mining, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        PERFORMING_ARTS =
          T.let(:performing_arts, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        PROFESSIONAL_NON_LEGAL =
          T.let(:professional_non_legal, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        PUBLIC_ADMINISTRATION =
          T.let(:public_administration, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        PUBLISHING =
          T.let(:publishing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        REAL_ESTATE =
          T.let(:real_estate, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RECREATION_GAMBLING =
          T.let(:recreation_gambling, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RELIGIOUS_CHARITY =
          T.let(:religious_charity, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RENTAL_SERVICES =
          T.let(:rental_services, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_CLOTHING =
          T.let(:retail_clothing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_ELECTRONICS =
          T.let(:retail_electronics, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_FOOD =
          T.let(:retail_food, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_FURNISHING =
          T.let(:retail_furnishing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_HOME =
          T.let(:retail_home, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_NON_STORE =
          T.let(:retail_non_store, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        RETAIL_SPORTING =
          T.let(:retail_sporting, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        TRANSPORTATION =
          T.let(:transportation, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        TRAVEL = T.let(:travel, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)
        UTILITIES = T.let(:utilities, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol]) }
        def self.values; end
      end

      # The occupation of the individual.
      module Occupation
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONSULTING =
          T.let(:consulting, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        EXECUTIVE =
          T.let(:executive, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        FINANCE_ACCOUNTING =
          T.let(:finance_accounting, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        FOOD_SERVICES =
          T.let(:food_services, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        GOVERNMENT =
          T.let(:government, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        HEALTHCARE =
          T.let(:healthcare, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        LEGAL_SERVICES =
          T.let(:legal_services, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        MANUFACTURING =
          T.let(:manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        SALES = T.let(:sales, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        SCIENCE_ENGINEERING =
          T.let(:science_engineering, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)
        TECHNOLOGY =
          T.let(:technology, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol]) }
        def self.values; end
      end

      # The source of the individual's funds.
      module SourceOfFunds
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALIMONY =
          T.let(:alimony, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        ANNUITY =
          T.let(:annuity, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        BUSINESS_OWNER =
          T.let(:business_owner, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        GENERAL_EMPLOYEE =
          T.let(:general_employee, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        HOMEMAKER =
          T.let(:homemaker, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        INHERITANCE_GIFT =
          T.let(:inheritance_gift, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        INVESTMENT =
          T.let(:investment, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        LEGAL_SETTLEMENT =
          T.let(:legal_settlement, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        LOTTERY =
          T.let(:lottery, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        REAL_ESTATE =
          T.let(:real_estate, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        RETIRED =
          T.let(:retired, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        SENIOR_EXECUTIVE =
          T.let(:senior_executive, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)
        TRUST_INCOME =
          T.let(:trust_income, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol])
        end
        def self.values; end
      end

      # The source of the individual's wealth.
      module WealthSource
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS_SALE =
          T.let(:business_sale, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        FAMILY_SUPPORT =
          T.let(:family_support, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(:inheritance, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        INVESTMENTS =
          T.let(:investments, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        RENTAL_INCOME =
          T.let(:rental_income, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
