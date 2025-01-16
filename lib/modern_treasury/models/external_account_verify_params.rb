# frozen_string_literal: true

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::BaseModel
      # @!attribute originating_account_id
      #   The ID of the internal account where the micro-deposits originate from. Both credit and debit capabilities must be enabled.
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
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute fallback_type
      #   A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (payment_type=rtp and fallback_type=ach)
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType]
      optional :fallback_type, enum: -> { ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType }

      # @!attribute priority
      #   Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH transfer. This will apply to both `payment_type` and `fallback_type`.
      #
      #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority]
      optional :priority, enum: -> { ModernTreasury::Models::ExternalAccountVerifyParams::Priority }

      # @!parse
      #   # @param originating_account_id [String] The ID of the internal account where the micro-deposits originate from. Both
      #   #   credit and debit capabilities must be enabled.
      #   #
      #   # @param payment_type [String] Can be `ach`, `eft`, or `rtp`.
      #   #
      #   # @param currency [String] Defaults to the currency of the originating account.
      #   #
      #   # @param fallback_type [String] A payment type to fallback to if the original type is not valid for the
      #   #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   #   (payment_type=rtp and fallback_type=ach)
      #   #
      #   # @param priority [String] Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      #   #   transfer. This will apply to both `payment_type` and `fallback_type`.
      #   #
      #   def initialize(originating_account_id:, payment_type:, currency: nil, fallback_type: nil, priority: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Can be `ach`, `eft`, or `rtp`.
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

      # A payment type to fallback to if the original type is not valid for the receiving account. Currently, this only supports falling back from RTP to ACH (payment_type=rtp and fallback_type=ach)
      #
      # @example
      # ```ruby
      # case fallback_type
      # in :ach
      #   # ...
      # end
      # ```
      class FallbackType < ModernTreasury::Enum
        ACH = :ach

        finalize!
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH transfer. This will apply to both `payment_type` and `fallback_type`.
      #
      # @example
      # ```ruby
      # case priority
      # in :high
      #   # ...
      # in :normal
      #   # ...
      # end
      # ```
      class Priority < ModernTreasury::Enum
        HIGH = :high
        NORMAL = :normal

        finalize!
      end
    end
  end
end
