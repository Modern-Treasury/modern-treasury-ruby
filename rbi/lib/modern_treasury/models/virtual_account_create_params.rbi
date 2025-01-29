# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            internal_account_id: String,
            name: String,
            account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail],
            counterparty_id: String,
            credit_ledger_account_id: String,
            debit_ledger_account_id: String,
            description: String,
            ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :internal_account_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail]) }
      attr_reader :account_details

      sig do
        params(account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail]).void
      end
      attr_writer :account_details

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :credit_ledger_account_id

      sig { params(credit_ledger_account_id: String).void }
      attr_writer :credit_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :debit_ledger_account_id

      sig { params(debit_ledger_account_id: String).void }
      attr_writer :debit_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)) }
      attr_reader :ledger_account

      sig { params(ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount).void }
      attr_writer :ledger_account

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail]) }
      attr_reader :routing_details

      sig do
        params(routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail]).void
      end
      attr_writer :routing_details

      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount,
          metadata: T::Hash[Symbol, String],
          routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        internal_account_id:,
        name:,
        account_details: nil,
        counterparty_id: nil,
        credit_ledger_account_id: nil,
        debit_ledger_account_id: nil,
        description: nil,
        ledger_account: nil,
        metadata: nil,
        routing_details: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::Shape) }
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

        sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::Shape) }
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

          sig { returns(T::Array[Symbol]) }
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

        sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::Shape) }
        def to_h; end

        class LedgerableType < ModernTreasury::Enum
          abstract!

          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {routing_number: String, routing_number_type: Symbol, payment_type: T.nilable(Symbol)}
        end

        sig { returns(String) }
        attr_accessor :routing_number

        sig { returns(Symbol) }
        attr_accessor :routing_number_type

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :payment_type

        sig do
          params(routing_number: String, routing_number_type: Symbol, payment_type: T.nilable(Symbol)).void
        end
        def initialize(routing_number:, routing_number_type:, payment_type: nil); end

        sig { returns(ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::Shape) }
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
          MX_BANK_IDENTIFIER = :mx_bank_identifier
          MY_BRANCH_CODE = :my_branch_code
          NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
          PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
          SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
          SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
          SWIFT = :swift
          ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class PaymentType < ModernTreasury::Enum
          abstract!

          ACH = T.let(:ach, T.nilable(Symbol))
          AU_BECS = T.let(:au_becs, T.nilable(Symbol))
          BACS = T.let(:bacs, T.nilable(Symbol))
          BOOK = T.let(:book, T.nilable(Symbol))
          CARD = T.let(:card, T.nilable(Symbol))
          CHATS = T.let(:chats, T.nilable(Symbol))
          CHECK = T.let(:check, T.nilable(Symbol))
          CROSS_BORDER = T.let(:cross_border, T.nilable(Symbol))
          DK_NETS = T.let(:dk_nets, T.nilable(Symbol))
          EFT = T.let(:eft, T.nilable(Symbol))
          HU_ICS = T.let(:hu_ics, T.nilable(Symbol))
          INTERAC = T.let(:interac, T.nilable(Symbol))
          MASAV = T.let(:masav, T.nilable(Symbol))
          MX_CCEN = T.let(:mx_ccen, T.nilable(Symbol))
          NEFT = T.let(:neft, T.nilable(Symbol))
          NICS = T.let(:nics, T.nilable(Symbol))
          NZ_BECS = T.let(:nz_becs, T.nilable(Symbol))
          PL_ELIXIR = T.let(:pl_elixir, T.nilable(Symbol))
          PROVXCHANGE = T.let(:provxchange, T.nilable(Symbol))
          RO_SENT = T.let(:ro_sent, T.nilable(Symbol))
          RTP = T.let(:rtp, T.nilable(Symbol))
          SE_BANKGIROT = T.let(:se_bankgirot, T.nilable(Symbol))
          SEN = T.let(:sen, T.nilable(Symbol))
          SEPA = T.let(:sepa, T.nilable(Symbol))
          SG_GIRO = T.let(:sg_giro, T.nilable(Symbol))
          SIC = T.let(:sic, T.nilable(Symbol))
          SIGNET = T.let(:signet, T.nilable(Symbol))
          SKNBI = T.let(:sknbi, T.nilable(Symbol))
          WIRE = T.let(:wire, T.nilable(Symbol))
          ZENGIN = T.let(:zengin, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
