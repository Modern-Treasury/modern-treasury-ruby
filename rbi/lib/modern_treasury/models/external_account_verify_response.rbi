# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyResponse < ModernTreasury::Union
      abstract!

      Variants = type_template(:out) do
        {
          fixed: T.any(
            ModernTreasury::Models::ExternalAccount,
            ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
          )
        }
      end

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

        # The ID of the external account.
        sig { returns(String) }
        def external_account_id
        end

        sig { params(_: String).returns(String) }
        def external_account_id=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
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

        # The ID of the internal account where the micro-deposits originate from.
        sig { returns(String) }
        def originating_account_id
        end

        sig { params(_: String).returns(String) }
        def originating_account_id=(_)
        end

        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
        sig { returns(Symbol) }
        def payment_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def payment_type=(_)
        end

        # The priority of the payment. Can be `normal` or `high`.
        sig { returns(T.nilable(Symbol)) }
        def priority
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def priority=(_)
        end

        # The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          override
            .returns(
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

        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
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

        # The priority of the payment. Can be `normal` or `high`.
        class Priority < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          HIGH = :high
          NORMAL = :normal
        end

        # The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
        class Status < ModernTreasury::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CANCELLED = :cancelled
          FAILED = :failed
          PENDING_VERIFICATION = :pending_verification
          VERIFIED = :verified
        end
      end
    end
  end
end
