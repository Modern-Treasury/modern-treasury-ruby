# typed: strong

module ModernTreasury
  module Models
    module ExternalAccountVerifyResponse
      extend ModernTreasury::Internal::Type::Union

      class ExternalAccountVerificationAttempt < ModernTreasury::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the external account.
        sig { returns(String) }
        attr_accessor :external_account_id

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        # The ID of the internal account where the micro-deposits originate from.
        sig { returns(String) }
        attr_accessor :originating_account_id

        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
        sig do
          returns(
            ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
          )
        end
        attr_accessor :payment_type

        # The priority of the payment. Can be `normal` or `high`.
        sig do
          returns(
            T.nilable(
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
            )
          )
        end
        attr_accessor :priority

        # The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
        sig do
          returns(
            ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
          )
        end
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
            payment_type: ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::OrSymbol,
            priority: T.nilable(
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::OrSymbol
            ),
            status: ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::OrSymbol,
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
        ); end
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
                payment_type: ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol,
                priority: T.nilable(
                  ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
                ),
                status: ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol,
                updated_at: Time
              }
            )
        end
        def to_hash; end

        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
        module PaymentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
              )
            end

          ACH =
            T.let(
              :ach,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          AU_BECS =
            T.let(
              :au_becs,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          BACS =
            T.let(
              :bacs,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          BOOK =
            T.let(
              :book,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          CARD =
            T.let(
              :card,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          CHECK =
            T.let(
              :check,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          CROSS_BORDER =
            T.let(
              :cross_border,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          DK_NETS =
            T.let(
              :dk_nets,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          EFT =
            T.let(
              :eft,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          HU_ICS =
            T.let(
              :hu_ics,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          INTERAC =
            T.let(
              :interac,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          MASAV =
            T.let(
              :masav,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          MX_CCEN =
            T.let(
              :mx_ccen,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          NEFT =
            T.let(
              :neft,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          NICS =
            T.let(
              :nics,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          NZ_BECS =
            T.let(
              :nz_becs,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          PL_ELIXIR =
            T.let(
              :pl_elixir,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          PROVXCHANGE =
            T.let(
              :provxchange,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          RO_SENT =
            T.let(
              :ro_sent,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SE_BANKGIROT =
            T.let(
              :se_bankgirot,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SEN =
            T.let(
              :sen,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SEPA =
            T.let(
              :sepa,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SG_GIRO =
            T.let(
              :sg_giro,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SIC =
            T.let(
              :sic,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SIGNET =
            T.let(
              :signet,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          SKNBI =
            T.let(
              :sknbi,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          WIRE =
            T.let(
              :wire,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )
          ZENGIN =
            T.let(
              :zengin,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end

        # The priority of the payment. Can be `normal` or `high`.
        module Priority
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
              )
            end

          HIGH =
            T.let(
              :high,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
            )
          NORMAL =
            T.let(
              :normal,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end

        # The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
        module Status
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
              )
            end

          CANCELLED =
            T.let(
              :cancelled,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
            )
          PENDING_VERIFICATION =
            T.let(
              :pending_verification,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end
      end

      sig do
        override
          .returns(
            [ModernTreasury::Models::ExternalAccount, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt]
          )
      end
      def self.variants; end
    end
  end
end
