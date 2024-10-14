# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < BaseModel
      # @!attribute [rw] bank_address
      #   The address of the bank.
      #   @return [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress]
      optional :bank_address, -> { ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress }

      # @!attribute [rw] bank_name
      #   The name of the bank.
      #   @return [String]
      optional :bank_name, String

      # @!attribute [rw] routing_number
      #   The routing number of the bank.
      #   @return [String]
      optional :routing_number, String

      # @!attribute [rw] routing_number_type
      #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details. In sandbox mode we currently only support `aba` and `swift` with routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #   @return [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType]
      optional :routing_number_type,
               enum: -> { ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType }

      # @!attribute [rw] sanctions
      #   An object containing key-value pairs, each with a sanctions list as the key and a boolean value representing whether the bank is on that particular sanctions list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #   @return [Hash]
      optional :sanctions, Hash

      # @!attribute [rw] supported_payment_types
      #   An array of payment types that are supported for this routing number. This can include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs` currently.
      #   @return [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>]
      optional :supported_payment_types,
               ModernTreasury::ArrayOf.new(
                 enum: lambda {
                   ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType
                 }
               )

      class BankAddress < BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        optional :country, String

        # @!attribute [rw] line1
        #   @return [String]
        optional :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        optional :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        optional :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        optional :region, String

        # Create a new instance of BankAddress from a Hash of raw data.
        #
        # @overload initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param line1 [String]
        # @param line2 [String]
        # @param locality [String] Locality or City.
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        def initialize(data = {})
          super
        end
      end

      # The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details. In sandbox mode we currently only support `aba` and `swift` with routing numbers '123456789' and 'GRINUST0XXX' respectively.
      class RoutingNumberType < ModernTreasury::Enum
        ABA = :aba
        AU_BSB = :au_bsb
        CA_CPA = :ca_cpa
        GB_SORT_CODE = :gb_sort_code
        IN_IFSC = :in_ifsc
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SWIFT = :swift
      end

      class SupportedPaymentType < ModernTreasury::Enum
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

      # Create a new instance of RoutingNumberLookupRequest from a Hash of raw data.
      #
      # @overload initialize(bank_address: nil, bank_name: nil, routing_number: nil, routing_number_type: nil, sanctions: nil, supported_payment_types: nil)
      # @param bank_address [Object] The address of the bank.
      # @param bank_name [String] The name of the bank.
      # @param routing_number [String] The routing number of the bank.
      # @param routing_number_type [String] The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      # @param sanctions [Hash] An object containing key-value pairs, each with a sanctions list as the key and
      #   a boolean value representing whether the bank is on that particular sanctions
      #   list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      # @param supported_payment_types [Array<String>] An array of payment types that are supported for this routing number. This can
      #   include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs` currently.
      def initialize(data = {})
        super
      end
    end
  end
end
