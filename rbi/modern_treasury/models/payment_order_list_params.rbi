# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::PaymentOrderListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # An inclusive upper bound for searching created_at
      sig { returns(T.nilable(Date)) }
      attr_reader :created_at_end

      sig { params(created_at_end: Date).void }
      attr_writer :created_at_end

      # An inclusive lower bound for searching created_at
      sig { returns(T.nilable(Date)) }
      attr_reader :created_at_start

      sig { params(created_at_start: Date).void }
      attr_writer :created_at_start

      sig { returns(T.nilable(ModernTreasury::TransactionDirection::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: ModernTreasury::TransactionDirection::OrSymbol).void
      end
      attr_writer :direction

      # An inclusive upper bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date_end

      sig { params(effective_date_end: Date).void }
      attr_writer :effective_date_end

      # An inclusive lower bound for searching effective_date
      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date_start

      sig { params(effective_date_start: Date).void }
      attr_writer :effective_date_start

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :originating_account_id

      sig { params(originating_account_id: String).void }
      attr_writer :originating_account_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      # an overnight check rather than standard mail.
      sig do
        returns(
          T.nilable(ModernTreasury::PaymentOrderListParams::Priority::OrSymbol)
        )
      end
      attr_reader :priority

      sig do
        params(
          priority: ModernTreasury::PaymentOrderListParams::Priority::OrSymbol
        ).void
      end
      attr_writer :priority

      # An inclusive upper bound for searching process_after
      sig { returns(T.nilable(Time)) }
      attr_reader :process_after_end

      sig { params(process_after_end: Time).void }
      attr_writer :process_after_end

      # An inclusive lower bound for searching process_after
      sig { returns(T.nilable(Time)) }
      attr_reader :process_after_start

      sig { params(process_after_start: Time).void }
      attr_writer :process_after_start

      # Query for records with the provided reference number
      sig { returns(T.nilable(String)) }
      attr_reader :reference_number

      sig { params(reference_number: String).void }
      attr_writer :reference_number

      sig do
        returns(
          T.nilable(ModernTreasury::PaymentOrderListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::PaymentOrderListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # The ID of a transaction that the payment order has been reconciled to.
      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      sig do
        returns(
          T.nilable(ModernTreasury::PaymentOrderListParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: ModernTreasury::PaymentOrderListParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_end: Date,
          created_at_start: Date,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          effective_date_end: Date,
          effective_date_start: Date,
          metadata: T::Hash[Symbol, String],
          originating_account_id: String,
          per_page: Integer,
          priority: ModernTreasury::PaymentOrderListParams::Priority::OrSymbol,
          process_after_end: Time,
          process_after_start: Time,
          reference_number: String,
          status: ModernTreasury::PaymentOrderListParams::Status::OrSymbol,
          transaction_id: String,
          type: ModernTreasury::PaymentOrderListParams::Type::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        counterparty_id: nil,
        # An inclusive upper bound for searching created_at
        created_at_end: nil,
        # An inclusive lower bound for searching created_at
        created_at_start: nil,
        direction: nil,
        # An inclusive upper bound for searching effective_date
        effective_date_end: nil,
        # An inclusive lower bound for searching effective_date
        effective_date_start: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        originating_account_id: nil,
        per_page: nil,
        # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
        # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
        # an overnight check rather than standard mail.
        priority: nil,
        # An inclusive upper bound for searching process_after
        process_after_end: nil,
        # An inclusive lower bound for searching process_after
        process_after_start: nil,
        # Query for records with the provided reference number
        reference_number: nil,
        status: nil,
        # The ID of a transaction that the payment order has been reconciled to.
        transaction_id: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            created_at_end: Date,
            created_at_start: Date,
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            effective_date_end: Date,
            effective_date_start: Date,
            metadata: T::Hash[Symbol, String],
            originating_account_id: String,
            per_page: Integer,
            priority:
              ModernTreasury::PaymentOrderListParams::Priority::OrSymbol,
            process_after_end: Time,
            process_after_start: Time,
            reference_number: String,
            status: ModernTreasury::PaymentOrderListParams::Status::OrSymbol,
            transaction_id: String,
            type: ModernTreasury::PaymentOrderListParams::Type::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      # an overnight check rather than standard mail.
      module Priority
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentOrderListParams::Priority)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGH =
          T.let(
            :high,
            ModernTreasury::PaymentOrderListParams::Priority::TaggedSymbol
          )
        NORMAL =
          T.let(
            :normal,
            ModernTreasury::PaymentOrderListParams::Priority::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentOrderListParams::Priority::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentOrderListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :approved,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        NEEDS_APPROVAL =
          T.let(
            :needs_approval,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        RETURNED =
          T.let(
            :returned,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :reversed,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        SENT =
          T.let(
            :sent,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )
        STOPPED =
          T.let(
            :stopped,
            ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentOrderListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentOrderListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        AU_BECS =
          T.let(
            :au_becs,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        BACS =
          T.let(
            :bacs,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        BOOK =
          T.let(
            :book,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        CARD =
          T.let(
            :card,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        CHATS =
          T.let(
            :chats,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        CHECK =
          T.let(
            :check,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        CROSS_BORDER =
          T.let(
            :cross_border,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        DK_NETS =
          T.let(
            :dk_nets,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        EFT =
          T.let(
            :eft,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        HU_ICS =
          T.let(
            :hu_ics,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        INTERAC =
          T.let(
            :interac,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        MASAV =
          T.let(
            :masav,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        MX_CCEN =
          T.let(
            :mx_ccen,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        NEFT =
          T.let(
            :neft,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        NICS =
          T.let(
            :nics,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        NZ_BECS =
          T.let(
            :nz_becs,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        PL_ELIXIR =
          T.let(
            :pl_elixir,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :polygon,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        PROVXCHANGE =
          T.let(
            :provxchange,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        RO_SENT =
          T.let(
            :ro_sent,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        RTP =
          T.let(
            :rtp,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SE_BANKGIROT =
          T.let(
            :se_bankgirot,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SEN =
          T.let(
            :sen,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SG_GIRO =
          T.let(
            :sg_giro,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SIC =
          T.let(
            :sic,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SIGNET =
          T.let(
            :signet,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SKNBI =
          T.let(
            :sknbi,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )
        ZENGIN =
          T.let(
            :zengin,
            ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::PaymentOrderListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
