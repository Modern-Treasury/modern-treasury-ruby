# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Validations#validate_routing_number
    class ValidationValidateRoutingNumberParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute routing_number
      #   The routing number that is being validated.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute routing_number_type
      #   The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #
      #   @return [Symbol, ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType]
      required :routing_number_type,
               enum: -> { ModernTreasury::ValidationValidateRoutingNumberParams::RoutingNumberType }

      # @!method initialize(routing_number:, routing_number_type:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ValidationValidateRoutingNumberParams} for more
      #   details.
      #
      #   @param routing_number [String] The routing number that is being validated.
      #
      #   @param routing_number_type [Symbol, ModernTreasury::Models::ValidationValidateRoutingNumberParams::RoutingNumberType] The type of routing number. See https://docs.moderntreasury.com/platform/referen
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details. In sandbox mode we currently only support `aba` and `swift` with
      # routing numbers '123456789' and 'GRINUST0XXX' respectively.
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        ABA = :aba
        AU_BSB = :au_bsb
        BR_CODIGO = :br_codigo
        CA_CPA = :ca_cpa
        CHIPS = :chips
        CNAPS = :cnaps
        DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
        GB_SORT_CODE = :gb_sort_code
        HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
        HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
        ID_SKNBI_CODE = :id_sknbi_code
        IN_IFSC = :in_ifsc
        JP_ZENGIN_CODE = :jp_zengin_code
        MX_BANK_IDENTIFIER = :mx_bank_identifier
        MY_BRANCH_CODE = :my_branch_code
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
        SWIFT = :swift
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
