# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail])) }
      attr_reader :account_details

      sig do
        params(
          account_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :account_details

      # Can be `checking`, `savings` or `other`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
      attr_reader :account_type

      sig { params(account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol).void }
      attr_writer :account_type

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail])) }
      attr_reader :contact_details

      sig do
        params(
          contact_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :contact_details

      # Specifies a ledger account object that will be created with the external
      #   account. The resulting ledger account is linked to the external account for
      #   auto-ledgering Payment objects. See
      #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
      #   for more details.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount)) }
      attr_reader :ledger_account

      sig do
        params(
          ledger_account: T.any(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash)
        )
          .void
      end
      attr_writer :ledger_account

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # A nickname for the external account. This is only for internal usage and won't
      #   affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Required if receiving wire payments.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress)) }
      attr_reader :party_address

      sig do
        params(
          party_address: T.any(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress, ModernTreasury::Util::AnyHash)
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
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyType::OrSymbol)) }
      attr_accessor :party_type

      # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
      #   you can pass the processor token in this field.
      sig { returns(T.nilable(String)) }
      attr_reader :plaid_processor_token

      sig { params(plaid_processor_token: String).void }
      attr_writer :plaid_processor_token

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail])) }
      attr_reader :routing_details

      sig do
        params(
          routing_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail, ModernTreasury::Util::AnyHash)]
        )
          .void
      end
      attr_writer :routing_details

      sig do
        params(
          counterparty_id: T.nilable(String),
          account_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail, ModernTreasury::Util::AnyHash)],
          account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
          contact_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail, ModernTreasury::Util::AnyHash)],
          ledger_account: T.any(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount, ModernTreasury::Util::AnyHash),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: T.any(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress, ModernTreasury::Util::AnyHash),
          party_identifier: String,
          party_name: String,
          party_type: T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyType::OrSymbol),
          plaid_processor_token: String,
          routing_details: T::Array[T.any(ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail, ModernTreasury::Util::AnyHash)],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        counterparty_id:,
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
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              counterparty_id: T.nilable(String),
              account_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail],
              account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
              contact_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail],
              ledger_account: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              party_address: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress,
              party_identifier: String,
              party_name: String,
              party_type: T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyType::OrSymbol),
              plaid_processor_token: String,
              routing_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AccountDetail < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :account_number

        sig do
          returns(
            T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol)
          )
        end
        attr_reader :account_number_type

        sig do
          params(
            account_number_type: ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
          )
            .void
        end
        attr_writer :account_number_type

        sig do
          params(
            account_number: String,
            account_number_type: ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
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
                account_number_type: ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::OrSymbol
              }
            )
        end
        def to_hash
        end

        module AccountNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
              )
            end

          AU_NUMBER =
            T.let(
              :au_number,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          CLABE =
            T.let(
              :clabe,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          HK_NUMBER =
            T.let(
              :hk_number,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          IBAN =
            T.let(
              :iban,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          ID_NUMBER =
            T.let(
              :id_number,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          NZ_NUMBER =
            T.let(
              :nz_number,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          PAN =
            T.let(
              :pan,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          SG_NUMBER =
            T.let(
              :sg_number,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )
          WALLET_ADDRESS =
            T.let(
              :wallet_address,
              ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::AccountNumberType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class ContactDetail < ModernTreasury::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :contact_identifier

        sig { params(contact_identifier: String).void }
        attr_writer :contact_identifier

        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
            )
          )
        end
        attr_reader :contact_identifier_type

        sig do
          params(
            contact_identifier_type: ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
          )
            .void
        end
        attr_writer :contact_identifier_type

        sig do
          params(
            contact_identifier: String,
            contact_identifier_type: ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
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
                contact_identifier_type: ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::OrSymbol
              }
            )
        end
        def to_hash
        end

        module ContactIdentifierType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
              )
            end

          EMAIL =
            T.let(
              :email,
              ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::ContactIdentifierType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
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
        #   child of.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ledger_account_category_ids

        sig { params(ledger_account_category_ids: T::Array[String]).void }
        attr_writer :ledger_account_category_ids

        # If the ledger account links to another object in Modern Treasury, the id will be
        #   populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        sig do
          returns(
            T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol)
          )
        end
        attr_reader :ledgerable_type

        sig do
          params(
            ledgerable_type: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol
          )
            .void
        end
        attr_writer :ledgerable_type

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

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
            ledgerable_type: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
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
                ledgerable_type: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::OrSymbol,
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
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
              )
            end

          COUNTERPARTY =
            T.let(
              :counterparty,
              ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          EXTERNAL_ACCOUNT =
            T.let(
              :external_account,
              ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          INTERNAL_ACCOUNT =
            T.let(
              :internal_account,
              ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )
          VIRTUAL_ACCOUNT =
            T.let(
              :virtual_account,
              ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::LedgerableType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
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
        def to_hash
        end
      end

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::PartyType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountCreateParams::PartyType::TaggedSymbol) }

        BUSINESS = T.let(:business, ModernTreasury::Models::ExternalAccountCreateParams::PartyType::TaggedSymbol)
        INDIVIDUAL =
          T.let(:individual, ModernTreasury::Models::ExternalAccountCreateParams::PartyType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::PartyType::TaggedSymbol]) }
        def self.values
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :routing_number

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol) }
        attr_accessor :routing_number_type

        sig do
          returns(
            T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol)
          )
        end
        attr_reader :payment_type

        sig do
          params(
            payment_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
          )
            .void
        end
        attr_writer :payment_type

        sig do
          params(
            routing_number: String,
            routing_number_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
            payment_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
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
                routing_number_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::OrSymbol,
                payment_type: ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::OrSymbol
              }
            )
        end
        def to_hash
        end

        module RoutingNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
              )
            end

          ABA =
            T.let(
              :aba,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          AU_BSB =
            T.let(
              :au_bsb,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          BR_CODIGO =
            T.let(
              :br_codigo,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CA_CPA =
            T.let(
              :ca_cpa,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CHIPS =
            T.let(
              :chips,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          CNAPS =
            T.let(
              :cnaps,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          DK_INTERBANK_CLEARING_CODE =
            T.let(
              :dk_interbank_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          GB_SORT_CODE =
            T.let(
              :gb_sort_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HK_INTERBANK_CLEARING_CODE =
            T.let(
              :hk_interbank_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          HU_INTERBANK_CLEARING_CODE =
            T.let(
              :hu_interbank_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ID_SKNBI_CODE =
            T.let(
              :id_sknbi_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          IN_IFSC =
            T.let(
              :in_ifsc,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          JP_ZENGIN_CODE =
            T.let(
              :jp_zengin_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MY_BRANCH_CODE =
            T.let(
              :my_branch_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          MX_BANK_IDENTIFIER =
            T.let(
              :mx_bank_identifier,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          NZ_NATIONAL_CLEARING_CODE =
            T.let(
              :nz_national_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          PL_NATIONAL_CLEARING_CODE =
            T.let(
              :pl_national_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SE_BANKGIRO_CLEARING_CODE =
            T.let(
              :se_bankgiro_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SG_INTERBANK_CLEARING_CODE =
            T.let(
              :sg_interbank_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          SWIFT =
            T.let(
              :swift,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )
          ZA_NATIONAL_CLEARING_CODE =
            T.let(
              :za_national_clearing_code,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::RoutingNumberType::TaggedSymbol]
              )
          end
          def self.values
          end
        end

        module PaymentType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
              )
            end

          ACH =
            T.let(:ach, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(:eft, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(:rtp, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(:sen, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(:sic, ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol)
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::PaymentType::TaggedSymbol]
              )
          end
          def self.values
          end
        end
      end
    end
  end
end
