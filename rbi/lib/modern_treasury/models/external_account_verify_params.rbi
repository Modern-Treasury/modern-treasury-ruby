# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(Symbol) }
      def payment_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_type=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def fallback_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fallback_type=(_)
      end

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

      class PaymentType < ModernTreasury::Enum
        abstract!

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class FallbackType < ModernTreasury::Enum
        abstract!

        ACH = :ach

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
