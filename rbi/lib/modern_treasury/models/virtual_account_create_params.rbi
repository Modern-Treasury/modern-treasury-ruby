# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail]).returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])
      end
      def account_details=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def credit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def credit_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def debit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def debit_ledger_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)) }
      def ledger_account
      end

      sig do
        params(_: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount).returns(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)
      end
      def ledger_account=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail]).returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])
      end
      def routing_details=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override.returns(
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
            routing_details: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail],
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

        sig { params(account_number: String, account_number_type: Symbol).void }
        def initialize(account_number:, account_number_type: nil)
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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
        )
        end

        sig do
          override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def payment_type=(_)
        end

        sig do
          params(routing_number: String, routing_number_type: Symbol, payment_type: T.nilable(Symbol)).void
        end
        def initialize(routing_number:, routing_number_type:, payment_type: nil)
        end

        sig do
          override.returns(
            {
              routing_number: String,
              routing_number_type: Symbol,
              payment_type: T.nilable(Symbol)
            }
          )
        end
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
          MX_BANK_IDENTIFIER = :mx_bank_identifier
          MY_BRANCH_CODE = :my_branch_code
          NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
          PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
          SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
          SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
          SWIFT = :swift
          ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
