# typed: strong

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :annual_income

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(String)) }
      attr_accessor :employer_country

      sig { returns(T.nilable(String)) }
      attr_accessor :employer_name

      sig { returns(T.nilable(String)) }
      attr_accessor :employer_state

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :employment_status

      sig { returns(T.nilable(String)) }
      attr_accessor :income_country

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :income_source

      sig { returns(T.nilable(String)) }
      attr_accessor :income_state

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :industry

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :occupation

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :source_of_funds

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Symbol)) }
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
        ).void
      end
      def initialize(
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

      sig { returns(ModernTreasury::Models::WealthAndEmploymentDetails::Shape) }
      def to_h; end

      class EmploymentStatus < ModernTreasury::Enum
        abstract!

        EMPLOYED = T.let(:employed, T.nilable(Symbol))
        RETIRED = T.let(:retired, T.nilable(Symbol))
        SELF_EMPLOYED = T.let(:self_employed, T.nilable(Symbol))
        STUDENT = T.let(:student, T.nilable(Symbol))
        UNEMPLOYED = T.let(:unemployed, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class IncomeSource < ModernTreasury::Enum
        abstract!

        FAMILY_SUPPORT = T.let(:family_support, T.nilable(Symbol))
        GOVERNMENT_BENEFITS = T.let(:government_benefits, T.nilable(Symbol))
        INHERITANCE = T.let(:inheritance, T.nilable(Symbol))
        INVESTMENTS = T.let(:investments, T.nilable(Symbol))
        RENTAL_INCOME = T.let(:rental_income, T.nilable(Symbol))
        RETIREMENT = T.let(:retirement, T.nilable(Symbol))
        SALARY = T.let(:salary, T.nilable(Symbol))
        SELF_EMPLOYED = T.let(:self_employed, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Industry < ModernTreasury::Enum
        abstract!

        ACCOUNTING = T.let(:accounting, T.nilable(Symbol))
        AGRICULTURE = T.let(:agriculture, T.nilable(Symbol))
        AUTOMOTIVE = T.let(:automotive, T.nilable(Symbol))
        CHEMICAL_MANUFACTURING = T.let(:chemical_manufacturing, T.nilable(Symbol))
        CONSTRUCTION = T.let(:construction, T.nilable(Symbol))
        EDUCATIONAL_MEDICAL = T.let(:educational_medical, T.nilable(Symbol))
        FOOD_SERVICE = T.let(:food_service, T.nilable(Symbol))
        FINANCE = T.let(:finance, T.nilable(Symbol))
        GASOLINE = T.let(:gasoline, T.nilable(Symbol))
        HEALTH_STORES = T.let(:health_stores, T.nilable(Symbol))
        LAUNDRY = T.let(:laundry, T.nilable(Symbol))
        MAINTENANCE = T.let(:maintenance, T.nilable(Symbol))
        MANUFACTURING = T.let(:manufacturing, T.nilable(Symbol))
        MERCHANT_WHOLESALE = T.let(:merchant_wholesale, T.nilable(Symbol))
        MINING = T.let(:mining, T.nilable(Symbol))
        PERFORMING_ARTS = T.let(:performing_arts, T.nilable(Symbol))
        PROFESSIONAL_NON_LEGAL = T.let(:professional_non_legal, T.nilable(Symbol))
        PUBLIC_ADMINISTRATION = T.let(:public_administration, T.nilable(Symbol))
        PUBLISHING = T.let(:publishing, T.nilable(Symbol))
        REAL_ESTATE = T.let(:real_estate, T.nilable(Symbol))
        RECREATION_GAMBLING = T.let(:recreation_gambling, T.nilable(Symbol))
        RELIGIOUS_CHARITY = T.let(:religious_charity, T.nilable(Symbol))
        RENTAL_SERVICES = T.let(:rental_services, T.nilable(Symbol))
        RETAIL_CLOTHING = T.let(:retail_clothing, T.nilable(Symbol))
        RETAIL_ELECTRONICS = T.let(:retail_electronics, T.nilable(Symbol))
        RETAIL_FOOD = T.let(:retail_food, T.nilable(Symbol))
        RETAIL_FURNISHING = T.let(:retail_furnishing, T.nilable(Symbol))
        RETAIL_HOME = T.let(:retail_home, T.nilable(Symbol))
        RETAIL_NON_STORE = T.let(:retail_non_store, T.nilable(Symbol))
        RETAIL_SPORTING = T.let(:retail_sporting, T.nilable(Symbol))
        TRANSPORTATION = T.let(:transportation, T.nilable(Symbol))
        TRAVEL = T.let(:travel, T.nilable(Symbol))
        UTILITIES = T.let(:utilities, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Occupation < ModernTreasury::Enum
        abstract!

        CONSULTING = T.let(:consulting, T.nilable(Symbol))
        EXECUTIVE = T.let(:executive, T.nilable(Symbol))
        FINANCE_ACCOUNTING = T.let(:finance_accounting, T.nilable(Symbol))
        FOOD_SERVICES = T.let(:food_services, T.nilable(Symbol))
        GOVERNMENT = T.let(:government, T.nilable(Symbol))
        HEALTHCARE = T.let(:healthcare, T.nilable(Symbol))
        LEGAL_SERVICES = T.let(:legal_services, T.nilable(Symbol))
        MANUFACTURING = T.let(:manufacturing, T.nilable(Symbol))
        OTHER = T.let(:other, T.nilable(Symbol))
        SALES = T.let(:sales, T.nilable(Symbol))
        SCIENCE_ENGINEERING = T.let(:science_engineering, T.nilable(Symbol))
        TECHNOLOGY = T.let(:technology, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class SourceOfFunds < ModernTreasury::Enum
        abstract!

        ALIMONY = T.let(:alimony, T.nilable(Symbol))
        ANNUITY = T.let(:annuity, T.nilable(Symbol))
        BUSINESS_OWNER = T.let(:business_owner, T.nilable(Symbol))
        GENERAL_EMPLOYEE = T.let(:general_employee, T.nilable(Symbol))
        GOVERNMENT_BENEFITS = T.let(:government_benefits, T.nilable(Symbol))
        HOMEMAKER = T.let(:homemaker, T.nilable(Symbol))
        INHERITANCE_GIFT = T.let(:inheritance_gift, T.nilable(Symbol))
        INVESTMENT = T.let(:investment, T.nilable(Symbol))
        LEGAL_SETTLEMENT = T.let(:legal_settlement, T.nilable(Symbol))
        LOTTERY = T.let(:lottery, T.nilable(Symbol))
        REAL_ESTATE = T.let(:real_estate, T.nilable(Symbol))
        RETIRED = T.let(:retired, T.nilable(Symbol))
        RETIREMENT = T.let(:retirement, T.nilable(Symbol))
        SALARY = T.let(:salary, T.nilable(Symbol))
        SELF_EMPLOYED = T.let(:self_employed, T.nilable(Symbol))
        SENIOR_EXECUTIVE = T.let(:senior_executive, T.nilable(Symbol))
        TRUST_INCOME = T.let(:trust_income, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class WealthSource < ModernTreasury::Enum
        abstract!

        BUSINESS_SALE = T.let(:business_sale, T.nilable(Symbol))
        FAMILY_SUPPORT = T.let(:family_support, T.nilable(Symbol))
        GOVERNMENT_BENEFITS = T.let(:government_benefits, T.nilable(Symbol))
        INHERITANCE = T.let(:inheritance, T.nilable(Symbol))
        INVESTMENTS = T.let(:investments, T.nilable(Symbol))
        OTHER = T.let(:other, T.nilable(Symbol))
        RENTAL_INCOME = T.let(:rental_income, T.nilable(Symbol))
        RETIREMENT = T.let(:retirement, T.nilable(Symbol))
        SALARY = T.let(:salary, T.nilable(Symbol))
        SELF_EMPLOYED = T.let(:self_employed, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
