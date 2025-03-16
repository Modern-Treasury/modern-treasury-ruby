# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the internal account where the micro-deposits originate from. Both
      #   credit and debit capabilities must be enabled.
      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      # Can be `ach`, `eft`, or `rtp`.
      sig { returns(Symbol) }
      def payment_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_type=(_)
      end

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (payment_type=rtp and fallback_type=ach)
      sig { returns(T.nilable(Symbol)) }
      def fallback_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fallback_type=(_)
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      #   transfer. This will apply to both `payment_type` and `fallback_type`.
      sig { returns(T.nilable(Symbol)) }
      def priority
      end

      sig { params(_: Symbol).returns(Symbol) }
      def priority=(_)
      end

      sig do
        params(
          originating_account_id: String,
          payment_type: Symbol,
          currency: Symbol,
          fallback_type: Symbol,
          priority: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        originating_account_id:,
        payment_type:,
        currency: nil,
        fallback_type: nil,
        priority: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              originating_account_id: String,
              payment_type: Symbol,
              currency: Symbol,
              fallback_type: Symbol,
              priority: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Can be `ach`, `eft`, or `rtp`.
      class PaymentType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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

      # A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (payment_type=rtp and fallback_type=ach)
      class FallbackType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ach
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      #   transfer. This will apply to both `payment_type` and `fallback_type`.
      class Priority < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        HIGH = :high
        NORMAL = :normal
      end
    end
  end
end
