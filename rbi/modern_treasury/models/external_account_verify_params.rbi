# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # The ID of the internal account where the micro-deposits originate from. Both
      # credit and debit capabilities must be enabled.
      sig { returns(String) }
      attr_accessor :originating_account_id

      # Can be `ach`, `eft`, or `rtp`.
      sig do
        returns(
          ModernTreasury::ExternalAccountVerifyParams::PaymentType::OrSymbol
        )
      end
      attr_accessor :payment_type

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
      attr_writer :currency

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (payment_type=rtp and fallback_type=ach)
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExternalAccountVerifyParams::FallbackType::OrSymbol
          )
        )
      end
      attr_reader :fallback_type

      sig do
        params(
          fallback_type:
            ModernTreasury::ExternalAccountVerifyParams::FallbackType::OrSymbol
        ).void
      end
      attr_writer :fallback_type

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      # transfer. This will apply to both `payment_type` and `fallback_type`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExternalAccountVerifyParams::Priority::OrSymbol
          )
        )
      end
      attr_reader :priority

      sig do
        params(
          priority:
            ModernTreasury::ExternalAccountVerifyParams::Priority::OrSymbol
        ).void
      end
      attr_writer :priority

      sig do
        params(
          originating_account_id: String,
          payment_type:
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::OrSymbol,
          currency: ModernTreasury::Currency::OrSymbol,
          fallback_type:
            ModernTreasury::ExternalAccountVerifyParams::FallbackType::OrSymbol,
          priority:
            ModernTreasury::ExternalAccountVerifyParams::Priority::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the internal account where the micro-deposits originate from. Both
        # credit and debit capabilities must be enabled.
        originating_account_id:,
        # Can be `ach`, `eft`, or `rtp`.
        payment_type:,
        # Defaults to the currency of the originating account.
        currency: nil,
        # A payment type to fallback to if the original type is not valid for the
        # receiving account. Currently, this only supports falling back from RTP to ACH
        # (payment_type=rtp and fallback_type=ach)
        fallback_type: nil,
        # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
        # transfer. This will apply to both `payment_type` and `fallback_type`.
        priority: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            originating_account_id: String,
            payment_type:
              ModernTreasury::ExternalAccountVerifyParams::PaymentType::OrSymbol,
            currency: ModernTreasury::Currency::OrSymbol,
            fallback_type:
              ModernTreasury::ExternalAccountVerifyParams::FallbackType::OrSymbol,
            priority:
              ModernTreasury::ExternalAccountVerifyParams::Priority::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Can be `ach`, `eft`, or `rtp`.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExternalAccountVerifyParams::PaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccountVerifyParams::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (payment_type=rtp and fallback_type=ach)
      module FallbackType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExternalAccountVerifyParams::FallbackType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::ExternalAccountVerifyParams::FallbackType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccountVerifyParams::FallbackType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      # transfer. This will apply to both `payment_type` and `fallback_type`.
      module Priority
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExternalAccountVerifyParams::Priority)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGH =
          T.let(
            :high,
            ModernTreasury::ExternalAccountVerifyParams::Priority::TaggedSymbol
          )
        NORMAL =
          T.let(
            :normal,
            ModernTreasury::ExternalAccountVerifyParams::Priority::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccountVerifyParams::Priority::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
