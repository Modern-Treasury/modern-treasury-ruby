# typed: strong

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < ModernTreasury::BaseModel
      # The address of the bank.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress)) }
      def bank_address
      end

      sig do
        params(
          _: T.any(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress, ModernTreasury::Util::AnyHash)
        )
          .returns(
            T.any(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress, ModernTreasury::Util::AnyHash)
          )
      end
      def bank_address=(_)
      end

      # The name of the bank.
      sig { returns(T.nilable(String)) }
      def bank_name
      end

      sig { params(_: String).returns(String) }
      def bank_name=(_)
      end

      # The routing number of the bank.
      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)) }
      def routing_number_type
      end

      sig do
        params(_: ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
          .returns(ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
      end
      def routing_number_type=(_)
      end

      # An object containing key-value pairs, each with a sanctions list as the key and
      #   a boolean value representing whether the bank is on that particular sanctions
      #   list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def sanctions
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def sanctions=(_)
      end

      # An array of payment types that are supported for this routing number. This can
      #   include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs`, and 'fednow' currently.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol]
          )
        )
      end
      def supported_payment_types
      end

      sig do
        params(
          _: T::Array[ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol]
        )
          .returns(T::Array[ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol])
      end
      def supported_payment_types=(_)
      end

      sig do
        params(
          bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress,
          bank_name: String,
          routing_number: String,
          routing_number_type: ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol,
          sanctions: T::Hash[Symbol, T.anything],
          supported_payment_types: T::Array[ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol]
        )
          .returns(T.attached_class)
      end
      def self.new(
        bank_address: nil,
        bank_name: nil,
        routing_number: nil,
        routing_number_type: nil,
        sanctions: nil,
        supported_payment_types: nil
      )
      end

      sig do
        override
          .returns(
            {
              bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress,
              bank_name: String,
              routing_number: String,
              routing_number_type: ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol,
              sanctions: T::Hash[Symbol, T.anything],
              supported_payment_types: T::Array[ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol]
            }
          )
      end
      def to_hash
      end

      class BankAddress < ModernTreasury::BaseModel
        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        # Locality or City.
        sig { returns(T.nilable(String)) }
        def locality
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        # Region or State.
        sig { returns(T.nilable(String)) }
        def region
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def region=(_)
        end

        # The address of the bank.
        sig do
          params(
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
        end

        sig do
          override
            .returns(
              {
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                locality: T.nilable(String),
                postal_code: T.nilable(String),
                region: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end

      # The type of routing number. See
      #   https://docs.moderntreasury.com/platform/reference/routing-detail-object for
      #   more details. In sandbox mode we currently only support `aba` and `swift` with
      #   routing numbers '123456789' and 'GRINUST0XXX' respectively.
      module RoutingNumberType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol) }

        ABA = T.let(:aba, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
        AU_BSB =
          T.let(:au_bsb, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
        CA_CPA =
          T.let(:ca_cpa, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
        GB_SORT_CODE =
          T.let(:gb_sort_code, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
        IN_IFSC =
          T.let(:in_ifsc, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nz_national_clearing_code,
            ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :se_bankgiro_clearing_code,
            ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol
          )
        SWIFT =
          T.let(:swift, ModernTreasury::Models::RoutingNumberLookupRequest::RoutingNumberType::TaggedSymbol)
      end

      module SupportedPaymentType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        AU_BECS =
          T.let(:au_becs, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        BACS =
          T.let(:bacs, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        BOOK =
          T.let(:book, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        CARD =
          T.let(:card, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        CHATS =
          T.let(:chats, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        CHECK =
          T.let(:check, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(:dk_nets, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        EFT = T.let(:eft, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        HU_ICS =
          T.let(:hu_ics, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        INTERAC =
          T.let(:interac, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        MASAV =
          T.let(:masav, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        MX_CCEN =
          T.let(:mx_ccen, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        NEFT =
          T.let(:neft, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        NICS =
          T.let(:nics, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        NZ_BECS =
          T.let(:nz_becs, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        PL_ELIXIR =
          T.let(:pl_elixir, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(:ro_sent, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        RTP = T.let(:rtp, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol
          )
        SEN = T.let(:sen, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SEPA =
          T.let(:sepa, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SG_GIRO =
          T.let(:sg_giro, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SIC = T.let(:sic, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SIGNET =
          T.let(:signet, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        SKNBI =
          T.let(:sknbi, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        WIRE =
          T.let(:wire, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
        ZENGIN =
          T.let(:zengin, ModernTreasury::Models::RoutingNumberLookupRequest::SupportedPaymentType::TaggedSymbol)
      end
    end
  end
end
