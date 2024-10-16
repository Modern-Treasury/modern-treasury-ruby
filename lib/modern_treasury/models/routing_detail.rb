# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] bank_address
      #   @return [ModernTreasury::Models::RoutingDetail::BankAddress]
      required :bank_address, -> { ModernTreasury::Models::RoutingDetail::BankAddress }

      # @!attribute [rw] bank_name
      #   The name of the bank.
      #   @return [String]
      required :bank_name, String

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] payment_type
      #   If the routing detail is to be used for a specific payment type this field will be populated, otherwise null.
      #   @return [Symbol, ModernTreasury::Models::RoutingDetail::PaymentType]
      required :payment_type, enum: -> { ModernTreasury::Models::RoutingDetail::PaymentType }

      # @!attribute [rw] routing_number
      #   The routing number of the bank.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] routing_number_type
      #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details.
      #   @return [Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType]
      required :routing_number_type, enum: -> { ModernTreasury::Models::RoutingDetail::RoutingNumberType }

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      class BankAddress < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        required :line2, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # Create a new instance of BankAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :created_at
        #   #   @option data [String] :line1
        #   #   @option data [String] :line2
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :object
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String] :updated_at
        #   def initialize(data = {}) = super
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

      # @!parse
      #   # Create a new instance of RoutingDetail from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :bank_address
      #   #   @option data [String] :bank_name The name of the bank.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :payment_type If the routing detail is to be used for a specific payment type this field will
      #   #     be populated, otherwise null.
      #   #   @option data [String] :routing_number The routing number of the bank.
      #   #   @option data [String] :routing_number_type The type of routing number. See
      #   #     https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   #     more details.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
