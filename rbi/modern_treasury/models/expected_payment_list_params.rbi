# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPaymentListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Specify counterparty_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Used to return expected payments created after some datetime
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lower_bound

      sig { params(created_at_lower_bound: Time).void }
      attr_writer :created_at_lower_bound

      # Used to return expected payments created before some datetime
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_upper_bound

      sig { params(created_at_upper_bound: Time).void }
      attr_writer :created_at_upper_bound

      # One of credit, debit
      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: ModernTreasury::TransactionDirection::OrSymbol).void
      end
      attr_writer :direction

      # Specify internal_account_id to see expected_payments for a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # One of unreconciled, reconciled, or archived.
      sig do
        returns(
          T.nilable(ModernTreasury::ExpectedPaymentListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::ExpectedPaymentListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      # sepa, signet, wire
      sig do
        returns(
          T.nilable(ModernTreasury::ExpectedPaymentListParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: ModernTreasury::ExpectedPaymentListParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::ExpectedPaymentListParams::Status::OrSymbol,
          type: ModernTreasury::ExpectedPaymentListParams::Type::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Specify counterparty_id to see expected_payments for a specific account.
        counterparty_id: nil,
        # Used to return expected payments created after some datetime
        created_at_lower_bound: nil,
        # Used to return expected payments created before some datetime
        created_at_upper_bound: nil,
        # One of credit, debit
        direction: nil,
        # Specify internal_account_id to see expected_payments for a specific account.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # One of unreconciled, reconciled, or archived.
        status: nil,
        # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
        # sepa, signet, wire
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            created_at_lower_bound: Time,
            created_at_upper_bound: Time,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            internal_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            status: ModernTreasury::ExpectedPaymentListParams::Status::OrSymbol,
            type: ModernTreasury::ExpectedPaymentListParams::Type::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of unreconciled, reconciled, or archived.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPaymentListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARCHIVED =
          T.let(
            :archived,
            ModernTreasury::ExpectedPaymentListParams::Status::TaggedSymbol
          )
        PARTIALLY_RECONCILED =
          T.let(
            :partially_reconciled,
            ModernTreasury::ExpectedPaymentListParams::Status::TaggedSymbol
          )
        RECONCILED =
          T.let(
            :reconciled,
            ModernTreasury::ExpectedPaymentListParams::Status::TaggedSymbol
          )
        UNRECONCILED =
          T.let(
            :unreconciled,
            ModernTreasury::ExpectedPaymentListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
      # sepa, signet, wire
      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPaymentListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentListParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
