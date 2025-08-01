# typed: strong

module ModernTreasury
  module Models
    class WealthAndEmploymentDetails < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::WealthAndEmploymentDetails,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol
          )
        )
      end
      attr_accessor :employment_status

      # The country in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      attr_accessor :income_country

      # The source of the individual's income.
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::OrSymbol
          )
        )
      end
      attr_accessor :income_source

      # The state in which the individual's income is earned.
      sig { returns(T.nilable(String)) }
      attr_accessor :income_state

      # The industry of the individual.
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::Industry::OrSymbol
          )
        )
      end
      attr_accessor :industry

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The occupation of the individual.
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::Occupation::OrSymbol
          )
        )
      end
      attr_accessor :occupation

      # The source of the individual's funds.
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol
          )
        )
      end
      attr_accessor :source_of_funds

      sig { returns(Time) }
      attr_accessor :updated_at

      # The source of the individual's wealth.
      sig do
        returns(
          T.nilable(
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::OrSymbol
          )
        )
      end
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
          employment_status:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol
            ),
          income_country: T.nilable(String),
          income_source:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::IncomeSource::OrSymbol
            ),
          income_state: T.nilable(String),
          industry:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::Industry::OrSymbol
            ),
          live_mode: T::Boolean,
          object: String,
          occupation:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::Occupation::OrSymbol
            ),
          source_of_funds:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol
            ),
          updated_at: Time,
          wealth_source:
            T.nilable(
              ModernTreasury::WealthAndEmploymentDetails::WealthSource::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The annual income of the individual.
        annual_income:,
        created_at:,
        discarded_at:,
        # The country in which the employer is located.
        employer_country:,
        # The name of the employer.
        employer_name:,
        # The state in which the employer is located.
        employer_state:,
        # The employment status of the individual.
        employment_status:,
        # The country in which the individual's income is earned.
        income_country:,
        # The source of the individual's income.
        income_source:,
        # The state in which the individual's income is earned.
        income_state:,
        # The industry of the individual.
        industry:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The occupation of the individual.
        occupation:,
        # The source of the individual's funds.
        source_of_funds:,
        updated_at:,
        # The source of the individual's wealth.
        wealth_source:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            annual_income: T.nilable(Integer),
            created_at: Time,
            discarded_at: T.nilable(Time),
            employer_country: T.nilable(String),
            employer_name: T.nilable(String),
            employer_state: T.nilable(String),
            employment_status:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::OrSymbol
              ),
            income_country: T.nilable(String),
            income_source:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::IncomeSource::OrSymbol
              ),
            income_state: T.nilable(String),
            industry:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::Industry::OrSymbol
              ),
            live_mode: T::Boolean,
            object: String,
            occupation:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::Occupation::OrSymbol
              ),
            source_of_funds:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::OrSymbol
              ),
            updated_at: Time,
            wealth_source:
              T.nilable(
                ModernTreasury::WealthAndEmploymentDetails::WealthSource::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # The employment status of the individual.
      module EmploymentStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMPLOYED =
          T.let(
            :employed,
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
          )
        RETIRED =
          T.let(
            :retired,
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
          )
        STUDENT =
          T.let(
            :student,
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
          )
        UNEMPLOYED =
          T.let(
            :unemployed,
            ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::EmploymentStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The source of the individual's income.
      module IncomeSource
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::WealthAndEmploymentDetails::IncomeSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAMILY_SUPPORT =
          T.let(
            :family_support,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(
            :inheritance,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        INVESTMENTS =
          T.let(
            :investments,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        RENTAL_INCOME =
          T.let(
            :rental_income,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::IncomeSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The industry of the individual.
      module Industry
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::WealthAndEmploymentDetails::Industry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(
            :accounting,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        AGRICULTURE =
          T.let(
            :agriculture,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        CHEMICAL_MANUFACTURING =
          T.let(
            :chemical_manufacturing,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        CONSTRUCTION =
          T.let(
            :construction,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        EDUCATIONAL_MEDICAL =
          T.let(
            :educational_medical,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        FOOD_SERVICE =
          T.let(
            :food_service,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        FINANCE =
          T.let(
            :finance,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        GASOLINE =
          T.let(
            :gasoline,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        HEALTH_STORES =
          T.let(
            :health_stores,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        LAUNDRY =
          T.let(
            :laundry,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        MAINTENANCE =
          T.let(
            :maintenance,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        MANUFACTURING =
          T.let(
            :manufacturing,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        MERCHANT_WHOLESALE =
          T.let(
            :merchant_wholesale,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        MINING =
          T.let(
            :mining,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        PERFORMING_ARTS =
          T.let(
            :performing_arts,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        PROFESSIONAL_NON_LEGAL =
          T.let(
            :professional_non_legal,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        PUBLIC_ADMINISTRATION =
          T.let(
            :public_administration,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        PUBLISHING =
          T.let(
            :publishing,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RECREATION_GAMBLING =
          T.let(
            :recreation_gambling,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RELIGIOUS_CHARITY =
          T.let(
            :religious_charity,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RENTAL_SERVICES =
          T.let(
            :rental_services,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_CLOTHING =
          T.let(
            :retail_clothing,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_ELECTRONICS =
          T.let(
            :retail_electronics,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_FOOD =
          T.let(
            :retail_food,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_FURNISHING =
          T.let(
            :retail_furnishing,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_HOME =
          T.let(
            :retail_home,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_NON_STORE =
          T.let(
            :retail_non_store,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        RETAIL_SPORTING =
          T.let(
            :retail_sporting,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        TRAVEL =
          T.let(
            :travel,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )
        UTILITIES =
          T.let(
            :utilities,
            ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::Industry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The occupation of the individual.
      module Occupation
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::WealthAndEmploymentDetails::Occupation
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONSULTING =
          T.let(
            :consulting,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        EXECUTIVE =
          T.let(
            :executive,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        FINANCE_ACCOUNTING =
          T.let(
            :finance_accounting,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        FOOD_SERVICES =
          T.let(
            :food_services,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        LEGAL_SERVICES =
          T.let(
            :legal_services,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        MANUFACTURING =
          T.let(
            :manufacturing,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        SALES =
          T.let(
            :sales,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        SCIENCE_ENGINEERING =
          T.let(
            :science_engineering,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )
        TECHNOLOGY =
          T.let(
            :technology,
            ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::Occupation::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The source of the individual's funds.
      module SourceOfFunds
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALIMONY =
          T.let(
            :alimony,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        ANNUITY =
          T.let(
            :annuity,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        BUSINESS_OWNER =
          T.let(
            :business_owner,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        GENERAL_EMPLOYEE =
          T.let(
            :general_employee,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        HOMEMAKER =
          T.let(
            :homemaker,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        INHERITANCE_GIFT =
          T.let(
            :inheritance_gift,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        INVESTMENT =
          T.let(
            :investment,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        LEGAL_SETTLEMENT =
          T.let(
            :legal_settlement,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        LOTTERY =
          T.let(
            :lottery,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        RETIRED =
          T.let(
            :retired,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        SENIOR_EXECUTIVE =
          T.let(
            :senior_executive,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )
        TRUST_INCOME =
          T.let(
            :trust_income,
            ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::SourceOfFunds::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The source of the individual's wealth.
      module WealthSource
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::WealthAndEmploymentDetails::WealthSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS_SALE =
          T.let(
            :business_sale,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        FAMILY_SUPPORT =
          T.let(
            :family_support,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(
            :inheritance,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        INVESTMENTS =
          T.let(
            :investments,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        RENTAL_INCOME =
          T.let(
            :rental_income,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::WealthAndEmploymentDetails::WealthSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
