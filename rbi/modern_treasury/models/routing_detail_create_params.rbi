# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig do
        returns(
          ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol
        )
      end
      attr_accessor :accounts_type

      # The routing number of the bank.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      sig do
        returns(
          ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
        )
      end
      attr_accessor :routing_number_type

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      sig do
        returns(
          T.nilable(
            ModernTreasury::RoutingDetailCreateParams::PaymentType::OrSymbol
          )
        )
      end
      attr_accessor :payment_type

      sig do
        params(
          accounts_type:
            ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol,
          routing_number: String,
          routing_number_type:
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
          payment_type:
            T.nilable(
              ModernTreasury::RoutingDetailCreateParams::PaymentType::OrSymbol
            ),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        accounts_type:,
        # The routing number of the bank.
        routing_number:,
        # The type of routing number. See
        # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
        # more details.
        routing_number_type:,
        # If the routing detail is to be used for a specific payment type this field will
        # be populated, otherwise null.
        payment_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            accounts_type:
              ModernTreasury::RoutingDetailCreateParams::AccountsType::OrSymbol,
            routing_number: String,
            routing_number_type:
              ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
            payment_type:
              T.nilable(
                ModernTreasury::RoutingDetailCreateParams::PaymentType::OrSymbol
              ),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::RoutingDetailCreateParams::AccountsType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_ACCOUNTS =
          T.let(
            :external_accounts,
            ModernTreasury::RoutingDetailCreateParams::AccountsType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateParams::AccountsType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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
              ModernTreasury::RoutingDetailCreateParams::RoutingNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA =
          T.let(
            :aba,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :au_bsb,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :br_codigo,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :ca_cpa,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        CHIPS =
          T.let(
            :chips,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gb_sort_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :id_sknbi_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :in_ifsc,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jp_zengin_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :my_branch_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(
            :swift,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
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
              ModernTreasury::RoutingDetailCreateParams::PaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::RoutingDetailCreateParams::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
