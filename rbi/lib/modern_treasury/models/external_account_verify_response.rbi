# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyResponse < ModernTreasury::Union
      abstract!

      class ExternalAccountVerificationAttempt < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(String) }
        def external_account_id
        end

        sig { params(_: String).returns(String) }
        def external_account_id=(_)
        end

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

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
        def priority
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def priority=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

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
        )
        end

        sig do
          override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Priority < ModernTreasury::Enum
          abstract!

          HIGH = T.let(:high, T.nilable(Symbol))
          NORMAL = T.let(:normal, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Status < ModernTreasury::Enum
          abstract!

          CANCELLED = :cancelled
          FAILED = :failed
          PENDING_VERIFICATION = :pending_verification
          VERIFIED = :verified

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      sig do
        override.returns(
          [
            [NilClass, ModernTreasury::Models::ExternalAccount],
            [
              NilClass,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
            ]
          ]
        )
      end
      private_class_method def self.variants
      end
    end
  end
end
