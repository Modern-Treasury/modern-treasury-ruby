# typed: strong

module ModernTreasury
  module Models
    class LegalEntityWealthEmploymentDetail < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityWealthEmploymentDetail,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The annual income of the individual in USD.
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
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::OrSymbol
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
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::OrSymbol
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
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::OrSymbol
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
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::OrSymbol
          )
        )
      end
      attr_accessor :occupation

      # The source of the individual's funds.
      sig do
        returns(
          T.nilable(
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::OrSymbol
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
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::OrSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::OrSymbol
            ),
          income_country: T.nilable(String),
          income_source:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::OrSymbol
            ),
          income_state: T.nilable(String),
          industry:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::OrSymbol
            ),
          live_mode: T::Boolean,
          object: String,
          occupation:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::OrSymbol
            ),
          source_of_funds:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::OrSymbol
            ),
          updated_at: Time,
          wealth_source:
            T.nilable(
              ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The annual income of the individual in USD.
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
                ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::OrSymbol
              ),
            income_country: T.nilable(String),
            income_source:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::OrSymbol
              ),
            income_state: T.nilable(String),
            industry:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::OrSymbol
              ),
            live_mode: T::Boolean,
            object: String,
            occupation:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::OrSymbol
              ),
            source_of_funds:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::OrSymbol
              ),
            updated_at: Time,
            wealth_source:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::OrSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMPLOYED =
          T.let(
            :employed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
          )
        RETIRED =
          T.let(
            :retired,
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
          )
        STUDENT =
          T.let(
            :student,
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
          )
        UNEMPLOYED =
          T.let(
            :unemployed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::EmploymentStatus::TaggedSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAMILY_SUPPORT =
          T.let(
            :family_support,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(
            :inheritance,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        INVESTMENTS =
          T.let(
            :investments,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        RENTAL_INCOME =
          T.let(
            :rental_income,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::IncomeSource::TaggedSymbol
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
            T.all(
              Symbol,
              ModernTreasury::LegalEntityWealthEmploymentDetail::Industry
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(
            :accounting,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        AGRICULTURE =
          T.let(
            :agriculture,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        AUTOMOTIVE =
          T.let(
            :automotive,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        CHEMICAL_MANUFACTURING =
          T.let(
            :chemical_manufacturing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        CONSTRUCTION =
          T.let(
            :construction,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        EDUCATIONAL_MEDICAL =
          T.let(
            :educational_medical,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        FOOD_SERVICE =
          T.let(
            :food_service,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        FINANCE =
          T.let(
            :finance,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        GASOLINE =
          T.let(
            :gasoline,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        HEALTH_STORES =
          T.let(
            :health_stores,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        LAUNDRY =
          T.let(
            :laundry,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        MAINTENANCE =
          T.let(
            :maintenance,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        MANUFACTURING =
          T.let(
            :manufacturing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        MERCHANT_WHOLESALE =
          T.let(
            :merchant_wholesale,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        MINING =
          T.let(
            :mining,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        PERFORMING_ARTS =
          T.let(
            :performing_arts,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        PROFESSIONAL_NON_LEGAL =
          T.let(
            :professional_non_legal,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        PUBLIC_ADMINISTRATION =
          T.let(
            :public_administration,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        PUBLISHING =
          T.let(
            :publishing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RECREATION_GAMBLING =
          T.let(
            :recreation_gambling,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RELIGIOUS_CHARITY =
          T.let(
            :religious_charity,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RENTAL_SERVICES =
          T.let(
            :rental_services,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_CLOTHING =
          T.let(
            :retail_clothing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_ELECTRONICS =
          T.let(
            :retail_electronics,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_FOOD =
          T.let(
            :retail_food,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_FURNISHING =
          T.let(
            :retail_furnishing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_HOME =
          T.let(
            :retail_home,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_NON_STORE =
          T.let(
            :retail_non_store,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        RETAIL_SPORTING =
          T.let(
            :retail_sporting,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        TRANSPORTATION =
          T.let(
            :transportation,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        TRAVEL =
          T.let(
            :travel,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )
        UTILITIES =
          T.let(
            :utilities,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::Industry::TaggedSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONSULTING =
          T.let(
            :consulting,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        EXECUTIVE =
          T.let(
            :executive,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        FINANCE_ACCOUNTING =
          T.let(
            :finance_accounting,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        FOOD_SERVICES =
          T.let(
            :food_services,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        HEALTHCARE =
          T.let(
            :healthcare,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        LEGAL_SERVICES =
          T.let(
            :legal_services,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        MANUFACTURING =
          T.let(
            :manufacturing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        SALES =
          T.let(
            :sales,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        SCIENCE_ENGINEERING =
          T.let(
            :science_engineering,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )
        TECHNOLOGY =
          T.let(
            :technology,
            ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::Occupation::TaggedSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALIMONY =
          T.let(
            :alimony,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        ANNUITY =
          T.let(
            :annuity,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        BUSINESS_OWNER =
          T.let(
            :business_owner,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        BUSINESS_REVENUE =
          T.let(
            :business_revenue,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        DEBT_FINANCING =
          T.let(
            :debt_financing,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        GENERAL_EMPLOYEE =
          T.let(
            :general_employee,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        HOMEMAKER =
          T.let(
            :homemaker,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        INHERITANCE_GIFT =
          T.let(
            :inheritance_gift,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        INTERCOMPANY_LOAN =
          T.let(
            :intercompany_loan,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        INVESTMENT =
          T.let(
            :investment,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        INVESTOR_FUNDING =
          T.let(
            :investor_funding,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        LEGAL_SETTLEMENT =
          T.let(
            :legal_settlement,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        LOTTERY =
          T.let(
            :lottery,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        RETAINED_EARNINGS_OR_SAVINGS =
          T.let(
            :retained_earnings_or_savings,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        RETIRED =
          T.let(
            :retired,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        SALE_OF_BUSINESS_ASSETS =
          T.let(
            :sale_of_business_assets,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        SALE_OF_REAL_ESTATE =
          T.let(
            :sale_of_real_estate,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        SENIOR_EXECUTIVE =
          T.let(
            :senior_executive,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )
        TRUST_INCOME =
          T.let(
            :trust_income,
            ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::SourceOfFunds::TaggedSymbol
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
              ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS_SALE =
          T.let(
            :business_sale,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        FAMILY_SUPPORT =
          T.let(
            :family_support,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        GOVERNMENT_BENEFITS =
          T.let(
            :government_benefits,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        INHERITANCE =
          T.let(
            :inheritance,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        INVESTMENTS =
          T.let(
            :investments,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        RENTAL_INCOME =
          T.let(
            :rental_income,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        RETIREMENT =
          T.let(
            :retirement,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        SALARY =
          T.let(
            :salary,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )
        SELF_EMPLOYED =
          T.let(
            :self_employed,
            ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityWealthEmploymentDetail::WealthSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
