# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # A human friendly name for this counterparty.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting)) }
      def accounting
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::CounterpartyCreateParams::Accounting, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::CounterpartyCreateParams::Accounting, ModernTreasury::Util::AnyHash)
          )
      end
      def accounting=(_)
      end

      # The accounts for this counterparty.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])) }
      def accounts
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])
          .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account])
      end
      def accounts=(_)
      end

      # The counterparty's email.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_)
      end

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol)) }
      def ledger_type
      end

      sig do
        params(_: ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol)
          .returns(ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol)
      end
      def ledger_type=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity)) }
      def legal_entity
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, ModernTreasury::Util::AnyHash)
          )
      end
      def legal_entity=(_)
      end

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_remittance_advice=(_)
      end

      # Either a valid SSN or EIN.
      sig { returns(T.nilable(String)) }
      def taxpayer_identifier
      end

      sig { params(_: String).returns(String) }
      def taxpayer_identifier=(_)
      end

      # The verification status of the counterparty.
      sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol)) }
      def verification_status
      end

      sig do
        params(_: ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol)
          .returns(ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol)
      end
      def verification_status=(_)
      end

      sig do
        params(
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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
      end

      class Accounting < ModernTreasury::BaseModel
        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)) }
        def type
        end

        sig do
          params(_: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)
            .returns(ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)
        end
        def type=(_)
        end

        sig do
          params(type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(type: nil)
        end

        sig { override.returns({type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::OrSymbol}) }
        def to_hash
        end

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        module Type
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol) }

          CUSTOMER =
            T.let(:customer, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol)
          VENDOR = T.let(:vendor, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      class Account < ModernTreasury::BaseModel
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])) }
        def account_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail])
        end
        def account_details=(_)
        end

        # Can be `checking`, `savings` or `other`.
        sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
        def account_type
        end

        sig do
          params(_: ModernTreasury::Models::ExternalAccountType::OrSymbol)
            .returns(ModernTreasury::Models::ExternalAccountType::OrSymbol)
        end
        def account_type=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])) }
        def contact_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail])
        end
        def contact_details=(_)
        end

        # Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount)) }
        def ledger_account
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def ledger_account=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        # Required if receiving wire payments.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress)) }
        def party_address
        end

        sig do
          params(
            _: T.any(
              ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
              ModernTreasury::Util::AnyHash
            )
          )
            .returns(
              T.any(
                ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress,
                ModernTreasury::Util::AnyHash
              )
            )
        end
        def party_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_identifier
        end

        sig { params(_: String).returns(String) }
        def party_identifier=(_)
        end

        # If this value isn't provided, it will be inherited from the counterparty's name.
        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        # Either `individual` or `business`.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol)) }
        def party_type
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol))
            .returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::OrSymbol))
        end
        def party_type=(_)
        end

        # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        sig { returns(T.nilable(String)) }
        def plaid_processor_token
        end

        sig { params(_: String).returns(String) }
        def plaid_processor_token=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])) }
        def routing_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail])
        end
        def routing_details=(_)
        end

        sig do
          params(
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
        )
        end

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
        def to_hash
        end

        class AccountDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
              )
            )
          end
          def account_number_type
          end

          sig do
            params(
              _: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
              )
          end
          def account_number_type=(_)
          end

          sig do
            params(
              account_number: String,
              account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(account_number:, account_number_type: nil)
          end

          sig do
            override
              .returns(
                {
                  account_number: String,
                  account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::OrSymbol
                }
              )
          end
          def to_hash
          end

          module AccountNumberType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def contact_identifier
          end

          sig { params(_: String).returns(String) }
          def contact_identifier=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
              )
            )
          end
          def contact_identifier_type
          end

          sig do
            params(
              _: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
              )
          end
          def contact_identifier_type=(_)
          end

          sig do
            params(
              contact_identifier: String,
              contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(contact_identifier: nil, contact_identifier_type: nil)
          end

          sig do
            override
              .returns(
                {
                  contact_identifier: String,
                  contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::OrSymbol
                }
              )
          end
          def to_hash
          end

          module ContactIdentifierType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The id of the ledger that this account belongs to.
          sig { returns(String) }
          def ledger_id
          end

          sig { params(_: String).returns(String) }
          def ledger_id=(_)
          end

          # The name of the ledger account.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The normal balance of the ledger account.
          sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
          def normal_balance
          end

          sig do
            params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
              .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
          end
          def normal_balance=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(T.nilable(Integer)) }
          def currency_exponent
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def currency_exponent=(_)
          end

          # The description of the ledger account.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # The array of ledger account category ids that this ledger account should be a
          #   child of.
          sig { returns(T.nilable(T::Array[String])) }
          def ledger_account_category_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def ledger_account_category_ids=(_)
          end

          # If the ledger account links to another object in Modern Treasury, the id will be
          #   populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          def ledgerable_id
          end

          sig { params(_: String).returns(String) }
          def ledgerable_id=(_)
          end

          # If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol
              )
            )
          end
          def ledgerable_type
          end

          sig do
            params(
              _: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::OrSymbol
              )
          end
          def ledgerable_type=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # Specifies a ledger account object that will be created with the external
          #   account. The resulting ledger account is linked to the external account for
          #   auto-ledgering Payment objects. See
          #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          #   for more details.
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
          )
          end

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
          def to_hash
          end

          # If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          module LedgerableType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # Locality or City.
          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # Region or State.
          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

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
          def to_hash
          end
        end

        # Either `individual` or `business`.
        module PartyType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol) }

          BUSINESS =
            T.let(:business, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol)
          INDIVIDUAL =
            T.let(:individual, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType::TaggedSymbol])
            end
            def values
            end
          end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig do
            returns(
              ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol
            )
          end
          def routing_number_type
          end

          sig do
            params(
              _: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol
              )
          end
          def routing_number_type=(_)
          end

          sig do
            returns(
              T.nilable(ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol)
            )
          end
          def payment_type
          end

          sig do
            params(_: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol)
              .returns(ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol)
          end
          def payment_type=(_)
          end

          sig do
            params(
              routing_number: String,
              routing_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::OrSymbol,
              payment_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(routing_number:, routing_number_type:, payment_type: nil)
          end

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
          def to_hash
          end

          module RoutingNumberType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          module PaymentType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end
      end

      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      module LedgerType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol) }

        CUSTOMER = T.let(:customer, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol)
        VENDOR = T.let(:vendor, ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LedgerType::TaggedSymbol]) }
          def values
          end
        end
      end

      class LegalEntity < ModernTreasury::BaseModel
        # The type of legal entity.
        sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol) }
        def legal_entity_type
        end

        sig do
          params(_: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol)
            .returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol)
        end
        def legal_entity_type=(_)
        end

        # A list of addresses for the entity.
        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])) }
        def addresses
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address])
        end
        def addresses=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
        def bank_settings
        end

        sig do
          params(_: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
            .returns(T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
        end
        def bank_settings=(_)
        end

        # The business's legal business name.
        sig { returns(T.nilable(String)) }
        def business_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def business_name=(_)
        end

        # The country of citizenship for an individual.
        sig { returns(T.nilable(String)) }
        def citizenship_country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def citizenship_country=(_)
        end

        # A business's formation date (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        def date_formed
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_formed=(_)
        end

        # An individual's date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(Date)) }
        def date_of_birth
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date_of_birth=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def doing_business_as_names
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def doing_business_as_names=(_)
        end

        # The entity's primary email.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        # An individual's first name.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        # A list of identifications for the legal entity.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
          )
        end
        def identifications
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification])
        end
        def identifications=(_)
        end

        # An individual's last name.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_)
        end

        # The legal entity associations and its child legal entities.
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
          )
        end
        def legal_entity_associations
        end

        sig do
          params(
            _: T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
          )
            .returns(
              T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation])
            )
        end
        def legal_entity_associations=(_)
        end

        # The business's legal structure.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol)
          )
        end
        def legal_structure
        end

        sig do
          params(
            _: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol)
          )
            .returns(
              T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::OrSymbol)
            )
        end
        def legal_structure=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # An individual's middle name.
        sig { returns(T.nilable(String)) }
        def middle_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def middle_name=(_)
        end

        sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])) }
        def phone_numbers
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])
            .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber])
        end
        def phone_numbers=(_)
        end

        # Whether the individual is a politically exposed person.
        sig { returns(T.nilable(T::Boolean)) }
        def politically_exposed_person
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def politically_exposed_person=(_)
        end

        # An individual's preferred name.
        sig { returns(T.nilable(String)) }
        def preferred_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def preferred_name=(_)
        end

        # An individual's prefix.
        sig { returns(T.nilable(String)) }
        def prefix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def prefix=(_)
        end

        # The risk rating of the legal entity. One of low, medium, high.
        sig { returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol)) }
        def risk_rating
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol))
            .returns(T.nilable(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::OrSymbol))
        end
        def risk_rating=(_)
        end

        # An individual's suffix.
        sig { returns(T.nilable(String)) }
        def suffix
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def suffix=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
        def wealth_and_employment_details
        end

        sig do
          params(
            _: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
            )
        end
        def wealth_and_employment_details=(_)
        end

        # The entity's primary website URL.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        sig do
          params(
            legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
            addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address],
            bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
            business_name: T.nilable(String),
            citizenship_country: T.nilable(String),
            date_formed: T.nilable(Date),
            date_of_birth: T.nilable(Date),
            doing_business_as_names: T::Array[String],
            email: T.nilable(String),
            first_name: T.nilable(String),
            identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification],
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
          )
            .returns(T.attached_class)
        end
        def self.new(
          legal_entity_type:,
          addresses: nil,
          bank_settings: nil,
          business_name: nil,
          citizenship_country: nil,
          date_formed: nil,
          date_of_birth: nil,
          doing_business_as_names: nil,
          email: nil,
          first_name: nil,
          identifications: nil,
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
        )
        end

        sig do
          override
            .returns(
              {
                legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::OrSymbol,
                addresses: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification],
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
        def to_hash
        end

        # The type of legal entity.
        module LegalEntityType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
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

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        class Address < ModernTreasury::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          # Locality or City.
          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # Region or State.
          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          # The types of this address.
          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol]
              )
            )
          end
          def address_types
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol]
            )
              .returns(
                T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::OrSymbol]
              )
          end
          def address_types=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

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
          def to_hash
          end

          module AddressType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class Identification < ModernTreasury::BaseModel
          # The ID number of identification document.
          sig { returns(String) }
          def id_number
          end

          sig { params(_: String).returns(String) }
          def id_number=(_)
          end

          # The type of ID number.
          sig { returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol) }
          def id_type
          end

          sig do
            params(_: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol)
              .returns(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol)
          end
          def id_type=(_)
          end

          # The ISO 3166-1 alpha-2 country code of the country that issued the
          #   identification
          sig { returns(T.nilable(String)) }
          def issuing_country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def issuing_country=(_)
          end

          sig do
            params(
              id_number: String,
              id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::OrSymbol,
              issuing_country: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(id_number:, id_type:, issuing_country: nil)
          end

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
          def to_hash
          end

          # The type of ID number.
          module IDType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class LegalEntityAssociation < ModernTreasury::BaseModel
          sig do
            returns(
              T::Array[
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ]
            )
          end
          def relationship_types
          end

          sig do
            params(
              _: T::Array[
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ]
            )
              .returns(
                T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
                ]
              )
          end
          def relationship_types=(_)
          end

          # The child legal entity.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity
              )
            )
          end
          def child_legal_entity
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
                  ModernTreasury::Util::AnyHash
                )
              )
          end
          def child_legal_entity=(_)
          end

          # The ID of the child legal entity.
          sig { returns(T.nilable(String)) }
          def child_legal_entity_id
          end

          sig { params(_: String).returns(String) }
          def child_legal_entity_id=(_)
          end

          # The child entity's ownership percentage iff they are a beneficial owner.
          sig { returns(T.nilable(Integer)) }
          def ownership_percentage
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ownership_percentage=(_)
          end

          # The job title of the child entity at the parent entity.
          sig { returns(T.nilable(String)) }
          def title
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def title=(_)
          end

          sig do
            params(
              relationship_types: T::Array[
              ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::OrSymbol
              ],
              child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
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
          )
          end

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
          def to_hash
          end

          # A list of relationship types for how the child entity relates to parent entity.
          module RelationshipType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
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

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          class ChildLegalEntity < ModernTreasury::BaseModel
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
            def addresses
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                  ]
                )
            end
            def addresses=(_)
            end

            sig { returns(T.nilable(ModernTreasury::Models::BankSettings)) }
            def bank_settings
            end

            sig do
              params(_: T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
                .returns(T.nilable(T.any(ModernTreasury::Models::BankSettings, ModernTreasury::Util::AnyHash)))
            end
            def bank_settings=(_)
            end

            # The business's legal business name.
            sig { returns(T.nilable(String)) }
            def business_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def business_name=(_)
            end

            # The country of citizenship for an individual.
            sig { returns(T.nilable(String)) }
            def citizenship_country
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def citizenship_country=(_)
            end

            # A business's formation date (YYYY-MM-DD).
            sig { returns(T.nilable(Date)) }
            def date_formed
            end

            sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
            def date_formed=(_)
            end

            # An individual's date of birth (YYYY-MM-DD).
            sig { returns(T.nilable(Date)) }
            def date_of_birth
            end

            sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
            def date_of_birth=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def doing_business_as_names
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def doing_business_as_names=(_)
            end

            # The entity's primary email.
            sig { returns(T.nilable(String)) }
            def email
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_)
            end

            # An individual's first name.
            sig { returns(T.nilable(String)) }
            def first_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def first_name=(_)
            end

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
            def identifications
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                  ]
                )
            end
            def identifications=(_)
            end

            # An individual's last name.
            sig { returns(T.nilable(String)) }
            def last_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def last_name=(_)
            end

            # The type of legal entity.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
                )
              )
            end
            def legal_entity_type
            end

            sig do
              params(
                _: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
              )
                .returns(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::OrSymbol
                )
            end
            def legal_entity_type=(_)
            end

            # The business's legal structure.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                )
              )
            end
            def legal_structure
            end

            sig do
              params(
                _: T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                )
              )
                .returns(
                  T.nilable(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::OrSymbol
                  )
                )
            end
            def legal_structure=(_)
            end

            # Additional data represented as key-value pairs. Both the key and value must be
            #   strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            # An individual's middle name.
            sig { returns(T.nilable(String)) }
            def middle_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def middle_name=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
              )
            end
            def phone_numbers
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber
                  ]
                )
            end
            def phone_numbers=(_)
            end

            # Whether the individual is a politically exposed person.
            sig { returns(T.nilable(T::Boolean)) }
            def politically_exposed_person
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def politically_exposed_person=(_)
            end

            # An individual's preferred name.
            sig { returns(T.nilable(String)) }
            def preferred_name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_name=(_)
            end

            # An individual's prefix.
            sig { returns(T.nilable(String)) }
            def prefix
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def prefix=(_)
            end

            # The risk rating of the legal entity. One of low, medium, high.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                )
              )
            end
            def risk_rating
            end

            sig do
              params(
                _: T.nilable(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                )
              )
                .returns(
                  T.nilable(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::OrSymbol
                  )
                )
            end
            def risk_rating=(_)
            end

            # An individual's suffix.
            sig { returns(T.nilable(String)) }
            def suffix
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def suffix=(_)
            end

            sig { returns(T.nilable(ModernTreasury::Models::WealthAndEmploymentDetails)) }
            def wealth_and_employment_details
            end

            sig do
              params(
                _: T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
              )
                .returns(
                  T.nilable(T.any(ModernTreasury::Models::WealthAndEmploymentDetails, ModernTreasury::Util::AnyHash))
                )
            end
            def wealth_and_employment_details=(_)
            end

            # The entity's primary website URL.
            sig { returns(T.nilable(String)) }
            def website
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def website=(_)
            end

            # The child legal entity.
            sig do
              params(
                addresses: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address
                ],
                bank_settings: T.nilable(ModernTreasury::Models::BankSettings),
                business_name: T.nilable(String),
                citizenship_country: T.nilable(String),
                date_formed: T.nilable(Date),
                date_of_birth: T.nilable(Date),
                doing_business_as_names: T::Array[String],
                email: T.nilable(String),
                first_name: T.nilable(String),
                identifications: T::Array[
                ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                ],
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
              )
                .returns(T.attached_class)
            end
            def self.new(
              addresses: nil,
              bank_settings: nil,
              business_name: nil,
              citizenship_country: nil,
              date_formed: nil,
              date_of_birth: nil,
              doing_business_as_names: nil,
              email: nil,
              first_name: nil,
              identifications: nil,
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
            )
            end

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
                    date_formed: T.nilable(Date),
                    date_of_birth: T.nilable(Date),
                    doing_business_as_names: T::Array[String],
                    email: T.nilable(String),
                    first_name: T.nilable(String),
                    identifications: T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification
                    ],
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
            def to_hash
            end

            class Address < ModernTreasury::BaseModel
              # Country code conforms to [ISO 3166-1 alpha-2]
              sig { returns(T.nilable(String)) }
              def country
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def country=(_)
              end

              sig { returns(T.nilable(String)) }
              def line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_)
              end

              # Locality or City.
              sig { returns(T.nilable(String)) }
              def locality
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def locality=(_)
              end

              # The postal code of the address.
              sig { returns(T.nilable(String)) }
              def postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def postal_code=(_)
              end

              # Region or State.
              sig { returns(T.nilable(String)) }
              def region
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def region=(_)
              end

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
              def address_types
              end

              sig do
                params(
                  _: T::Array[
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                  ]
                )
                  .returns(
                    T::Array[
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                    ]
                  )
              end
              def address_types=(_)
              end

              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

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
                      address_types: T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::OrSymbol
                      ],
                      line2: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              module AddressType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
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

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end

            class Identification < ModernTreasury::BaseModel
              # The ID number of identification document.
              sig { returns(String) }
              def id_number
              end

              sig { params(_: String).returns(String) }
              def id_number=(_)
              end

              # The type of ID number.
              sig do
                returns(
                  ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol
                )
              end
              def id_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol
                  )
              end
              def id_type=(_)
              end

              # The ISO 3166-1 alpha-2 country code of the country that issued the
              #   identification
              sig { returns(T.nilable(String)) }
              def issuing_country
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def issuing_country=(_)
              end

              sig do
                params(
                  id_number: String,
                  id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::OrSymbol,
                  issuing_country: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(id_number:, id_type:, issuing_country: nil)
              end

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
              def to_hash
              end

              # The type of ID number.
              module IDType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
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

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end

            # The type of legal entity.
            module LegalEntityType
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # The business's legal structure.
            module LegalStructure
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            class PhoneNumber < ModernTreasury::BaseModel
              sig { returns(T.nilable(String)) }
              def phone_number
              end

              sig { params(_: String).returns(String) }
              def phone_number=(_)
              end

              # A list of phone numbers in E.164 format.
              sig { params(phone_number: String).returns(T.attached_class) }
              def self.new(phone_number: nil)
              end

              sig { override.returns({phone_number: String}) }
              def to_hash
              end
            end

            # The risk rating of the legal entity. One of low, medium, high.
            module RiskRating
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end
        end

        # The business's legal structure.
        module LegalStructure
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol) }

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

          class << self
            sig do
              override
                .returns(
                  T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        class PhoneNumber < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: String).returns(String) }
          def phone_number=(_)
          end

          # A list of phone numbers in E.164 format.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number: nil)
          end

          sig { override.returns({phone_number: String}) }
          def to_hash
          end
        end

        # The risk rating of the legal entity. One of low, medium, high.
        module RiskRating
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol) }

          LOW =
            T.let(:low, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)
          MEDIUM =
            T.let(:medium, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)
          HIGH =
            T.let(:high, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      # The verification status of the counterparty.
      module VerificationStatus
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol) }

        DENIED =
          T.let(:denied, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        NEEDS_APPROVAL =
          T.let(:needs_approval, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        UNVERIFIED =
          T.let(:unverified, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)
        VERIFIED =
          T.let(:verified, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
