# typed: strong

module ModernTreasury
  module Models
    class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress)) }
      attr_reader :bank_address

      sig do
        params(
          bank_address: T.nilable(T.any(ModernTreasury::Models::RoutingDetail::BankAddress, ModernTreasury::Internal::AnyHash))
        )
          .void
      end
      attr_writer :bank_address

      # The name of the bank.
      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)) }
      attr_accessor :payment_type

      # The routing number of the bank.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      sig { returns(ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol) }
      attr_accessor :routing_number_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          bank_address: T.nilable(T.any(ModernTreasury::Models::RoutingDetail::BankAddress, ModernTreasury::Internal::AnyHash)),
          bank_name: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          payment_type: T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::OrSymbol),
          routing_number: String,
          routing_number_type: ModernTreasury::Models::RoutingDetail::RoutingNumberType::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        bank_address:,
        bank_name:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        payment_type:,
        routing_number:,
        routing_number_type:,
        updated_at:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              bank_address: T.nilable(ModernTreasury::Models::RoutingDetail::BankAddress),
              bank_name: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              payment_type: T.nilable(ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol),
              routing_number: String,
              routing_number_type: ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash; end

      class BankAddress < ModernTreasury::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        # Locality or City.
        sig { returns(T.nilable(String)) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :object

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(T.nilable(String)) }
        attr_accessor :region

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            country: T.nilable(String),
            created_at: Time,
            line1: T.nilable(String),
            line2: T.nilable(String),
            live_mode: T::Boolean,
            locality: T.nilable(String),
            object: String,
            postal_code: T.nilable(String),
            region: T.nilable(String),
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          country:,
          created_at:,
          line1:,
          line2:,
          live_mode:,
          locality:,
          object:,
          postal_code:,
          region:,
          updated_at:
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                country: T.nilable(String),
                created_at: Time,
                line1: T.nilable(String),
                line2: T.nilable(String),
                live_mode: T::Boolean,
                locality: T.nilable(String),
                object: String,
                postal_code: T.nilable(String),
                region: T.nilable(String),
                updated_at: Time
              }
            )
        end
        def to_hash; end
      end

      # If the routing detail is to be used for a specific payment type this field will
      # be populated, otherwise null.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetail::PaymentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ach, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        AU_BECS = T.let(:au_becs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        BACS = T.let(:bacs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        BOOK = T.let(:book, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CARD = T.let(:card, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CHATS = T.let(:chats, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CHECK = T.let(:check, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        CROSS_BORDER = T.let(:cross_border, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        DK_NETS = T.let(:dk_nets, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        HU_ICS = T.let(:hu_ics, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        INTERAC = T.let(:interac, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        MASAV = T.let(:masav, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        MX_CCEN = T.let(:mx_ccen, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NEFT = T.let(:neft, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NICS = T.let(:nics, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        NZ_BECS = T.let(:nz_becs, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        PL_ELIXIR = T.let(:pl_elixir, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        PROVXCHANGE = T.let(:provxchange, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        RO_SENT = T.let(:ro_sent, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SE_BANKGIROT = T.let(:se_bankgirot, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SEN = T.let(:sen, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SEPA = T.let(:sepa, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SG_GIRO = T.let(:sg_giro, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SIGNET = T.let(:signet, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        SKNBI = T.let(:sknbi, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)
        ZENGIN = T.let(:zengin, ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetail::PaymentType::TaggedSymbol]) }
        def self.values; end
      end

      # The type of routing number. See
      # https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      # more details.
      module RoutingNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingDetail::RoutingNumberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABA = T.let(:aba, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        AU_BSB = T.let(:au_bsb, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        BR_CODIGO = T.let(:br_codigo, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CA_CPA = T.let(:ca_cpa, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CHIPS = T.let(:chips, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(:dk_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        GB_SORT_CODE =
          T.let(:gb_sort_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        HK_INTERBANK_CLEARING_CODE =
          T.let(:hk_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        HU_INTERBANK_CLEARING_CODE =
          T.let(:hu_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        ID_SKNBI_CODE =
          T.let(:id_sknbi_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        IN_IFSC = T.let(:in_ifsc, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        JP_ZENGIN_CODE =
          T.let(:jp_zengin_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        MX_BANK_IDENTIFIER =
          T.let(:mx_bank_identifier, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        MY_BRANCH_CODE =
          T.let(:my_branch_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(:nz_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        PL_NATIONAL_CLEARING_CODE =
          T.let(:pl_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SE_BANKGIRO_CLEARING_CODE =
          T.let(:se_bankgiro_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SG_INTERBANK_CLEARING_CODE =
          T.let(:sg_interbank_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        SWIFT = T.let(:swift, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(:za_national_clearing_code, ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::RoutingDetail::RoutingNumberType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
