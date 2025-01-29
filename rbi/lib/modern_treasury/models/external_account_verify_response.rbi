# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyResponse < ModernTreasury::Union
      abstract!

      Variants = T.type_alias do
        T.any(
          ModernTreasury::Models::ExternalAccount,
          ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
        )
      end

      class ExternalAccountVerificationAttempt < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            created_at: Time,
            external_account_id: String,
            live_mode: T::Boolean,
            object: String,
            originating_account_id: String,
            payment_type: Symbol,
            priority: T.nilable(Symbol),
            status: Symbol,
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :external_account_id

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(String) }
        attr_accessor :originating_account_id

        sig { returns(Symbol) }
        attr_accessor :payment_type

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :priority

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            external_account_id: String,
            live_mode: T::Boolean,
            object: String,
            originating_account_id: String,
            payment_type: Symbol,
            priority: T.nilable(Symbol),
            status: Symbol,
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          created_at:,
          external_account_id:,
          live_mode:,
          object:,
          originating_account_id:,
          payment_type:,
          priority:,
          status:,
          updated_at:
        ); end

        sig do
          returns(ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Shape)
        end
        def to_h; end

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

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Priority < ModernTreasury::Enum
          abstract!

          HIGH = T.let(:high, T.nilable(Symbol))
          NORMAL = T.let(:normal, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Status < ModernTreasury::Enum
          abstract!

          CANCELLED = :cancelled
          FAILED = :failed
          PENDING_VERIFICATION = :pending_verification
          VERIFIED = :verified

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      sig do
        returns(
          [
            [NilClass, ModernTreasury::Models::ExternalAccount],
            [
              NilClass,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
            ]
          ]
        )
      end
      private_class_method def self.variants; end
    end
  end
end
