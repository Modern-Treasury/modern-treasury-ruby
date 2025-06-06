# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::RoutingDetails#create
    class RoutingDetailCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::RoutingDetailCreateParams::AccountsType }

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
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType]
      required :routing_number_type, enum: -> { ModernTreasury::RoutingDetailCreateParams::RoutingNumberType }

      # @!attribute payment_type
      #   If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType, nil]
      optional :payment_type, enum: -> { ModernTreasury::RoutingDetailCreateParams::PaymentType }, nil?: true

      # @!method initialize(accounts_type:, routing_number:, routing_number_type:, payment_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::RoutingDetailCreateParams} for more details.
      #
      #   @param accounts_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType]
      #
      #   @param routing_number [String] The routing number of the bank.
      #
      #   @param routing_number_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType] The type of routing number. See https://docs.moderntreasury.com/platform/referen
      #
      #   @param payment_type [Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType, nil] If the routing detail is to be used for a specific payment type this field will
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
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
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BASE = :base
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        ETHEREUM = :ethereum
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        POLYGON = :polygon
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
        SOLANA = :solana
        WIRE = :wire
        ZENGIN = :zengin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
