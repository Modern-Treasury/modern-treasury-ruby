# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail])) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail])
      end
      def account_details=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def account_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_type=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail])) }
      def contact_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail])
          .returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail])
      end
      def contact_details=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount)) }
      def ledger_account
      end

      sig do
        params(_: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount)
          .returns(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount)
      end
      def ledger_account=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress)) }
      def party_address
      end

      sig do
        params(_: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress)
          .returns(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress)
      end
      def party_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def party_identifier
      end

      sig { params(_: String).returns(String) }
      def party_identifier=(_)
      end

      sig { returns(T.nilable(String)) }
      def party_name
      end

      sig { params(_: String).returns(String) }
      def party_name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def party_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def party_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def plaid_processor_token
      end

      sig { params(_: String).returns(String) }
      def plaid_processor_token=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail])) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail])
      end
      def routing_details=(_)
      end

      sig do
        params(
          counterparty_id: T.nilable(String),
          account_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail],
          account_type: Symbol,
          contact_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail],
          ledger_account: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress,
          party_identifier: String,
          party_name: String,
          party_type: T.nilable(Symbol),
          plaid_processor_token: String,
          routing_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
              account_type: Symbol,
              contact_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail],
              ledger_account: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              party_address: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress,
              party_identifier: String,
              party_name: String,
              party_type: T.nilable(Symbol),
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
        def account_number
        end

        sig { params(_: String).returns(String) }
        def account_number=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def account_number_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def account_number_type=(_)
        end

        sig { params(account_number: String, account_number_type: Symbol).returns(T.attached_class) }
        def self.new(account_number:, account_number_type: nil)
        end

        sig { override.returns({account_number: String, account_number_type: Symbol}) }
        def to_hash
        end

        class AccountNumberType < ModernTreasury::Enum
          abstract!

          AU_NUMBER = :au_number
          CLABE = :clabe
          HK_NUMBER = :hk_number
          IBAN = :iban
          ID_NUMBER = :id_number
          NZ_NUMBER = :nz_number
          OTHER = :other
          PAN = :pan
          SG_NUMBER = :sg_number
          WALLET_ADDRESS = :wallet_address

          class << self
            sig { override.returns(T::Array[Symbol]) }
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

        sig { returns(T.nilable(Symbol)) }
        def contact_identifier_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def contact_identifier_type=(_)
        end

        sig { params(contact_identifier: String, contact_identifier_type: Symbol).returns(T.attached_class) }
        def self.new(contact_identifier: nil, contact_identifier_type: nil)
        end

        sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
        def to_hash
        end

        class ContactIdentifierType < ModernTreasury::Enum
          abstract!

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(String) }
        def ledger_id
        end

        sig { params(_: String).returns(String) }
        def ledger_id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Symbol) }
        def normal_balance
        end

        sig { params(_: Symbol).returns(Symbol) }
        def normal_balance=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def currency_exponent
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def currency_exponent=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def ledger_account_category_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ledger_account_category_ids=(_)
        end

        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: String).returns(String) }
        def ledgerable_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def ledgerable_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def ledgerable_type=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig do
          params(
            currency: String,
            ledger_id: String,
            name: String,
            normal_balance: Symbol,
            currency_exponent: T.nilable(Integer),
            description: T.nilable(String),
            ledger_account_category_ids: T::Array[String],
            ledgerable_id: String,
            ledgerable_type: Symbol,
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
                normal_balance: Symbol,
                currency_exponent: T.nilable(Integer),
                description: T.nilable(String),
                ledger_account_category_ids: T::Array[String],
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
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

        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

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

      class PartyType < ModernTreasury::Enum
        abstract!

        BUSINESS = T.let(:business, T.nilable(Symbol))
        INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
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

        sig { returns(Symbol) }
        def routing_number_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def routing_number_type=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def payment_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def payment_type=(_)
        end

        sig do
          params(
            routing_number: String,
            routing_number_type: Symbol,
            payment_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(routing_number:, routing_number_type:, payment_type: nil)
        end

        sig { override.returns({routing_number: String, routing_number_type: Symbol, payment_type: Symbol}) }
        def to_hash
        end

        class RoutingNumberType < ModernTreasury::Enum
          abstract!

          ABA = :aba
          AU_BSB = :au_bsb
          BR_CODIGO = :br_codigo
          CA_CPA = :ca_cpa
          CHIPS = :chips
          CNAPS = :cnaps
          DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
          GB_SORT_CODE = :gb_sort_code
          HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
          HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
          ID_SKNBI_CODE = :id_sknbi_code
          IN_IFSC = :in_ifsc
          JP_ZENGIN_CODE = :jp_zengin_code
          MY_BRANCH_CODE = :my_branch_code
          MX_BANK_IDENTIFIER = :mx_bank_identifier
          NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
          PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
          SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
          SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
          SWIFT = :swift
          ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class PaymentType < ModernTreasury::Enum
          abstract!

          ACH = :ach
          AU_BECS = :au_becs
          BACS = :bacs
          BOOK = :book
          CARD = :card
          CHATS = :chats
          CHECK = :check
          CROSS_BORDER = :cross_border
          DK_NETS = :dk_nets
          EFT = :eft
          HU_ICS = :hu_ics
          INTERAC = :interac
          MASAV = :masav
          MX_CCEN = :mx_ccen
          NEFT = :neft
          NICS = :nics
          NZ_BECS = :nz_becs
          PL_ELIXIR = :pl_elixir
          PROVXCHANGE = :provxchange
          RO_SENT = :ro_sent
          RTP = :rtp
          SE_BANKGIROT = :se_bankgirot
          SEN = :sen
          SEPA = :sepa
          SG_GIRO = :sg_giro
          SIC = :sic
          SIGNET = :signet
          SKNBI = :sknbi
          WIRE = :wire
          ZENGIN = :zengin

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
