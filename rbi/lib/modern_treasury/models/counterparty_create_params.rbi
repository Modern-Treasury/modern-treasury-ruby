# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # A human friendly name for this counterparty.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting)) }
      attr_reader :accounting

      sig do
        params(
          accounting: T.any(ModernTreasury::Models::CounterpartyCreateParams::Accounting, ModernTreasury::Internal::AnyHash)
        )
          .void
      end
      attr_writer :accounting

      # The accounts for this counterparty.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])) }
      attr_reader :accounts

      sig do
        params(
          accounts: T::Array[T.any(ModernTreasury::Models::CounterpartyCreateParams::Account, ModernTreasury::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :accounts

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol)) }
      attr_reader :ledger_type

      sig { params(ledger_type: ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol).void }
      attr_writer :ledger_type

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)) }
      attr_reader :legal_entity

      sig do
        params(
          legal_entity: T.any(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, ModernTreasury::Internal::AnyHash)
        )
          .void
      end
      attr_writer :legal_entity

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Send an email to the counterparty whenever an associated payment order is sent
      # to the bank.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_remittance_advice

      sig { params(send_remittance_advice: T::Boolean).void }
      attr_writer :send_remittance_advice

      # Either a valid SSN or EIN.
      sig { returns(T.nilable(String)) }
      attr_reader :taxpayer_identifier

      sig { params(taxpayer_identifier: String).void }
      attr_writer :taxpayer_identifier

      # The verification status of the counterparty.
      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol)) }
      attr_reader :verification_status

      sig do
        params(
          verification_status: ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol
        )
          .void
      end
      attr_writer :verification_status

      sig do
        params(
          name: T.nilable(String),
          accounting: T.any(ModernTreasury::Models::CounterpartyCreateParams::Accounting, ModernTreasury::Internal::AnyHash),
          accounts: T::Array[T.any(ModernTreasury::Models::CounterpartyCreateParams::Account, ModernTreasury::Internal::AnyHash)],
          email: T.nilable(String),
          ledger_type: ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol,
          legal_entity: T.any(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, ModernTreasury::Internal::AnyHash),
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          verification_status: ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        name:,
        accounting: nil,
        accounts: nil,
        email: nil,
        ledger_type: nil,
        legal_entity: nil,
        legal_entity_id: nil,
        metadata: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        verification_status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              name: T.nilable(String),
              accounting: ModernTreasury::Models::CounterpartyCreateParams::Accounting,
              accounts: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account],
              email: T.nilable(String),
              ledger_type: ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol,
              legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity,
              legal_entity_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              send_remittance_advice: T::Boolean,
              taxpayer_identifier: String,
              verification_status: ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      class Accounting < ModernTreasury::Internal::Type::BaseModel
        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(type: nil); end

        sig { override.returns({type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol}) }
        def to_hash; end

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        module Type
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol) }

          CUSTOMER =
            T.let(:customer, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol)
          VENDOR = T.let(:vendor, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class Account < ModernTreasury::Internal::Type::BaseModel
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])) }
        attr_reader :account_details

        sig do
          params(
            account_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
        end
        attr_writer :account_details

        # Can be `checking`, `savings` or `other`.
        sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
        attr_reader :account_type

        sig { params(account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol).void }
        attr_writer :account_type

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])) }
        attr_reader :contact_details

        sig do
          params(
            contact_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
        end
        attr_writer :contact_details

        # Specifies a ledger account object that will be created with the external
        # account. The resulting ledger account is linked to the external account for
        # auto-ledgering Payment objects. See
        # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        # for more details.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)) }
        attr_reader :ledger_account

        sig do
          params(
            ledger_account: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
              ModernTreasury::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :ledger_account

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # A nickname for the external account. This is only for internal usage and won't
        # affect any payments
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Required if receiving wire payments.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)) }
        attr_reader :party_address

        sig do
          params(
            party_address: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
              ModernTreasury::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :party_address

        sig { returns(T.nilable(String)) }
        attr_reader :party_identifier

        sig { params(party_identifier: String).void }
        attr_writer :party_identifier

        # If this value isn't provided, it will be inherited from the counterparty's name.
        sig { returns(T.nilable(String)) }
        attr_reader :party_name

        sig { params(party_name: String).void }
        attr_writer :party_name

        # Either `individual` or `business`.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol)) }
        attr_accessor :party_type

        # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        # you can pass the processor token in this field.
        sig { returns(T.nilable(String)) }
        attr_reader :plaid_processor_token

        sig { params(plaid_processor_token: String).void }
        attr_writer :plaid_processor_token

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])) }
        attr_reader :routing_details

        sig do
          params(
            routing_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
        end
        attr_writer :routing_details

        sig do
          params(
            account_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail,
                ModernTreasury::Internal::AnyHash
              )
            ],
            account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
            contact_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail,
                ModernTreasury::Internal::AnyHash
              )
            ],
            ledger_account: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
              ModernTreasury::Internal::AnyHash
            ),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
              ModernTreasury::Internal::AnyHash
            ),
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol),
            plaid_processor_token: String,
            routing_details: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_details: nil,
          account_type: nil,
          contact_details: nil,
          ledger_account: nil,
          metadata: nil,
          name: nil,
          party_address: nil,
          party_identifier: nil,
          party_name: nil,
          party_type: nil,
          plaid_processor_token: nil,
          routing_details: nil
        ); end
        sig do
          override
            .returns(
              {
                account_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail],
                account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
                contact_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail],
                ledger_account: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]
              }
            )
        end
        def to_hash; end

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :account_number

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
              )
            )
          end
          attr_reader :account_number_type

          sig do
            params(
              account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            )
              .void
          end
          attr_writer :account_number_type

          sig do
            params(
              account_number: String,
              account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(account_number:, account_number_type: nil); end

          sig do
            override
              .returns(
                {
                  account_number: String,
                  account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
                }
              )
          end
          def to_hash; end

          module AccountNumberType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
                )
              end

            AU_NUMBER =
              T.let(
                :au_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            CLABE =
              T.let(
                :clabe,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            HK_NUMBER =
              T.let(
                :hk_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            IBAN =
              T.let(
                :iban,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            ID_NUMBER =
              T.let(
                :id_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            NZ_NUMBER =
              T.let(
                :nz_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            PAN =
              T.let(
                :pan,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            SG_NUMBER =
              T.let(
                :sg_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )
            WALLET_ADDRESS =
              T.let(
                :wallet_address,
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class ContactDetail < ModernTreasury::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :contact_identifier

          sig { params(contact_identifier: String).void }
          attr_writer :contact_identifier

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
              )
            )
          end
          attr_reader :contact_identifier_type

          sig do
            params(
              contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
            )
              .void
          end
          attr_writer :contact_identifier_type

          sig do
            params(
              contact_identifier: String,
              contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(contact_identifier: nil, contact_identifier_type: nil); end

          sig do
            override
              .returns(
                {
                  contact_identifier: String,
                  contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
                }
              )
          end
          def to_hash; end

          module ContactIdentifierType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
                )
              end

            EMAIL =
              T.let(
                :email,
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )
            PHONE_NUMBER =
              T.let(
                :phone_number,
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :website,
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end

        class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
          # The currency of the ledger account.
          sig { returns(String) }
          attr_accessor :currency

          # The id of the ledger that this account belongs to.
          sig { returns(String) }
          attr_accessor :ledger_id

          # The name of the ledger account.
          sig { returns(String) }
          attr_accessor :name

          # The normal balance of the ledger account.
          sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
          attr_accessor :normal_balance

          # The currency exponent of the ledger account.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :currency_exponent

          # The description of the ledger account.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The array of ledger account category ids that this ledger account should be a
          # child of.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ledger_account_category_ids

          sig { params(ledger_account_category_ids: T::Array[String]).void }
          attr_writer :ledger_account_category_ids

          # If the ledger account links to another object in Modern Treasury, the id will be
          # populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          attr_reader :ledgerable_id

          sig { params(ledgerable_id: String).void }
          attr_writer :ledgerable_id

          # If the ledger account links to another object in Modern Treasury, the type will
          # be populated here, otherwise null. The value is one of internal_account or
          # external_account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol
              )
            )
          end
          attr_reader :ledgerable_type

          sig do
            params(
              ledgerable_type: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol
            )
              .void
          end
          attr_writer :ledgerable_type

          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Specifies a ledger account object that will be created with the external
          # account. The resulting ledger account is linked to the external account for
          # auto-ledgering Payment objects. See
          # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          # for more details.
          sig do
            params(
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String]
            )
              .returns(T.attached_class)
          end
          def self.new(
            currency:,
            ledger_id:,
            name:,
            normal_balance:,
            currency_exponent: nil,
            description: nil,
            ledger_account_category_ids: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil
          ); end
          sig do
            override
              .returns(
                {
                  currency: String,
                  ledger_id: String,
                  name: String,
                  normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol,
                  metadata: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash; end

          # If the ledger account links to another object in Modern Treasury, the type will
          # be populated here, otherwise null. The value is one of internal_account or
          # external_account.
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol
                )
              end

            COUNTERPARTY =
              T.let(
                :counterparty,
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol
              )
            EXTERNAL_ACCOUNT =
              T.let(
                :external_account,
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol
              )
            INTERNAL_ACCOUNT =
              T.let(
                :internal_account,
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol
              )
            VIRTUAL_ACCOUNT =
              T.let(
                :virtual_account,
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class PartyAddress < ModernTreasury::Internal::Type::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # Locality or City.
          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Region or State.
          sig { returns(T.nilable(String)) }
          attr_accessor :region

          # Required if receiving wire payments.
          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String)
                }
              )
          end
          def to_hash; end
        end

        # Either `individual` or `business`.
        module PartyType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol) }

          BUSINESS =
            T.let(:business, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol)
          INDIVIDUAL =
            T.let(:individual, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol])
          end
          def self.values; end
        end

        class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :routing_number

          sig do
            returns(
              ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol
            )
          end
          attr_accessor :routing_number_type

          sig do
            returns(
              T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol)
            )
          end
          attr_reader :payment_type

          sig do
            params(
              payment_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
            )
              .void
          end
          attr_writer :payment_type

          sig do
            params(
              routing_number: String,
              routing_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol,
              payment_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(routing_number:, routing_number_type:, payment_type: nil); end

          sig do
            override
              .returns(
                {
                  routing_number: String,
                  routing_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol,
                  payment_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
                }
              )
          end
          def to_hash; end

          module RoutingNumberType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
                )
              end

            ABA =
              T.let(
                :aba,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            AU_BSB =
              T.let(
                :au_bsb,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            BR_CODIGO =
              T.let(
                :br_codigo,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CA_CPA =
              T.let(
                :ca_cpa,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CHIPS =
              T.let(
                :chips,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            CNAPS =
              T.let(
                :cnaps,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            DK_INTERBANK_CLEARING_CODE =
              T.let(
                :dk_interbank_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            GB_SORT_CODE =
              T.let(
                :gb_sort_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            HK_INTERBANK_CLEARING_CODE =
              T.let(
                :hk_interbank_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            HU_INTERBANK_CLEARING_CODE =
              T.let(
                :hu_interbank_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            ID_SKNBI_CODE =
              T.let(
                :id_sknbi_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            IN_IFSC =
              T.let(
                :in_ifsc,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            JP_ZENGIN_CODE =
              T.let(
                :jp_zengin_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            MY_BRANCH_CODE =
              T.let(
                :my_branch_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            MX_BANK_IDENTIFIER =
              T.let(
                :mx_bank_identifier,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            NZ_NATIONAL_CLEARING_CODE =
              T.let(
                :nz_national_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            PL_NATIONAL_CLEARING_CODE =
              T.let(
                :pl_national_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SE_BANKGIRO_CLEARING_CODE =
              T.let(
                :se_bankgiro_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SG_INTERBANK_CLEARING_CODE =
              T.let(
                :sg_interbank_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            SWIFT =
              T.let(
                :swift,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            ZA_NATIONAL_CLEARING_CODE =
              T.let(
                :za_national_clearing_code,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol]
                )
            end
            def self.values; end
          end

          module PaymentType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
                )
              end

            ACH =
              T.let(
                :ach,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            AU_BECS =
              T.let(
                :au_becs,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            BACS =
              T.let(
                :bacs,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            BOOK =
              T.let(
                :book,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CARD =
              T.let(
                :card,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CHATS =
              T.let(
                :chats,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CHECK =
              T.let(
                :check,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            CROSS_BORDER =
              T.let(
                :cross_border,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            DK_NETS =
              T.let(
                :dk_nets,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            EFT =
              T.let(
                :eft,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            HU_ICS =
              T.let(
                :hu_ics,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            INTERAC =
              T.let(
                :interac,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            MASAV =
              T.let(
                :masav,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            MX_CCEN =
              T.let(
                :mx_ccen,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NEFT =
              T.let(
                :neft,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NICS =
              T.let(
                :nics,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            NZ_BECS =
              T.let(
                :nz_becs,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            PL_ELIXIR =
              T.let(
                :pl_elixir,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            PROVXCHANGE =
              T.let(
                :provxchange,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            RO_SENT =
              T.let(
                :ro_sent,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SE_BANKGIROT =
              T.let(
                :se_bankgirot,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SEN =
              T.let(
                :sen,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SEPA =
              T.let(
                :sepa,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SG_GIRO =
              T.let(
                :sg_giro,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SIC =
              T.let(
                :sic,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SIGNET =
              T.let(
                :signet,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            SKNBI =
              T.let(
                :sknbi,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            WIRE =
              T.let(
                :wire,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )
            ZENGIN =
              T.let(
                :zengin,
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end
      end

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      module LedgerType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol) }

        CUSTOMER = T.let(:customer, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol)
        VENDOR = T.let(:vendor, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol]) }
        def self.values; end
      end

      class LegalEntity < ModernTreasury::Internal::Type::BaseModel
        # The type of legal entity.
        sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol) }
        attr_accessor :legal_entity_type

        # A list of addresses for the entity.
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])) }
        attr_reader :addresses

        sig do
          params(
            addresses: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
        end
        attr_writer :addresses

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        attr_reader :bank_settings

        sig do
          params(
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash))
          )
            .void
        end
        attr_writer :bank_settings

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :citizenship_country

        sig { returns(T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail)) }
        attr_reader :compliance_details

        sig do
          params(
            compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash))
          )
            .void
        end
        attr_writer :compliance_details

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

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # A list of identifications for the legal entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
          )
        end
        attr_reader :identifications

        sig do
          params(
            identifications: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
        end
        attr_writer :identifications

        # A list of industry classifications for the legal entity.
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityIndustryClassification])) }
        attr_reader :industry_classifications

        sig do
          params(
            industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :industry_classifications

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal entity associations and its child legal entities.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
          )
        end
        attr_accessor :legal_entity_associations

        # The business's legal structure.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol)
          )
        end
        attr_accessor :legal_structure

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])) }
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber,
                ModernTreasury::Internal::AnyHash
              )
            ]
          )
            .void
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

        # The risk rating of the legal entity. One of low, medium, high.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol)) }
        attr_accessor :risk_rating

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        attr_reader :wealth_and_employment_details

        sig do
          params(
            wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash))
          )
            .void
        end
        attr_writer :wealth_and_employment_details

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        sig do
          params(
            legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
            addresses: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address,
                ModernTreasury::Internal::AnyHash
              )
            ],
            bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash)),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash)),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification,
                ModernTreasury::Internal::AnyHash
              )
            ],
            industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)],
            last_name: T.nilable(String),
            legal_entity_associations: T.nilable(
              T::Array[
                T.any(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation,
                  ModernTreasury::Internal::AnyHash
                )
              ]
            ),
            legal_structure: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol),
            metadata: T::Hash[Symbol, String],
            middle_name: T.nilable(String),
            phone_numbers: T::Array[
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber,
                ModernTreasury::Internal::AnyHash
              )
            ],
            politically_exposed_person: T.nilable(T::Boolean),
            preferred_name: T.nilable(String),
            prefix: T.nilable(String),
            risk_rating: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol),
            suffix: T.nilable(String),
            wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash)),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          legal_entity_type:,
          addresses: nil,
          bank_settings: nil,
          business_name: nil,
          citizenship_country: nil,
          compliance_details: nil,
          date_formed: nil,
          date_of_birth: nil,
          doing_business_as_names: nil,
          email: nil,
          first_name: nil,
          identifications: nil,
          industry_classifications: nil,
          last_name: nil,
          legal_entity_associations: nil,
          legal_structure: nil,
          metadata: nil,
          middle_name: nil,
          phone_numbers: nil,
          politically_exposed_person: nil,
          preferred_name: nil,
          prefix: nil,
          risk_rating: nil,
          suffix: nil,
          wealth_and_employment_details: nil,
          website: nil
        ); end
        sig do
          override
            .returns(
              {
                legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                compliance_details: T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification],
                industry_classifications: T::Array[ModernTreasury::Models::LegalEntityIndustryClassification],
                last_name: T.nilable(String),
                legal_entity_associations: T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation]),
                legal_structure: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                website: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
              )
            end

          BUSINESS =
            T.let(
              :business,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class Address < ModernTreasury::Internal::Type::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # Locality or City.
          sig { returns(T.nilable(String)) }
          attr_accessor :locality

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Region or State.
          sig { returns(T.nilable(String)) }
          attr_accessor :region

          # The types of this address.
          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol]
              )
            )
          end
          attr_reader :address_types

          sig do
            params(
              address_types: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol]
            )
              .void
          end
          attr_writer :address_types

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String),
              address_types: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol],
              line2: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol],
                  line2: T.nilable(String)
                }
              )
          end
          def to_hash; end

          module AddressType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
                )
              end

            BUSINESS =
              T.let(
                :business,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            MAILING =
              T.let(
                :mailing,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            PO_BOX =
              T.let(
                :po_box,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )
            RESIDENTIAL =
              T.let(
                :residential,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Identification < ModernTreasury::Internal::Type::BaseModel
          # The ID number of identification document.
          sig { returns(String) }
          attr_accessor :id_number

          # The type of ID number.
          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol) }
          attr_accessor :id_type

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          # identification
          sig { returns(T.nilable(String)) }
          attr_accessor :issuing_country

          sig do
            params(
              id_number: String,
              id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(id_number:, id_type:, issuing_country: nil); end

          sig do
            override
              .returns(
                {
                  id_number: String,
                  id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol,
                  issuing_country: T.nilable(String)
                }
              )
          end
          def to_hash; end

          # The type of ID number.
          module IDType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
                )
              end

            AR_CUIL =
              T.let(
                :ar_cuil,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            AR_CUIT =
              T.let(
                :ar_cuit,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CNPJ =
              T.let(
                :br_cnpj,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            BR_CPF =
              T.let(
                :br_cpf,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUN =
              T.let(
                :cl_run,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CL_RUT =
              T.let(
                :cl_rut,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_CEDULAS =
              T.let(
                :co_cedulas,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            CO_NIT =
              T.let(
                :co_nit,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_ID =
              T.let(
                :hn_id,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            HN_RTN =
              T.let(
                :hn_rtn,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            IN_LEI =
              T.let(
                :in_lei,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_BRN =
              T.let(
                :kr_brn,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_CRN =
              T.let(
                :kr_crn,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            KR_RRN =
              T.let(
                :kr_rrn,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :passport,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_TIN =
              T.let(
                :sa_tin,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            SA_VAT =
              T.let(
                :sa_vat,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_EIN =
              T.let(
                :us_ein,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_ITIN =
              T.let(
                :us_itin,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            US_SSN =
              T.let(
                :us_ssn,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )
            VN_TIN =
              T.let(
                :vn_tin,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class LegalEntityAssociation < ModernTreasury::Internal::Type::BaseModel
          sig do
            returns(
              T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ]
            )
          end
          attr_accessor :relationship_types

          # The child legal entity.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
              )
            )
          end
          attr_reader :child_legal_entity

          sig do
            params(
              child_legal_entity: T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                ModernTreasury::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :child_legal_entity

          # The ID of the child legal entity.
          sig { returns(T.nilable(String)) }
          attr_reader :child_legal_entity_id

          sig { params(child_legal_entity_id: String).void }
          attr_writer :child_legal_entity_id

          # The child entity's ownership percentage iff they are a beneficial owner.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ownership_percentage

          # The job title of the child entity at the parent entity.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              relationship_types: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ],
              child_legal_entity: T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                ModernTreasury::Internal::AnyHash
              ),
              child_legal_entity_id: String,
              ownership_percentage: T.nilable(Integer),
              title: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            relationship_types:,
            child_legal_entity: nil,
            child_legal_entity_id: nil,
            ownership_percentage: nil,
            title: nil
          ); end
          sig do
            override
              .returns(
                {
                  relationship_types: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                  ],
                  child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                  child_legal_entity_id: String,
                  ownership_percentage: T.nilable(Integer),
                  title: T.nilable(String)
                }
              )
          end
          def to_hash; end

          # A list of relationship types for how the child entity relates to parent entity.
          module RelationshipType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
                )
              end

            BENEFICIAL_OWNER =
              T.let(
                :beneficial_owner,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )
            CONTROL_PERSON =
              T.let(
                :control_person,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end

          class ChildLegalEntity < ModernTreasury::Internal::Type::BaseModel
            # A list of addresses for the entity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                  ]
                )
              )
            end
            attr_reader :addresses

            sig do
              params(
                addresses: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address,
                    ModernTreasury::Internal::AnyHash
                  )
                ]
              )
                .void
            end
            attr_writer :addresses

            sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
            attr_reader :bank_settings

            sig do
              params(
                bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash))
              )
                .void
            end
            attr_writer :bank_settings

            # The business's legal business name.
            sig { returns(T.nilable(String)) }
            attr_accessor :business_name

            # The country of citizenship for an individual.
            sig { returns(T.nilable(String)) }
            attr_accessor :citizenship_country

            sig { returns(T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail)) }
            attr_reader :compliance_details

            sig do
              params(
                compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash))
              )
                .void
            end
            attr_writer :compliance_details

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

            # An individual's first name.
            sig { returns(T.nilable(String)) }
            attr_accessor :first_name

            # A list of identifications for the legal entity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                  ]
                )
              )
            end
            attr_reader :identifications

            sig do
              params(
                identifications: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification,
                    ModernTreasury::Internal::AnyHash
                  )
                ]
              )
                .void
            end
            attr_writer :identifications

            # A list of industry classifications for the legal entity.
            sig { returns(T.nilable(T::Array[ModernTreasury::Models::LegalEntityIndustryClassification])) }
            attr_reader :industry_classifications

            sig do
              params(
                industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)]
              )
                .void
            end
            attr_writer :industry_classifications

            # An individual's last name.
            sig { returns(T.nilable(String)) }
            attr_accessor :last_name

            # The type of legal entity.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
                )
              )
            end
            attr_reader :legal_entity_type

            sig do
              params(
                legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
              )
                .void
            end
            attr_writer :legal_entity_type

            # The business's legal structure.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                )
              )
            end
            attr_accessor :legal_structure

            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # An individual's middle name.
            sig { returns(T.nilable(String)) }
            attr_accessor :middle_name

            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
              )
            end
            attr_reader :phone_numbers

            sig do
              params(
                phone_numbers: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber,
                    ModernTreasury::Internal::AnyHash
                  )
                ]
              )
                .void
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

            # The risk rating of the legal entity. One of low, medium, high.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                )
              )
            end
            attr_accessor :risk_rating

            # An individual's suffix.
            sig { returns(T.nilable(String)) }
            attr_accessor :suffix

            sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
            attr_reader :wealth_and_employment_details

            sig do
              params(
                wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash))
              )
                .void
            end
            attr_writer :wealth_and_employment_details

            # The entity's primary website URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :website

            # The child legal entity.
            sig do
              params(
                addresses: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address,
                    ModernTreasury::Internal::AnyHash
                  )
                ],
                bank_settings: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Internal::AnyHash)),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                compliance_details: T.nilable(T.any(ModernTreasury::Models::LegalEntityComplianceDetail, ModernTreasury::Internal::AnyHash)),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification,
                    ModernTreasury::Internal::AnyHash
                  )
                ],
                industry_classifications: T::Array[T.any(ModernTreasury::Models::LegalEntityIndustryClassification, ModernTreasury::Internal::AnyHash)],
                last_name: T.nilable(String),
                legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
                legal_structure: T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                ),
                metadata: T::Hash[Symbol, String],
                middle_name: T.nilable(String),
                phone_numbers: T::Array[
                  T.any(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber,
                    ModernTreasury::Internal::AnyHash
                  )
                ],
                politically_exposed_person: T.nilable(T::Boolean),
                preferred_name: T.nilable(String),
                prefix: T.nilable(String),
                risk_rating: T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                ),
                suffix: T.nilable(String),
                wealth_and_employment_details: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Internal::AnyHash)),
                website: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(
              addresses: nil,
              bank_settings: nil,
              business_name: nil,
              citizenship_country: nil,
              compliance_details: nil,
              date_formed: nil,
              date_of_birth: nil,
              doing_business_as_names: nil,
              email: nil,
              first_name: nil,
              identifications: nil,
              industry_classifications: nil,
              last_name: nil,
              legal_entity_type: nil,
              legal_structure: nil,
              metadata: nil,
              middle_name: nil,
              phone_numbers: nil,
              politically_exposed_person: nil,
              preferred_name: nil,
              prefix: nil,
              risk_rating: nil,
              suffix: nil,
              wealth_and_employment_details: nil,
              website: nil
            ); end
            sig do
              override
                .returns(
                  {
                    addresses: T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                    ],
                    bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                    business_name: T.nilable(String),
                    citizenship_country: T.nilable(String),
                    compliance_details: T.nilable(ModernTreasury::Models::LegalEntityComplianceDetail),
                    date_formed: T.nilable(Date),
                    date_of_birth: T.nilable(Date),
                    doing_business_as_names: T::Array[String],
                    email: T.nilable(String),
                    first_name: T.nilable(String),
                    identifications: T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                    ],
                    industry_classifications: T::Array[ModernTreasury::Models::LegalEntityIndustryClassification],
                    last_name: T.nilable(String),
                    legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol,
                    legal_structure: T.nilable(
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                    ),
                    metadata: T::Hash[Symbol, String],
                    middle_name: T.nilable(String),
                    phone_numbers: T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                    ],
                    politically_exposed_person: T.nilable(T::Boolean),
                    preferred_name: T.nilable(String),
                    prefix: T.nilable(String),
                    risk_rating: T.nilable(
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                    ),
                    suffix: T.nilable(String),
                    wealth_and_employment_details: T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails),
                    website: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class Address < ModernTreasury::Internal::Type::BaseModel
              # Country code conforms to [ISO 3166-1 alpha-2]
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              sig { returns(T.nilable(String)) }
              attr_accessor :line1

              # Locality or City.
              sig { returns(T.nilable(String)) }
              attr_accessor :locality

              # The postal code of the address.
              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code

              # Region or State.
              sig { returns(T.nilable(String)) }
              attr_accessor :region

              # The types of this address.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :address_types

              sig do
                params(
                  address_types: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                  ]
                )
                  .void
              end
              attr_writer :address_types

              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              sig do
                params(
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String),
                  address_types: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                  ],
                  line2: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
                country:,
                line1:,
                locality:,
                postal_code:,
                region:,
                address_types: nil,
                line2: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      country: T.nilable(String),
                      line1: T.nilable(String),
                      locality: T.nilable(String),
                      postal_code: T.nilable(String),
                      region: T.nilable(String),
                      address_types: T::Array[
                        ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                      ],
                      line2: T.nilable(String)
                    }
                  )
              end
              def to_hash; end

              module AddressType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                    )
                  end

                BUSINESS =
                  T.let(
                    :business,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                MAILING =
                  T.let(
                    :mailing,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                PO_BOX =
                  T.let(
                    :po_box,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )
                RESIDENTIAL =
                  T.let(
                    :residential,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class Identification < ModernTreasury::Internal::Type::BaseModel
              # The ID number of identification document.
              sig { returns(String) }
              attr_accessor :id_number

              # The type of ID number.
              sig do
                returns(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol
                )
              end
              attr_accessor :id_type

              # The ISO 3166-1 alpha-2 country code of the country that issued the
              # identification
              sig { returns(T.nilable(String)) }
              attr_accessor :issuing_country

              sig do
                params(
                  id_number: String,
                  id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
                  issuing_country: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(id_number:, id_type:, issuing_country: nil); end

              sig do
                override
                  .returns(
                    {
                      id_number: String,
                      id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
                      issuing_country: T.nilable(String)
                    }
                  )
              end
              def to_hash; end

              # The type of ID number.
              module IDType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                    )
                  end

                AR_CUIL =
                  T.let(
                    :ar_cuil,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                AR_CUIT =
                  T.let(
                    :ar_cuit,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                BR_CNPJ =
                  T.let(
                    :br_cnpj,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                BR_CPF =
                  T.let(
                    :br_cpf,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CL_RUN =
                  T.let(
                    :cl_run,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CL_RUT =
                  T.let(
                    :cl_rut,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CO_CEDULAS =
                  T.let(
                    :co_cedulas,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                CO_NIT =
                  T.let(
                    :co_nit,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                HN_ID =
                  T.let(
                    :hn_id,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                HN_RTN =
                  T.let(
                    :hn_rtn,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                IN_LEI =
                  T.let(
                    :in_lei,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_BRN =
                  T.let(
                    :kr_brn,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_CRN =
                  T.let(
                    :kr_crn,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                KR_RRN =
                  T.let(
                    :kr_rrn,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                PASSPORT =
                  T.let(
                    :passport,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                SA_TIN =
                  T.let(
                    :sa_tin,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                SA_VAT =
                  T.let(
                    :sa_vat,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_EIN =
                  T.let(
                    :us_ein,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_ITIN =
                  T.let(
                    :us_itin,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                US_SSN =
                  T.let(
                    :us_ssn,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )
                VN_TIN =
                  T.let(
                    :vn_tin,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            # The type of legal entity.
            module LegalEntityType
              extend ModernTreasury::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                  )
                end

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            # The business's legal structure.
            module LegalStructure
              extend ModernTreasury::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                  )
                end

              CORPORATION =
                T.let(
                  :corporation,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              LLC =
                T.let(
                  :llc,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              NON_PROFIT =
                T.let(
                  :non_profit,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              PARTNERSHIP =
                T.let(
                  :partnership,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              SOLE_PROPRIETORSHIP =
                T.let(
                  :sole_proprietorship,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )
              TRUST =
                T.let(
                  :trust,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
              sig { returns(T.nilable(String)) }
              attr_reader :phone_number

              sig { params(phone_number: String).void }
              attr_writer :phone_number

              # A list of phone numbers in E.164 format.
              sig { params(phone_number: String).returns(T.attached_class) }
              def self.new(phone_number: nil); end

              sig { override.returns({phone_number: String}) }
              def to_hash; end
            end

            # The risk rating of the legal entity. One of low, medium, high.
            module RiskRating
              extend ModernTreasury::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                  )
                end

              LOW =
                T.let(
                  :low,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )
              MEDIUM =
                T.let(
                  :medium,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )
              HIGH =
                T.let(
                  :high,
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
              )
            end

          CORPORATION =
            T.let(
              :corporation,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          LLC =
            T.let(:llc, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol)
          NON_PROFIT =
            T.let(
              :non_profit,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          SOLE_PROPRIETORSHIP =
            T.let(
              :sole_proprietorship,
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol
            )
          TRUST =
            T.let(:trust, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class PhoneNumber < ModernTreasury::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil); end

          sig { override.returns({phone_number: String}) }
          def to_hash; end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol
              )
            end

          LOW =
            T.let(:low, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)
          MEDIUM =
            T.let(:medium, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)
          HIGH =
            T.let(:high, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)

          sig do
            override
              .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol) }

        DENIED =
          T.let(:denied, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        NEEDS_APPROVAL =
          T.let(:needs_approval, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        UNVERIFIED =
          T.let(:unverified, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        VERIFIED =
          T.let(:verified, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
