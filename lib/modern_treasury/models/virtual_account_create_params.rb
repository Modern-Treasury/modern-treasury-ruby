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

      # @!attribute [r] account_details
      #   An array of account detail objects.
      #
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      optional :account_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail]
               }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      #   attr_writer :account_details

      # @!attribute [r] counterparty_id
      #   The ID of the counterparty that the virtual account belongs to.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money leaves the virtual account,
      #     this ledger account will be credited. Must be accompanied by a
      #     debit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :credit_ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :credit_ledger_account_id

      # @!attribute [r] debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account,
      #     this ledger account will be debited. Must be accompanied by a
      #     credit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :debit_ledger_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :debit_ledger_account_id

      # @!attribute [r] description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] ledger_account
      #   Specifies a ledger account object that will be created with the virtual account.
      #     The resulting ledger account is linked to the virtual account for auto-ledgering
      #     IPDs.
      #
      #   @return [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, nil]
      optional :ledger_account, -> { ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount }

      # @!parse
      #   # @return [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount]
      #   attr_writer :ledger_account

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      optional :routing_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail]
               }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      #   attr_writer :routing_details

      # @!parse
      #   # @param internal_account_id [String]
      #   # @param name [String]
      #   # @param account_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      #   # @param counterparty_id [String]
      #   # @param credit_ledger_account_id [String]
      #   # @param debit_ledger_account_id [String]
      #   # @param description [String]
      #   # @param ledger_account [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param routing_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      #   #
      #   def initialize(
      #     internal_account_id:,
      #     name:,
      #     account_details: nil,
      #     counterparty_id: nil,
      #     credit_ledger_account_id: nil,
      #     debit_ledger_account_id: nil,
      #     description: nil,
      #     ledger_account: nil,
      #     metadata: nil,
      #     routing_details: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # account_detail => {
      #   account_number: String,
      #   account_number_type: ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType
      # }
      # ```
      class AccountDetail < ModernTreasury::BaseModel
        # @!attribute account_number
        #   The account number for the bank account.
        #
        #   @return [String]
        required :account_number, String

        # @!attribute [r] account_number_type
        #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #     account number is in a generic format.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType, nil]
        optional :account_number_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType]
        #   attr_writer :account_number_type

        # @!parse
        #   # @param account_number [String]
        #   # @param account_number_type [String]
        #   #
        #   def initialize(account_number:, account_number_type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        #
        # @example
        # ```ruby
        # case account_number_type
        # in :au_number
        #   # ...
        # in :clabe
        #   # ...
        # in :hk_number
        #   # ...
        # in :iban
        #   # ...
        # in :id_number
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # ledger_account => {
      #   currency: String,
      #   ledger_id: String,
      #   name: String,
      #   normal_balance: ModernTreasury::Models::TransactionDirection,
      #   currency_exponent: Integer,
      #   **_
      # }
      # ```
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
        #   @return [Integer, nil]
        optional :currency_exponent, Integer, nil?: true

        # @!attribute description
        #   The description of the ledger account.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute [r] ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a
        #     child of.
        #
        #   @return [Array<String>]
        optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :ledger_account_category_ids

        # @!attribute [r] ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be
        #     populated here, otherwise null.
        #
        #   @return [String, nil]
        optional :ledgerable_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ledgerable_id

        # @!attribute [r] ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will
        #     be populated here, otherwise null. The value is one of internal_account or
        #     external_account.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType, nil]
        optional :ledgerable_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType
                 }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType]
        #   attr_writer :ledgerable_type

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!parse
        #   # Specifies a ledger account object that will be created with the virtual account.
        #   #   The resulting ledger account is linked to the virtual account for auto-ledgering
        #   #   IPDs.
        #   #
        #   # @param currency [String]
        #   # @param ledger_id [String]
        #   # @param name [String]
        #   # @param normal_balance [String]
        #   # @param currency_exponent [Integer, nil]
        #   # @param description [String, nil]
        #   # @param ledger_account_category_ids [Array<String>]
        #   # @param ledgerable_id [String]
        #   # @param ledgerable_type [String]
        #   # @param metadata [Hash{Symbol=>String}]
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
        #     metadata: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        #
        # @example
        # ```ruby
        # case ledgerable_type
        # in :counterparty
        #   # ...
        # in :external_account
        #   # ...
        # in :internal_account
        #   # ...
        # in :virtual_account
        #   # ...
        # end
        # ```
        class LedgerableType < ModernTreasury::Enum
          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          finalize!
        end
      end

      # @example
      # ```ruby
      # routing_detail => {
      #   routing_number: String,
      #   routing_number_type: ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType,
      #   payment_type: ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType
      # }
      # ```
      class RoutingDetail < ModernTreasury::BaseModel
        # @!attribute routing_number
        #   The routing number of the bank.
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute routing_number_type
        #   The type of routing number. See
        #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #     more details.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType]
        required :routing_number_type,
                 enum: -> {
                   ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType
                 }

        # @!attribute payment_type
        #   If the routing detail is to be used for a specific payment type this field will
        #     be populated, otherwise null.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType, nil]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType },
                 nil?: true

        # @!parse
        #   # @param routing_number [String]
        #   # @param routing_number_type [String]
        #   # @param payment_type [String, nil]
        #   #
        #   def initialize(routing_number:, routing_number_type:, payment_type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        #
        # @example
        # ```ruby
        # case routing_number_type
        # in :aba
        #   # ...
        # in :au_bsb
        #   # ...
        # in :br_codigo
        #   # ...
        # in :ca_cpa
        #   # ...
        # in :chips
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end

        # If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        #
        # @example
        # ```ruby
        # case payment_type
        # in :ach
        #   # ...
        # in :au_becs
        #   # ...
        # in :bacs
        #   # ...
        # in :book
        #   # ...
        # in :card
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end
    end
  end
end
