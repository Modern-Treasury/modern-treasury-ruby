# typed: strong

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < ModernTreasury::BaseModel
      # The address of the bank.
      sig { returns(T.nilable(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress)) }
      def bank_address
      end

      sig do
        params(_: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress)
          .returns(ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress)
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
      sig { returns(T.nilable(Symbol)) }
      def routing_number_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(T::Array[Symbol])) }
      def supported_payment_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def supported_payment_types=(_)
      end

      sig do
        params(
          bank_address: ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress,
          bank_name: String,
          routing_number: String,
          routing_number_type: Symbol,
          sanctions: T::Hash[Symbol, T.anything],
          supported_payment_types: T::Array[Symbol]
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
              routing_number_type: Symbol,
              sanctions: T::Hash[Symbol, T.anything],
              supported_payment_types: T::Array[Symbol]
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
      class RoutingNumberType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ABA = :aba
        AU_BSB = :au_bsb
        CA_CPA = :ca_cpa
        GB_SORT_CODE = :gb_sort_code
        IN_IFSC = :in_ifsc
        NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
        SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
        SWIFT = :swift
      end

      class SupportedPaymentType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ach
        AU_BECS = :au_becs
        BACS = :bacs
        BOOK = :book
        CARD = :card
        CHATS = :chats
        CHECK = :check
        CROSS_BORDER = :cross_border
        DK_NETS = :dk_nets
        EFT = :eft
        HU_ICS = :hu_ics
        INTERAC = :interac
        MASAV = :masav
        MX_CCEN = :mx_ccen
        NEFT = :neft
        NICS = :nics
        NZ_BECS = :nz_becs
        PL_ELIXIR = :pl_elixir
        PROVXCHANGE = :provxchange
        RO_SENT = :ro_sent
        RTP = :rtp
        SE_BANKGIROT = :se_bankgirot
        SEN = :sen
        SEPA = :sepa
        SG_GIRO = :sg_giro
        SIC = :sic
        SIGNET = :signet
        SKNBI = :sknbi
        WIRE = :wire
        ZENGIN = :zengin
      end
    end
  end
end
