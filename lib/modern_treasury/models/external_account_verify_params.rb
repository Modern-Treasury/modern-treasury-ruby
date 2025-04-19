# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#verify
    class ExternalAccountVerifyParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute originating_account_id
      #   The ID of the internal account where the micro-deposits originate from. Both
      #   credit and debit capabilities must be enabled.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute payment_type
      #   Can be `ach`, `eft`, or `rtp`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType]
      required :payment_type, enum: -> { ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType }

      # @!attribute currency
      #   Defaults to the currency of the originating account.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute fallback_type
      #   A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (payment_type=rtp and fallback_type=ach)
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType, nil]
      optional :fallback_type, enum: -> { ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType }

      # @!attribute priority
      #   Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      #   transfer. This will apply to both `payment_type` and `fallback_type`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority, nil]
      optional :priority, enum: -> { ModernTreasury::Models::ExternalAccountVerifyParams::Priority }

      # @!method initialize(originating_account_id:, payment_type:, currency: nil, fallback_type: nil, priority: nil, request_options: {})
      #   @param originating_account_id [String]
      #   @param payment_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType]
      #   @param currency [Symbol, ModernTreasury::Models::Currency]
      #   @param fallback_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType]
      #   @param priority [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Can be `ach`, `eft`, or `rtp`.
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

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (payment_type=rtp and fallback_type=ach)
      module FallbackType
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      # transfer. This will apply to both `payment_type` and `fallback_type`.
      module Priority
        extend ModernTreasury::Internal::Type::Enum

        HIGH = :high
        NORMAL = :normal

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
