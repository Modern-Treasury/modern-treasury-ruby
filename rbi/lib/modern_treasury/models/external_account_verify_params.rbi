# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountVerifyParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The ID of the internal account where the micro-deposits originate from. Both
      # credit and debit capabilities must be enabled.
      sig { returns(String) }
      attr_accessor :originating_account_id

      # Can be `ach`, `eft`, or `rtp`.
      sig { returns(ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::OrSymbol) }
      attr_accessor :payment_type

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Models::Currency::OrSymbol).void }
      attr_writer :currency

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (payment_type=rtp and fallback_type=ach)
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::OrSymbol)) }
      attr_reader :fallback_type

      sig { params(fallback_type: ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::OrSymbol).void }
      attr_writer :fallback_type

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      # transfer. This will apply to both `payment_type` and `fallback_type`.
      sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountVerifyParams::Priority::OrSymbol)) }
      attr_reader :priority

      sig { params(priority: ModernTreasury::Models::ExternalAccountVerifyParams::Priority::OrSymbol).void }
      attr_writer :priority

      sig do
        params(
          originating_account_id: String,
          payment_type: ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::OrSymbol,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          fallback_type: ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::OrSymbol,
          priority: ModernTreasury::Models::ExternalAccountVerifyParams::Priority::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        originating_account_id:,
        payment_type:,
        currency: nil,
        fallback_type: nil,
        priority: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              originating_account_id: String,
              payment_type: ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::OrSymbol,
              currency: ModernTreasury::Models::Currency::OrSymbol,
              fallback_type: ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::OrSymbol,
              priority: ModernTreasury::Models::ExternalAccountVerifyParams::Priority::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # Can be `ach`, `eft`, or `rtp`.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        CROSS_BORDER =
          T.let(:cross_border, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        PL_ELIXIR =
          T.let(:pl_elixir, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        PROVXCHANGE =
          T.let(:provxchange, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SE_BANKGIROT =
          T.let(:se_bankgirot, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccountVerifyParams::PaymentType::TaggedSymbol]) }
        def self.values; end
      end

      # A payment type to fallback to if the original type is not valid for the
      # receiving account. Currently, this only supports falling back from RTP to ACH
      # (payment_type=rtp and fallback_type=ach)
      module FallbackType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Models::ExternalAccountVerifyParams::FallbackType::TaggedSymbol])
        end
        def self.values; end
      end

      # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
      # transfer. This will apply to both `payment_type` and `fallback_type`.
      module Priority
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::ExternalAccountVerifyParams::Priority) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ExternalAccountVerifyParams::Priority::TaggedSymbol) }

        HIGH = T.let(:high, ModernTreasury::Models::ExternalAccountVerifyParams::Priority::TaggedSymbol)
        NORMAL = T.let(:normal, ModernTreasury::Models::ExternalAccountVerifyParams::Priority::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ExternalAccountVerifyParams::Priority::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
