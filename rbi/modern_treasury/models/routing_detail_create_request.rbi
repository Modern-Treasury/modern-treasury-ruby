# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::RoutingDetailCreateRequest,
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
          ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::OrSymbol
        )
      end
      attr_accessor :routing_number_type

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      sig do
        returns(
          T.nilable(
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::OrSymbol
          )
        )
      end
      attr_accessor :payment_type

      sig do
        params(
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::OrSymbol,
          payment_type:
            T.nilable(
              ModernTreasury::RoutingDetailCreateRequest::PaymentType::OrSymbol
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
              ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::OrSymbol,
            payment_type:
              T.nilable(
                ModernTreasury::RoutingDetailCreateRequest::PaymentType::OrSymbol
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
              ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        IL_BANK_CODE =
          T.let(
            :il_bank_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        VASP =
          T.let(
            :vasp,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateRequest::RoutingNumberType::TaggedSymbol
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
            T.all(
              Symbol,
              ModernTreasury::RoutingDetailCreateRequest::PaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        STABLECOIN =
          T.let(
            :stablecoin,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateRequest::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
