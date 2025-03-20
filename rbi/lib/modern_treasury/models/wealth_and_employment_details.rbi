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
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)) }
      def employment_status
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol))
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)) }
      def income_source
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol))
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)) }
      def industry
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol))
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)) }
      def occupation
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol))
      end
      def occupation=(_)
      end

      # The source of the individual's funds.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)) }
      def source_of_funds
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol))
      end
      def source_of_funds=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The source of the individual's wealth.
      sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)) }
      def wealth_source
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol))
      end
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
      def to_hash
      end

      # The employment status of the individual.
      module EmploymentStatus
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol) }

        EMPLOYED =
          T.let(:employed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)
        RETIRED = T.let(:retired, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)
        STUDENT = T.let(:student, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)
        UNEMPLOYED =
          T.let(:unemployed, ModernTreasury::Models::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol)
      end

      # The source of the individual's income.
      module IncomeSource
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol) }

        FAMILY_SUPPORT =
          T.let(:family_support, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        GOVERNMENT_BENEFITS =
          T.let(:government_benefits, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        INHERITANCE =
          T.let(:inheritance, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        INVESTMENTS =
          T.let(:investments, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        RENTAL_INCOME =
          T.let(:rental_income, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::IncomeSource::OrSymbol)
      end

      # The industry of the individual.
      module Industry
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Industry) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::TaggedSymbol) }

        ACCOUNTING = T.let(:accounting, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        AGRICULTURE = T.let(:agriculture, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        AUTOMOTIVE = T.let(:automotive, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        CHEMICAL_MANUFACTURING =
          T.let(:chemical_manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        CONSTRUCTION =
          T.let(:construction, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        EDUCATIONAL_MEDICAL =
          T.let(:educational_medical, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        FOOD_SERVICE =
          T.let(:food_service, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        FINANCE = T.let(:finance, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        GASOLINE = T.let(:gasoline, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        HEALTH_STORES =
          T.let(:health_stores, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        LAUNDRY = T.let(:laundry, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        MAINTENANCE = T.let(:maintenance, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        MANUFACTURING =
          T.let(:manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        MERCHANT_WHOLESALE =
          T.let(:merchant_wholesale, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        MINING = T.let(:mining, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        PERFORMING_ARTS =
          T.let(:performing_arts, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        PROFESSIONAL_NON_LEGAL =
          T.let(:professional_non_legal, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        PUBLIC_ADMINISTRATION =
          T.let(:public_administration, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        PUBLISHING = T.let(:publishing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        REAL_ESTATE = T.let(:real_estate, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RECREATION_GAMBLING =
          T.let(:recreation_gambling, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RELIGIOUS_CHARITY =
          T.let(:religious_charity, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RENTAL_SERVICES =
          T.let(:rental_services, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_CLOTHING =
          T.let(:retail_clothing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_ELECTRONICS =
          T.let(:retail_electronics, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_FOOD = T.let(:retail_food, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_FURNISHING =
          T.let(:retail_furnishing, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_HOME = T.let(:retail_home, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_NON_STORE =
          T.let(:retail_non_store, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        RETAIL_SPORTING =
          T.let(:retail_sporting, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        TRANSPORTATION =
          T.let(:transportation, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        TRAVEL = T.let(:travel, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
        UTILITIES = T.let(:utilities, ModernTreasury::Models::WealthAndEmploymentDetails::Industry::OrSymbol)
      end

      # The occupation of the individual.
      module Occupation
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::TaggedSymbol) }

        CONSULTING = T.let(:consulting, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        EXECUTIVE = T.let(:executive, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        FINANCE_ACCOUNTING =
          T.let(:finance_accounting, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        FOOD_SERVICES =
          T.let(:food_services, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        GOVERNMENT = T.let(:government, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        HEALTHCARE = T.let(:healthcare, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        LEGAL_SERVICES =
          T.let(:legal_services, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        MANUFACTURING =
          T.let(:manufacturing, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        SALES = T.let(:sales, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        SCIENCE_ENGINEERING =
          T.let(:science_engineering, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
        TECHNOLOGY = T.let(:technology, ModernTreasury::Models::WealthAndEmploymentDetails::Occupation::OrSymbol)
      end

      # The source of the individual's funds.
      module SourceOfFunds
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol) }

        ALIMONY = T.let(:alimony, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        ANNUITY = T.let(:annuity, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        BUSINESS_OWNER =
          T.let(:business_owner, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        GENERAL_EMPLOYEE =
          T.let(:general_employee, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        GOVERNMENT_BENEFITS =
          T.let(:government_benefits, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        HOMEMAKER =
          T.let(:homemaker, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        INHERITANCE_GIFT =
          T.let(:inheritance_gift, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        INVESTMENT =
          T.let(:investment, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        LEGAL_SETTLEMENT =
          T.let(:legal_settlement, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        LOTTERY = T.let(:lottery, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        REAL_ESTATE =
          T.let(:real_estate, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        RETIRED = T.let(:retired, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        SENIOR_EXECUTIVE =
          T.let(:senior_executive, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
        TRUST_INCOME =
          T.let(:trust_income, ModernTreasury::Models::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol)
      end

      # The source of the individual's wealth.
      module WealthSource
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::TaggedSymbol) }

        BUSINESS_SALE =
          T.let(:business_sale, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        FAMILY_SUPPORT =
          T.let(:family_support, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        GOVERNMENT_BENEFITS =
          T.let(:government_benefits, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        INHERITANCE =
          T.let(:inheritance, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        INVESTMENTS =
          T.let(:investments, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        OTHER = T.let(:other, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        RENTAL_INCOME =
          T.let(:rental_income, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        RETIREMENT =
          T.let(:retirement, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        SALARY = T.let(:salary, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
        SELF_EMPLOYED =
          T.let(:self_employed, ModernTreasury::Models::WealthAndEmploymentDetails::WealthSource::OrSymbol)
      end
    end
  end
end
