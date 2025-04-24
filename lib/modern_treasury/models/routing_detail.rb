# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::RoutingDetails#create
    class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute bank_address
      #
      #   @return [ModernTreasury::Models::RoutingDetail::BankAddress, nil]
      required :bank_address, -> { ModernTreasury::Models::RoutingDetail::BankAddress }, nil?: true

      # @!attribute bank_name
      #   The name of the bank.
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute payment_type
      #   If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingDetail::PaymentType, nil]
      required :payment_type, enum: -> { ModernTreasury::Models::RoutingDetail::PaymentType }, nil?: true

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
      #   @return [Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType]
      required :routing_number_type, enum: -> { ModernTreasury::Models::RoutingDetail::RoutingNumberType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, bank_address:, bank_name:, created_at:, discarded_at:, live_mode:, object:, payment_type:, routing_number:, routing_number_type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::RoutingDetail} for more details.
      #
      #   @param id [String]
      #
      #   @param bank_address [ModernTreasury::Models::RoutingDetail::BankAddress, nil]
      #
      #   @param bank_name [String] The name of the bank.
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #   ...
      #
      #   @param object [String]
      #
      #   @param payment_type [Symbol, ModernTreasury::Models::RoutingDetail::PaymentType, nil] If the routing detail is to be used for a specific payment type this field will
      #   ...
      #
      #   @param routing_number [String] The routing number of the bank.
      #
      #   @param routing_number_type [Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType] The type of routing number. See https://docs.moderntreasury.com/platform/referen
      #   ...
      #
      #   @param updated_at [Time]

      # @see ModernTreasury::Models::RoutingDetail#bank_address
      class BankAddress < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String, nil]
        required :locality, String, nil?: true

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute region
        #   Region or State.
        #
        #   @return [String, nil]
        required :region, String, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, country:, created_at:, line1:, line2:, live_mode:, locality:, object:, postal_code:, region:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::RoutingDetail::BankAddress} for more details.
        #
        #   @param id [String]
        #
        #   @param country [String, nil] Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @param created_at [Time]
        #
        #   @param line1 [String, nil]
        #
        #   @param line2 [String, nil]
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #   ...
        #
        #   @param locality [String, nil] Locality or City.
        #
        #   @param object [String]
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param region [String, nil] Region or State.
        #
        #   @param updated_at [Time]
      end

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      #
      # @see ModernTreasury::Models::RoutingDetail#payment_type
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

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      #
      # @see ModernTreasury::Models::RoutingDetail#routing_number_type
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
    end
  end
end
