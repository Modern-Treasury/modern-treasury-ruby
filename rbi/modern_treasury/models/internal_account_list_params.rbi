# typed: strong

module ModernTreasury
  module Models
    class InternalAccountListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccountListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Only return internal accounts associated with this counterparty.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Only return internal accounts with this currency.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
      attr_writer :currency

      # Only return internal accounts associated with this legal entity.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Only return internal accounts that can originate payments with this direction.
      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :payment_direction

      sig do
        params(
          payment_direction: ModernTreasury::TransactionDirection::OrSymbol
        ).void
      end
      attr_writer :payment_direction

      # Only return internal accounts that can make this type of payment.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InternalAccountListParams::PaymentType::OrSymbol
          )
        )
      end
      attr_reader :payment_type

      sig do
        params(
          payment_type:
            ModernTreasury::InternalAccountListParams::PaymentType::OrSymbol
        ).void
      end
      attr_writer :payment_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Only return internal accounts with this status.
      sig do
        returns(
          T.nilable(ModernTreasury::InternalAccountListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::InternalAccountListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          currency: ModernTreasury::Currency::OrSymbol,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          payment_direction: ModernTreasury::TransactionDirection::OrSymbol,
          payment_type:
            ModernTreasury::InternalAccountListParams::PaymentType::OrSymbol,
          per_page: Integer,
          status: ModernTreasury::InternalAccountListParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Only return internal accounts associated with this counterparty.
        counterparty_id: nil,
        # Only return internal accounts with this currency.
        currency: nil,
        # Only return internal accounts associated with this legal entity.
        legal_entity_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # Only return internal accounts that can originate payments with this direction.
        payment_direction: nil,
        # Only return internal accounts that can make this type of payment.
        payment_type: nil,
        per_page: nil,
        # Only return internal accounts with this status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            currency: ModernTreasury::Currency::OrSymbol,
            legal_entity_id: String,
            metadata: T::Hash[Symbol, String],
            payment_direction: ModernTreasury::TransactionDirection::OrSymbol,
            payment_type:
              ModernTreasury::InternalAccountListParams::PaymentType::OrSymbol,
            per_page: Integer,
            status: ModernTreasury::InternalAccountListParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return internal accounts that can make this type of payment.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::InternalAccountListParams::PaymentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        GB_FPS =
          T.let(
            :gb_fps,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InternalAccountListParams::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Only return internal accounts with this status.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InternalAccountListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
          )
        PENDING_ACTIVATION =
          T.let(
            :pending_activation,
            ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
          )
        PENDING_CLOSURE =
          T.let(
            :pending_closure,
            ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InternalAccountListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
