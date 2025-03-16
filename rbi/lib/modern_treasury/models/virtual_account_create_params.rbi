# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the internal account that this virtual account is associated with.
      sig { returns(String) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # The name of the virtual account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # An array of account detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])) }
      def account_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])
          .returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail])
      end
      def account_details=(_)
      end

      # The ID of the counterparty that the virtual account belongs to.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The ID of a credit normal ledger account. When money leaves the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      def credit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def credit_ledger_account_id=(_)
      end

      # The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      def debit_ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def debit_ledger_account_id=(_)
      end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # Specifies a ledger account object that will be created with the virtual account.
      #   The resulting ledger account is linked to the virtual account for auto-ledgering
      #   IPDs.
      sig { returns(T.nilable(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)) }
      def ledger_account
      end

      sig do
        params(_: ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)
          .returns(ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount)
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

      # An array of routing detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])) }
      def routing_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])
          .returns(T::Array[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail])
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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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
        # The account number for the bank account.
        sig { returns(String) }
        def account_number
        end

        sig { params(_: String).returns(String) }
        def account_number=(_)
        end

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
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

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        class AccountNumberType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        sig { returns(Symbol) }
        def normal_balance
        end

        sig { params(_: Symbol).returns(Symbol) }
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
        sig { returns(T.nilable(Symbol)) }
        def ledgerable_type
        end

        sig { params(_: Symbol).returns(Symbol) }
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

        # Specifies a ledger account object that will be created with the virtual account.
        #   The resulting ledger account is linked to the virtual account for auto-ledgering
        #   IPDs.
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

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        class LedgerableType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        # The routing number of the bank.
        sig { returns(String) }
        def routing_number
        end

        sig { params(_: String).returns(String) }
        def routing_number=(_)
        end

        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        sig { returns(Symbol) }
        def routing_number_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def routing_number_type=(_)
        end

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        sig { returns(T.nilable(Symbol)) }
        def payment_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def payment_type=(_)
        end

        sig do
          params(routing_number: String, routing_number_type: Symbol, payment_type: T.nilable(Symbol))
            .returns(T.attached_class)
        end
        def self.new(routing_number:, routing_number_type:, payment_type: nil)
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

        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        class RoutingNumberType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        class PaymentType < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end
    end
  end
end
