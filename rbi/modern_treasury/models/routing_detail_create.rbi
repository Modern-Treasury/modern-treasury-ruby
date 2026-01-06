# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreate < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingDetailCreate,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The routing number of the bank.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      sig do
        returns(
          ModernTreasury::RoutingDetailCreate::RoutingNumberType::OrSymbol
        )
      end
      attr_accessor :routing_number_type

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      sig do
        returns(
          T.nilable(ModernTreasury::RoutingDetailCreate::PaymentType::OrSymbol)
        )
      end
      attr_accessor :payment_type

      sig do
        params(
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::OrSymbol,
          payment_type:
            T.nilable(
              ModernTreasury::RoutingDetailCreate::PaymentType::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The routing number of the bank.
        routing_number:,
        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        routing_number_type:,
        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        payment_type: nil
      )
      end

      sig do
        override.returns(
          {
            routing_number: String,
            routing_number_type:
              ModernTreasury::RoutingDetailCreate::RoutingNumberType::OrSymbol,
            payment_type:
              T.nilable(
                ModernTreasury::RoutingDetailCreate::PaymentType::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::RoutingDetailCreate::RoutingNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        IL_BANK_CODE =
          T.let(
            :il_bank_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreate::RoutingNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::RoutingDetailCreate::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreate::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
