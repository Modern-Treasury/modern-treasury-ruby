# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol) }
      def accounts_type
      end

      sig do
        params(_: ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol)
          .returns(ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol)
      end
      def accounts_type=(_)
      end

      # The routing number of the bank.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      sig { returns(ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol) }
      def routing_number_type
      end

      sig do
        params(_: ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
          .returns(ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
      end
      def routing_number_type=(_)
      end

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)) }
      def payment_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol))
      end
      def payment_type=(_)
      end

      sig do
        params(
          accounts_type: ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol,
          routing_number: String,
          routing_number_type: ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
          payment_type: T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(accounts_type:, routing_number:, routing_number_type:, payment_type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              accounts_type: ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol,
              routing_number: String,
              routing_number_type: ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
              payment_type: T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AccountsType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::TaggedSymbol) }

        EXTERNAL_ACCOUNTS =
          T.let(:external_accounts, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol)
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      module RoutingNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol) }

        ABA = T.let(:aba, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        AU_BSB = T.let(:au_bsb, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        BR_CODIGO =
          T.let(:br_codigo, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        CA_CPA = T.let(:ca_cpa, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        CHIPS = T.let(:chips, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        GB_SORT_CODE =
          T.let(:gb_sort_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        ID_SKNBI_CODE =
          T.let(:id_sknbi_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        IN_IFSC = T.let(:in_ifsc, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        JP_ZENGIN_CODE =
          T.let(:jp_zengin_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        MX_BANK_IDENTIFIER =
          T.let(:mx_bank_identifier, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        MY_BRANCH_CODE =
          T.let(:my_branch_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
        SWIFT = T.let(:swift, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol
          )
      end

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        CARD = T.let(:card, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        PROVXCHANGE =
          T.let(:provxchange, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)
      end
    end
  end
end
