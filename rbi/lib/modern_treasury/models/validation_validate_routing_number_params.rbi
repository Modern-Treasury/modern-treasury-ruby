# typed: strong

module ModernTreasury
  module Models
    class ValidationValidateRoutingNumberParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The routing number that is being validated.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      sig { returns(ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::OrSymbol) }
      attr_accessor :routing_number_type

      sig do
        params(
          routing_number: String,
          routing_number_type: ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(routing_number:, routing_number_type:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              routing_number: String,
              routing_number_type: ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      module RoutingNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
            )
          end

        ABA =
          T.let(
            :aba,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType::TaggedSymbol]
              )
          end
          def values
          end
        end
      end
    end
  end
end
