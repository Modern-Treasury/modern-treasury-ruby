# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < ModernTreasury::BaseModel
      # @!attribute bank_address
      #   The address of the bank.
      #
      #   @return [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress]
      optional :bank_address, -> { ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress }

      # @!attribute bank_name
      #   The name of the bank.
      #
      #   @return [String]
      optional :bank_name, String

      # @!attribute routing_number
      #   The routing number of the bank.
      #
      #   @return [String]
      optional :routing_number, String

      # @!attribute routing_number_type
      #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details. In sandbox mode we currently only support `aba` and `swift` with routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType]
      optional :routing_number_type,
               enum: -> { ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType }

      # @!attribute sanctions
      #   An object containing key-value pairs, each with a sanctions list as the key and a boolean value representing whether the bank is on that particular sanctions list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #
      #   @return [Hash]
      optional :sanctions, Hash

      # @!attribute supported_payment_types
      #   An array of payment types that are supported for this routing number. This can include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs` currently.
      #
      #   @return [Array<Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType>]
      optional :supported_payment_types,
               ModernTreasury::ArrayOf[enum: -> {
                 ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType
               }]

      # @!parse
      #   # @param bank_address [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress, nil] The address of the bank.
      #   #
      #   # @param bank_name [String, nil] The name of the bank.
      #   #
      #   # @param routing_number [String, nil] The routing number of the bank.
      #   #
      #   # @param routing_number_type [String, nil] The type of routing number. See
      #   #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #   #
      #   # @param sanctions [Hash, nil] An object containing key-value pairs, each with a sanctions list as the key and
      #   #   a boolean value representing whether the bank is on that particular sanctions
      #   #   list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #   #
      #   # @param supported_payment_types [Array<String>, nil] An array of payment types that are supported for this routing number. This can
      #   #   include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs` currently.
      #   #
      #   def initialize(
      #     bank_address: nil,
      #     bank_name: nil,
      #     routing_number: nil,
      #     routing_number_type: nil,
      #     sanctions: nil,
      #     supported_payment_types: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      class BankAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        optional :country, String

        # @!attribute line1
        #
        #   @return [String]
        optional :line1, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        optional :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        optional :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        optional :region, String

        # @!parse
        #   # The address of the bank.
        #   #
        #   # @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String, nil]
        #   #
        #   # @param line2 [String, nil]
        #   #
        #   # @param locality [String, nil] Locality or City.
        #   #
        #   # @param postal_code [String, nil] The postal code of the address.
        #   #
        #   # @param region [String, nil] Region or State.
        #   #
        #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details. In sandbox mode we currently only support `aba` and `swift` with routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :aba
      #   # ...
      # in :au_bsb
      #   # ...
      # in :ca_cpa
      #   # ...
      # in :gb_sort_code
      #   # ...
      # in :in_ifsc
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

      # @example
      #
      # ```ruby
      # case enum
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
    end
  end
end
