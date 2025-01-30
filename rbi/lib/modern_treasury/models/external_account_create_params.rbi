# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            routing_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail]) }
      attr_reader :account_details

      sig do
        params(account_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail]).void
      end
      attr_writer :account_details

      sig { returns(T.nilable(Symbol)) }
      attr_reader :account_type

      sig { params(account_type: Symbol).void }
      attr_writer :account_type

      sig { returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail]) }
      attr_reader :contact_details

      sig do
        params(contact_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail]).void
      end
      attr_writer :contact_details

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount)) }
      attr_reader :ledger_account

      sig { params(ledger_account: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount).void }
      attr_writer :ledger_account

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress).void }
      attr_writer :party_address

      sig { returns(T.nilable(String)) }
      attr_reader :party_identifier

      sig { params(party_identifier: String).void }
      attr_writer :party_identifier

      sig { returns(T.nilable(String)) }
      attr_reader :party_name

      sig { params(party_name: String).void }
      attr_writer :party_name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :party_type

      sig { returns(T.nilable(String)) }
      attr_reader :plaid_processor_token

      sig { params(plaid_processor_token: String).void }
      attr_writer :plaid_processor_token

      sig { returns(T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail]) }
      attr_reader :routing_details

      sig do
        params(routing_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail]).void
      end
      attr_writer :routing_details

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
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
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
      ); end

      sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::Shape) }
      def to_h; end

      class AccountDetail < ModernTreasury::BaseModel
        Shape = T.type_alias { {account_number: String, account_number_type: Symbol} }

        sig { returns(String) }
        attr_accessor :account_number

        sig { returns(T.nilable(Symbol)) }
        attr_reader :account_number_type

        sig { params(account_number_type: Symbol).void }
        attr_writer :account_number_type

        sig { params(account_number: String, account_number_type: Symbol).void }
        def initialize(account_number:, account_number_type: nil); end

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail::Shape) }
        def to_h; end

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class ContactDetail < ModernTreasury::BaseModel
        Shape = T.type_alias { {contact_identifier: String, contact_identifier_type: Symbol} }

        sig { returns(T.nilable(String)) }
        attr_reader :contact_identifier

        sig { params(contact_identifier: String).void }
        attr_writer :contact_identifier

        sig { returns(T.nilable(Symbol)) }
        attr_reader :contact_identifier_type

        sig { params(contact_identifier_type: Symbol).void }
        attr_writer :contact_identifier_type

        sig { params(contact_identifier: String, contact_identifier_type: Symbol).void }
        def initialize(contact_identifier: nil, contact_identifier_type: nil); end

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail::Shape) }
        def to_h; end

        class ContactIdentifierType < ModernTreasury::Enum
          abstract!

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class LedgerAccount < ModernTreasury::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(String) }
        attr_accessor :ledger_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :normal_balance

        sig { returns(T.nilable(Integer)) }
        attr_accessor :currency_exponent

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T::Array[String]) }
        attr_reader :ledger_account_category_ids

        sig { params(ledger_account_category_ids: T::Array[String]).void }
        attr_writer :ledger_account_category_ids

        sig { returns(T.nilable(String)) }
        attr_reader :ledgerable_id

        sig { params(ledgerable_id: String).void }
        attr_writer :ledgerable_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :ledgerable_type

        sig { params(ledgerable_type: Symbol).void }
        attr_writer :ledgerable_type

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

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
          ).void
        end
        def initialize(
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

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount::Shape) }
        def to_h; end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class PartyAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          }
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig do
          params(
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          ).void
        end
        def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        end

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress::Shape) }
        def to_h; end
      end

      class PartyType < ModernTreasury::Enum
        abstract!

        BUSINESS = T.let(:business, T.nilable(Symbol))
        INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        Shape = T.type_alias { {routing_number: String, routing_number_type: Symbol, payment_type: Symbol} }

        sig { returns(String) }
        attr_accessor :routing_number

        sig { returns(Symbol) }
        attr_accessor :routing_number_type

        sig { returns(T.nilable(Symbol)) }
        attr_reader :payment_type

        sig { params(payment_type: Symbol).void }
        attr_writer :payment_type

        sig { params(routing_number: String, routing_number_type: Symbol, payment_type: Symbol).void }
        def initialize(routing_number:, routing_number_type:, payment_type: nil); end

        sig { returns(ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail::Shape) }
        def to_h; end

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
