# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccounts#create
    class VirtualAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>, nil]
      optional :account_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail] }

      # @!attribute counterparty_id
      #   The ID of the counterparty that the virtual account belongs to.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute credit_ledger_account_id
      #   The ID of a credit normal ledger account. When money leaves the virtual account,
      #   this ledger account will be credited. Must be accompanied by a
      #   debit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :credit_ledger_account_id, String

      # @!attribute debit_ledger_account_id
      #   The ID of a debit normal ledger account. When money enters the virtual account,
      #   this ledger account will be debited. Must be accompanied by a
      #   credit_ledger_account_id if present.
      #
      #   @return [String, nil]
      optional :debit_ledger_account_id, String

      # @!attribute description
      #   An optional description for internal use.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute ledger_account
      #   Specifies a ledger account object that will be created with the virtual account.
      #   The resulting ledger account is linked to the virtual account for auto-ledgering
      #   IPDs.
      #
      #   @return [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount, nil]
      optional :ledger_account, -> { ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount }

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute routing_details
      #   An array of routing detail objects.
      #
      #   @return [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>, nil]
      optional :routing_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail] }

      # @!method initialize(internal_account_id:, name:, account_details: nil, counterparty_id: nil, credit_ledger_account_id: nil, debit_ledger_account_id: nil, description: nil, ledger_account: nil, metadata: nil, routing_details: nil, request_options: {})
      #   @param internal_account_id [String]
      #   @param name [String]
      #   @param account_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail>]
      #   @param counterparty_id [String]
      #   @param credit_ledger_account_id [String]
      #   @param debit_ledger_account_id [String]
      #   @param description [String]
      #   @param ledger_account [ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param routing_details [Array<ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail>]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class AccountDetail < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_number
        #   The account number for the bank account.
        #
        #   @return [String]
        required :account_number, String

        # @!attribute account_number_type
        #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        #   account number is in a generic format.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType, nil]
        optional :account_number_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType }

        # @!method initialize(account_number:, account_number_type: nil)
        #   @param account_number [String]
        #   @param account_number_type [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail::AccountNumberType]

        # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
        # account number is in a generic format.
        #
        # @see ModernTreasury::Models::VirtualAccountCreateParams::AccountDetail#account_number_type
        module AccountNumberType
          extend ModernTreasury::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LedgerAccount < ModernTreasury::Internal::Type::BaseModel
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

        # @!attribute ledger_account_category_ids
        #   The array of ledger account category ids that this ledger account should be a
        #   child of.
        #
        #   @return [Array<String>, nil]
        optional :ledger_account_category_ids, ModernTreasury::Internal::Type::ArrayOf[String]

        # @!attribute ledgerable_id
        #   If the ledger account links to another object in Modern Treasury, the id will be
        #   populated here, otherwise null.
        #
        #   @return [String, nil]
        optional :ledgerable_id, String

        # @!attribute ledgerable_type
        #   If the ledger account links to another object in Modern Treasury, the type will
        #   be populated here, otherwise null. The value is one of internal_account or
        #   external_account.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType, nil]
        optional :ledgerable_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!method initialize(currency:, ledger_id:, name:, normal_balance:, currency_exponent: nil, description: nil, ledger_account_category_ids: nil, ledgerable_id: nil, ledgerable_type: nil, metadata: nil)
        #   Specifies a ledger account object that will be created with the virtual account.
        #   The resulting ledger account is linked to the virtual account for auto-ledgering
        #   IPDs.
        #
        #   @param currency [String]
        #   @param ledger_id [String]
        #   @param name [String]
        #   @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
        #   @param currency_exponent [Integer, nil]
        #   @param description [String, nil]
        #   @param ledger_account_category_ids [Array<String>]
        #   @param ledgerable_id [String]
        #   @param ledgerable_type [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount::LedgerableType]
        #   @param metadata [Hash{Symbol=>String}]

        # If the ledger account links to another object in Modern Treasury, the type will
        # be populated here, otherwise null. The value is one of internal_account or
        # external_account.
        #
        # @see ModernTreasury::Models::VirtualAccountCreateParams::LedgerAccount#ledgerable_type
        module LedgerableType
          extend ModernTreasury::Internal::Type::Enum

          COUNTERPARTY = :counterparty
          EXTERNAL_ACCOUNT = :external_account
          INTERNAL_ACCOUNT = :internal_account
          VIRTUAL_ACCOUNT = :virtual_account

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
        # @!attribute routing_number
        #   The routing number of the bank.
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute routing_number_type
        #   The type of routing number. See
        #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        #   more details.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType]
        required :routing_number_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType }

        # @!attribute payment_type
        #   If the routing detail is to be used for a specific payment type this field will
        #   be populated, otherwise null.
        #
        #   @return [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType, nil]
        optional :payment_type,
                 enum: -> { ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType },
                 nil?: true

        # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
        #   @param routing_number [String]
        #   @param routing_number_type [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::RoutingNumberType]
        #   @param payment_type [Symbol, ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail::PaymentType, nil]

        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        #
        # @see ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail#routing_number_type
        module RoutingNumberType
          extend ModernTreasury::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        #
        # @see ModernTreasury::Models::VirtualAccountCreateParams::RoutingDetail#payment_type
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
