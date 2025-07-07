# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Validations#validate_routing_number
    class RoutingNumberLookupRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute bank_address
      #   The address of the bank.
      #
      #   @return [ModernTreasury::Models::AddressRequest, nil]
      optional :bank_address, -> { ModernTreasury::AddressRequest }

      # @!attribute bank_name
      #   The name of the bank.
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!attribute routing_number
      #   The routing number of the bank.
      #
      #   @return [String, nil]
      optional :routing_number, String

      # @!attribute routing_number_type
      #   The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType, nil]
      optional :routing_number_type,
               enum: -> {
                 ModernTreasury::RoutingNumberLookupRequest::RoutingNumberType
               }

      # @!attribute sanctions
      #   An object containing key-value pairs, each with a sanctions list as the key and
      #   a boolean value representing whether the bank is on that particular sanctions
      #   list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :sanctions, ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]

      # @!attribute supported_payment_types
      #   An array of payment types that are supported for this routing number. This can
      #   include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs`, and 'fednow' currently.
      #
      #   @return [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>, nil]
      optional :supported_payment_types,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::RoutingNumberLookupRequest::SupportedPaymentType]
               }

      # @!method initialize(bank_address: nil, bank_name: nil, routing_number: nil, routing_number_type: nil, sanctions: nil, supported_payment_types: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::RoutingNumberLookupRequest} for more details.
      #
      #   @param bank_address [ModernTreasury::Models::AddressRequest] The address of the bank.
      #
      #   @param bank_name [String] The name of the bank.
      #
      #   @param routing_number [String] The routing number of the bank.
      #
      #   @param routing_number_type [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType] The type of routing number. See https://docs.moderntreasury.com/platform/referen
      #
      #   @param sanctions [Hash{Symbol=>Object}] An object containing key-value pairs, each with a sanctions list as the key and
      #
      #   @param supported_payment_types [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>] An array of payment types that are supported for this routing number. This can i

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details. In sandbox mode we currently only support `aba` and `swift` with
      # routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      # @see ModernTreasury::Models::RoutingNumberLookupRequest#routing_number_type
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        ABA = :aba
        AU_BSB = :au_bsb
        CA_CPA = :ca_cpa
        GB_SORT_CODE = :gb_sort_code
        IN_IFSC = :in_ifsc
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SWIFT = :swift
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SupportedPaymentType
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
