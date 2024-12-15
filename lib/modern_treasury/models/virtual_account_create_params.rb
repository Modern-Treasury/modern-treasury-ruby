# frozen_string_literal: true

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::BaseModel
      # @!attribute internal_account_id
      #   The ID of the internal account that this virtual account is associated with.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute name
      #   The name of the virtual account.
      #
      #   @return [String]
      required :name, String

      # @!attribute account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      optional :account_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail
                 }
               )

      # @!attribute counterparty_id
      #   The ID of the counterparty that the virtual account belongs to.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money leaves the virtual account, this ledger account will be credited. Must be accompanied by a debit_ledger_account_id if present.
      #
      #   @return [String]
      optional :credit_ledger_account_id, String

      # @!attribute debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account, this ledger account will be debited. Must be accompanied by a credit_ledger_account_id if present.
      #
      #   @return [String]
      optional :debit_ledger_account_id, String

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger_account
      #   Specifies a ledger account object that will be created with the virtual account. The resulting ledger account is linked to the virtual account for auto-ledgering IPDs.
      #
      #   @return [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount]
      optional :ledger_account, -> { ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      optional :routing_details,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail
                 }
               )

      class AccountDetail < ModernTreasury::BaseModel
        # @!attribute account_number
        #   The account number for the bank account.
        #
        #   @return [String]
        required :account_number, String

        # @!attribute account_number_type
        #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType]
        optional :account_number_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType
                 }

        # @!parse
        #   # @param account_number [String] The account number for the bank account.
        #   #
        #   # @param account_number_type [String, nil] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   #   account number is in a generic format.
        #   #
        #   def initialize(account_number:, account_number_type: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
        class AccountNumberType < ModernTreasury::Enum
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
        # @!attribute currency
        #   The currency of the ledger account.
        #
        #   @return [String]
        required :currency, String

        # @!attribute ledger_id
        #   The id of the ledger that this account belongs to.
        #
        #   @return [String]
        required :ledger_id, String

        # @!attribute name
        #   The name of the ledger account.
        #
        #   @return [String]
        required :name, String

        # @!attribute normal_balance
        #   The normal balance of the ledger account.
        #
        #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
        required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

        # @!attribute currency_exponent
        #   The currency exponent of the ledger account.
        #
        #   @return [Integer]
        optional :currency_exponent, Integer

        # @!attribute description
        #   The description of the ledger account.
        #
        #   @return [String]
        optional :description, String

        # @!attribute ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a child of.
        #
        #   @return [Array<String>]
        optional :ledger_account_category_ids, ModernTreasury::ArrayOf.new(String)

        # @!attribute ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be populated here, otherwise null.
        #
        #   @return [String]
        optional :ledgerable_id, String

        # @!attribute ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType
                 }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash]
        optional :metadata, Hash

        # @!parse
        #   # Specifies a ledger account object that will be created with the virtual account.
        #   #   The resulting ledger account is linked to the virtual account for auto-ledgering
        #   #   IPDs.
        #   #
        #   # @param currency [String] The currency of the ledger account.
        #   #
        #   # @param ledger_id [String] The id of the ledger that this account belongs to.
        #   #
        #   # @param name [String] The name of the ledger account.
        #   #
        #   # @param normal_balance [String] The normal balance of the ledger account.
        #   #
        #   # @param currency_exponent [Integer, nil] The currency exponent of the ledger account.
        #   #
        #   # @param description [String, nil] The description of the ledger account.
        #   #
        #   # @param ledger_account_category_ids [Array<String>, nil] The array of ledger account category ids that this ledger account should be a
        #   #   child of.
        #   #
        #   # @param ledgerable_id [String, nil] If the ledger account links to another object in Modern Treasury, the id will be
        #   #   populated here, otherwise null.
        #   #
        #   # @param ledgerable_type [String, nil] If the ledger account links to another object in Modern Treasury, the type will
        #   #   be populated here, otherwise null. The value is one of internal_account or
        #   #   external_account.
        #   #
        #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   def initialize(
        #     currency:,
        #     ledger_id:,
        #     name:,
        #     normal_balance:,
        #     currency_exponent: nil,
        #     description: nil,
        #     ledger_account_category_ids: nil,
        #     ledgerable_id: nil,
        #     ledgerable_type: nil,
        #     metadata: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # If the ledger account links to another object in Modern Treasury, the type will be populated here, otherwise null. The value is one of internal_account or external_account.
        class LedgerableType < ModernTreasury::Enum
          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account
        end
      end

      class RoutingDetail < ModernTreasury::BaseModel
        # @!attribute routing_number
        #   The routing number of the bank.
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute routing_number_type
        #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType]
        required :routing_number_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType
                 }

        # @!attribute payment_type
        #   If the routing detail is to be used for a specific payment type this field will be populated, otherwise null.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType }

        # @!parse
        #   # @param routing_number [String] The routing number of the bank.
        #   #
        #   # @param routing_number_type [String] The type of routing number. See
        #   #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   #   more details.
        #   #
        #   # @param payment_type [String, nil] If the routing detail is to be used for a specific payment type this field will
        #   #   be populated, otherwise null.
        #   #
        #   def initialize(routing_number:, routing_number_type:, payment_type: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details.
        class RoutingNumberType < ModernTreasury::Enum
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
          SWIFT = :swift
          ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code
        end

        # If the routing detail is to be used for a specific payment type this field will be populated, otherwise null.
        class PaymentType < ModernTreasury::Enum
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
