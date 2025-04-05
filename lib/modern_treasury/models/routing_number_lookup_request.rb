# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Validations#validate_routing_number
    class RoutingNumberLookupRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute [r] bank_address
      #   The address of the bank.
      #
      #   @return [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress, nil]
      optional :bank_address, -> { ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress }

      # @!parse
      #   # @return [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress]
      #   attr_writer :bank_address

      # @!attribute [r] bank_name
      #   The name of the bank.
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :bank_name

      # @!attribute [r] routing_number
      #   The routing number of the bank.
      #
      #   @return [String, nil]
      optional :routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :routing_number

      # @!attribute [r] routing_number_type
      #   The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType, nil]
      optional :routing_number_type,
               enum: -> { ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType]
      #   attr_writer :routing_number_type

      # @!attribute [r] sanctions
      #   An object containing key-value pairs, each with a sanctions list as the key and
      #   a boolean value representing whether the bank is on that particular sanctions
      #   list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :sanctions, ModernTreasury::Internal::Type::HashOf[ModernTreasury::Internal::Type::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :sanctions

      # @!attribute [r] supported_payment_types
      #   An array of payment types that are supported for this routing number. This can
      #   include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs`, and 'fednow' currently.
      #
      #   @return [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>, nil]
      optional :supported_payment_types,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType] }

      # @!parse
      #   # @return [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>]
      #   attr_writer :supported_payment_types

      # @!parse
      #   # @param bank_address [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress]
      #   # @param bank_name [String]
      #   # @param routing_number [String]
      #   # @param routing_number_type [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType]
      #   # @param sanctions [Hash{Symbol=>Object}]
      #   # @param supported_payment_types [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>]
      #   #
      #   def initialize(
      #     bank_address: nil,
      #     bank_name: nil,
      #     routing_number: nil,
      #     routing_number_type: nil,
      #     sanctions: nil,
      #     supported_payment_types: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # @see ModernTreasury::Models::RoutingNumberLookupRequest#bank_address
      class BankAddress < ModernTreasury::Internal::Type::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        optional :locality, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
        optional :region, String, nil?: true

        # @!parse
        #   # The address of the bank.
        #   #
        #   # @param country [String, nil]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param locality [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param region [String, nil]
        #   #
        #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
      end

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module SupportedPaymentType
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
