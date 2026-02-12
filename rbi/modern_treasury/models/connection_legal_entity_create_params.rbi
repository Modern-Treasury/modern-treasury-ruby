# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ConnectionLegalEntityCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the connection.
      sig { returns(String) }
      attr_accessor :connection_id

      # The legal entity.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity
          )
        )
      end
      attr_reader :legal_entity

      sig do
        params(
          legal_entity:
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::OrHash
        ).void
      end
      attr_writer :legal_entity

      # The ID of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig do
        params(
          connection_id: String,
          legal_entity:
            ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::OrHash,
          legal_entity_id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the connection.
        connection_id:,
        # The legal entity.
        legal_entity: nil,
        # The ID of the legal entity.
        legal_entity_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            legal_entity:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity,
            legal_entity_id: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LegalEntity < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity,
              ModernTreasury::Internal::AnyHash
            )
          end

        # A list of addresses for the entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::LegalEntityAddressCreateRequest])
          )
        end
        attr_reader :addresses

        sig do
          params(
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash]
          ).void
        end
        attr_writer :addresses

        sig { returns(T.nilable(ModernTreasury::LegalEntityBankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings:
              T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash)
          ).void
        end
        attr_writer :bank_settings

        # A description of the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_description

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        # The connection ID for the connection the legal entity is associated with.
        # Defaults to the id of the connection designated with an is_default value of true
        # or the id of an existing operational connection if only one is available. Pass
        # in a value of null to prevent the connection from being associated with the
        # legal entity.
        sig { returns(T.nilable(String)) }
        attr_accessor :connection_id

        # The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
        # alpha-3 formats.
        sig { returns(T.nilable(String)) }
        attr_accessor :country_of_incorporation

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_formed

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        attr_accessor :date_of_birth

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :doing_business_as_names

        sig { params(doing_business_as_names: T::Array[String]).void }
        attr_writer :doing_business_as_names

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Monthly expected transaction volume in USD.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expected_activity_volume

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # A list of identifications for the legal entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::IdentificationCreateRequest])
          )
        end
        attr_reader :identifications

        sig do
          params(
            identifications:
              T::Array[ModernTreasury::IdentificationCreateRequest::OrHash]
          ).void
        end
        attr_writer :identifications

        # A list of industry classifications for the legal entity.
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::LegalEntityIndustryClassification]
            )
          )
        end
        attr_reader :industry_classifications

        sig do
          params(
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ]
          ).void
        end
        attr_writer :industry_classifications

        # A description of the intended use of the legal entity.
        sig { returns(T.nilable(String)) }
        attr_accessor :intended_use

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal entity associations and its child legal entities.
        sig do
          returns(
            T.nilable(
              T::Array[ModernTreasury::LegalEntityAssociationInlineCreate]
            )
          )
        end
        attr_accessor :legal_entity_associations

        # The type of legal entity.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol
            )
          )
        end
        attr_reader :legal_entity_type

        sig do
          params(
            legal_entity_type:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol
          ).void
        end
        attr_writer :legal_entity_type

        # The business's legal structure.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
            )
          )
        end
        attr_accessor :legal_structure

        # ISO 10383 market identifier code.
        sig { returns(T.nilable(String)) }
        attr_accessor :listed_exchange

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
        # codes).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :operating_jurisdictions

        sig { params(operating_jurisdictions: T::Array[String]).void }
        attr_writer :operating_jurisdictions

        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber
              ]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :phone_numbers

        # Whether the individual is a politically exposed person.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :politically_exposed_person

        # An individual's preferred name.
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        # An individual's prefix.
        sig { returns(T.nilable(String)) }
        attr_accessor :prefix

        # A list of primary social media URLs for the business.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :primary_social_media_sites

        sig { params(primary_social_media_sites: T::Array[String]).void }
        attr_writer :primary_social_media_sites

        # Array of regulatory bodies overseeing this institution.
        sig do
          returns(
            T.nilable(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Regulator
              ]
            )
          )
        end
        attr_accessor :regulators

        # The risk rating of the legal entity. One of low, medium, high.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
            )
          )
        end
        attr_accessor :risk_rating

        # The activation status of the legal entity. One of pending, active, suspended, or
        # closed.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::OrSymbol
            )
          )
        end
        attr_accessor :status

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        # Information describing a third-party verification run by an external vendor.
        sig do
          returns(
            T.nilable(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification
            )
          )
        end
        attr_reader :third_party_verification

        sig do
          params(
            third_party_verification:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::OrHash
              )
          ).void
        end
        attr_writer :third_party_verification

        # Stock ticker symbol for publicly traded companies.
        sig { returns(T.nilable(String)) }
        attr_accessor :ticker_symbol

        sig do
          returns(T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail))
        end
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
              )
          ).void
        end
        attr_writer :wealth_and_employment_details

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        # The legal entity.
        sig do
          params(
            addresses:
              T::Array[ModernTreasury::LegalEntityAddressCreateRequest::OrHash],
            bank_settings:
              T.nilable(ModernTreasury::LegalEntityBankSettings::OrHash),
            business_description: T.nilable(String),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            connection_id: T.nilable(String),
            country_of_incorporation: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            expected_activity_volume: T.nilable(Integer),
            first_name: T.nilable(String),
            identifications:
              T::Array[ModernTreasury::IdentificationCreateRequest::OrHash],
            industry_classifications:
              T::Array[
                ModernTreasury::LegalEntityIndustryClassification::OrHash
              ],
            intended_use: T.nilable(String),
            last_name: T.nilable(String),
            legal_entity_associations:
              T.nilable(
                T::Array[
                  ModernTreasury::LegalEntityAssociationInlineCreate::OrHash
                ]
              ),
            legal_entity_type:
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol,
            legal_structure:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
              ),
            listed_exchange: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            operating_jurisdictions: T::Array[String],
            phone_numbers:
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber::OrHash
              ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            primary_social_media_sites: T::Array[String],
            regulators:
              T.nilable(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Regulator::OrHash
                ]
              ),
            risk_rating:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
              ),
            status:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::OrSymbol
              ),
            suffix: T.nilable(String),
            third_party_verification:
              T.nilable(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::OrHash
              ),
            ticker_symbol: T.nilable(String),
            wealth_and_employment_details:
              T.nilable(
                ModernTreasury::LegalEntityWealthEmploymentDetail::OrHash
              ),
            website: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of addresses for the entity.
          addresses: nil,
          bank_settings: nil,
          # A description of the business.
          business_description: nil,
          # The business's legal business name.
          business_name: nil,
          # The country of citizenship for an individual.
          citizenship_country: nil,
          # The connection ID for the connection the legal entity is associated with.
          # Defaults to the id of the connection designated with an is_default value of true
          # or the id of an existing operational connection if only one is available. Pass
          # in a value of null to prevent the connection from being associated with the
          # legal entity.
          connection_id: nil,
          # The country code where the business is incorporated in the ISO 3166-1 alpha-2 or
          # alpha-3 formats.
          country_of_incorporation: nil,
          # A business's formation date (YYYY-MM-DD).
          date_formed: nil,
          # An individual's date of birth (YYYY-MM-DD).
          date_of_birth: nil,
          doing_business_as_names: nil,
          # The entity's primary email.
          email: nil,
          # Monthly expected transaction volume in USD.
          expected_activity_volume: nil,
          # An individual's first name.
          first_name: nil,
          # A list of identifications for the legal entity.
          identifications: nil,
          # A list of industry classifications for the legal entity.
          industry_classifications: nil,
          # A description of the intended use of the legal entity.
          intended_use: nil,
          # An individual's last name.
          last_name: nil,
          # The legal entity associations and its child legal entities.
          legal_entity_associations: nil,
          # The type of legal entity.
          legal_entity_type: nil,
          # The business's legal structure.
          legal_structure: nil,
          # ISO 10383 market identifier code.
          listed_exchange: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # An individual's middle name.
          middle_name: nil,
          # A list of countries where the business operates (ISO 3166-1 alpha-2 or alpha-3
          # codes).
          operating_jurisdictions: nil,
          phone_numbers: nil,
          # Whether the individual is a politically exposed person.
          politically_exposed_person: nil,
          # An individual's preferred name.
          preferred_name: nil,
          # An individual's prefix.
          prefix: nil,
          # A list of primary social media URLs for the business.
          primary_social_media_sites: nil,
          # Array of regulatory bodies overseeing this institution.
          regulators: nil,
          # The risk rating of the legal entity. One of low, medium, high.
          risk_rating: nil,
          # The activation status of the legal entity. One of pending, active, suspended, or
          # closed.
          status: nil,
          # An individual's suffix.
          suffix: nil,
          # Information describing a third-party verification run by an external vendor.
          third_party_verification: nil,
          # Stock ticker symbol for publicly traded companies.
          ticker_symbol: nil,
          wealth_and_employment_details: nil,
          # The entity's primary website URL.
          website: nil
        )
        end

        sig do
          override.returns(
            {
              addresses:
                T::Array[ModernTreasury::LegalEntityAddressCreateRequest],
              bank_settings: T.nilable(ModernTreasury::LegalEntityBankSettings),
              business_description: T.nilable(String),
              business_name: T.nilable(String),
              citizenship_country: T.nilable(String),
              connection_id: T.nilable(String),
              country_of_incorporation: T.nilable(String),
              date_formed: T.nilable(Date),
              date_of_birth: T.nilable(Date),
              doing_business_as_names: T::Array[String],
              email: T.nilable(String),
              expected_activity_volume: T.nilable(Integer),
              first_name: T.nilable(String),
              identifications:
                T::Array[ModernTreasury::IdentificationCreateRequest],
              industry_classifications:
                T::Array[ModernTreasury::LegalEntityIndustryClassification],
              intended_use: T.nilable(String),
              last_name: T.nilable(String),
              legal_entity_associations:
                T.nilable(
                  T::Array[ModernTreasury::LegalEntityAssociationInlineCreate]
                ),
              legal_entity_type:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::OrSymbol,
              legal_structure:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::OrSymbol
                ),
              listed_exchange: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              middle_name: T.nilable(String),
              operating_jurisdictions: T::Array[String],
              phone_numbers:
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber
                ],
              politically_exposed_person: T.nilable(T::Boolean),
              preferred_name: T.nilable(String),
              prefix: T.nilable(String),
              primary_social_media_sites: T::Array[String],
              regulators:
                T.nilable(
                  T::Array[
                    ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Regulator
                  ]
                ),
              risk_rating:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::OrSymbol
                ),
              status:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::OrSymbol
                ),
              suffix: T.nilable(String),
              third_party_verification:
                T.nilable(
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification
                ),
              ticker_symbol: T.nilable(String),
              wealth_and_employment_details:
                T.nilable(ModernTreasury::LegalEntityWealthEmploymentDetail),
              website: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(
              :trust,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::LegalStructure::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::PhoneNumber,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({ phone_number: String }) }
          def to_hash
          end
        end

        class Regulator < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Regulator,
                ModernTreasury::Internal::AnyHash
              )
            end

          # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
          # (e.g., "US", "CA", "GB").
          sig { returns(String) }
          attr_accessor :jurisdiction

          # Full name of the regulatory body.
          sig { returns(String) }
          attr_accessor :name

          # Registration or identification number with the regulator.
          sig { returns(String) }
          attr_accessor :registration_number

          sig do
            params(
              jurisdiction: String,
              name: String,
              registration_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The country code where the regulator operates in the ISO 3166-1 alpha-2 format
            # (e.g., "US", "CA", "GB").
            jurisdiction:,
            # Full name of the regulatory body.
            name:,
            # Registration or identification number with the regulator.
            registration_number:
          )
          end

          sig do
            override.returns(
              {
                jurisdiction: String,
                name: String,
                registration_number: String
              }
            )
          end
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW =
            T.let(
              :low,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::RiskRating::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The activation status of the legal entity. One of pending, active, suspended, or
        # closed.
        module Status
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :closed,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification,
                ModernTreasury::Internal::AnyHash
              )
            end

          # The vendor that performed the verification, e.g. `persona`.
          sig do
            returns(
              ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor::OrSymbol
            )
          end
          attr_accessor :vendor

          # The identification of the third party verification in `vendor`'s system.
          sig { returns(String) }
          attr_accessor :vendor_verification_id

          # Information describing a third-party verification run by an external vendor.
          sig do
            params(
              vendor:
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor::OrSymbol,
              vendor_verification_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The vendor that performed the verification, e.g. `persona`.
            vendor:,
            # The identification of the third party verification in `vendor`'s system.
            vendor_verification_id:
          )
          end

          sig do
            override.returns(
              {
                vendor:
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor::OrSymbol,
                vendor_verification_id: String
              }
            )
          end
          def to_hash
          end

          # The vendor that performed the verification, e.g. `persona`.
          module Vendor
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERSONA =
              T.let(
                :persona,
                ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::ConnectionLegalEntityCreateParams::LegalEntity::ThirdPartyVerification::Vendor::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
