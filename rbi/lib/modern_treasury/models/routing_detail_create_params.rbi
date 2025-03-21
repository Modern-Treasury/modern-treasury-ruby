# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol) }
      attr_accessor :accounts_type

      # The routing number of the bank.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details.
      sig { returns(ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol) }
      attr_accessor :routing_number_type

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol)) }
      attr_accessor :payment_type

      sig do
        params(
          accounts_type: ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::OrSymbol,
          routing_number: String,
          routing_number_type: ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::OrSymbol,
          payment_type: T.nilable(ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::OrSymbol),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.let(:external_accounts, ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetailCreateParams::AccountsType::TaggedSymbol]) }
        def self.values
        end
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

        ABA = T.let(:aba, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        AU_BSB =
          T.let(:au_bsb, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        BR_CODIGO =
          T.let(:br_codigo, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        CA_CPA =
          T.let(:ca_cpa, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        CHIPS = T.let(:chips, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dk_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(:gb_sort_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hk_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :hu_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(:id_sknbi_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        IN_IFSC =
          T.let(:in_ifsc, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        JP_ZENGIN_CODE =
          T.let(:jp_zengin_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        MX_BANK_IDENTIFIER =
          T.let(
            :mx_bank_identifier,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(:my_branch_code, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        PL_NATIONAL_CLEARING_CODE =
          T.let(
            :pl_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SG_INTERBANK_CLEARING_CODE =
          T.let(
            :sg_interbank_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )
        SWIFT = T.let(:swift, ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[ModernTreasury::Models::RoutingDetailCreateParams::RoutingNumberType::TaggedSymbol])
        end
        def self.values
        end
      end

      # If the routing detail is to be used for a specific payment type this field will
      #   be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        PL_ELIXIR =
          T.let(:pl_elixir, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        PROVXCHANGE =
          T.let(:provxchange, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetailCreateParams::PaymentType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
