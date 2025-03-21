# typed: strong

module ModernTreasury
  module Models
    class PaperItem < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The account number on the paper item.
      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number=(_)
      end

      # The last 4 digits of the account_number.
      sig { returns(T.nilable(String)) }
      def account_number_safe
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number_safe=(_)
      end

      # The amount of the paper item.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The check number on the paper item.
      sig { returns(T.nilable(String)) }
      def check_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def check_number=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The currency of the paper item.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::Currency::TaggedSymbol)
          .returns(ModernTreasury::Models::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # The date the paper item was deposited into your organization's bank account.
      sig { returns(Date) }
      def deposit_date
      end

      sig { params(_: Date).returns(Date) }
      def deposit_date=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # The identifier for the lockbox assigned by the bank.
      sig { returns(String) }
      def lockbox_number
      end

      sig { params(_: String).returns(String) }
      def lockbox_number=(_)
      end

      # The memo field on the paper item.
      sig { returns(T.nilable(String)) }
      def memo_field
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo_field=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The name of the remitter on the paper item.
      sig { returns(T.nilable(String)) }
      def remitter_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remitter_name=(_)
      end

      # The routing number on the paper item.
      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def routing_number=(_)
      end

      # The current status of the paper item. One of `pending`, `completed`, or
      #   `returned`.
      sig { returns(ModernTreasury::Models::PaperItem::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The ID of the reconciled Transaction or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # The ID of the reconciled Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      def transaction_line_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_line_item_id=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          account_number: T.nilable(String),
          account_number_safe: T.nilable(String),
          amount: Integer,
          check_number: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Models::Currency::OrSymbol,
          deposit_date: Date,
          live_mode: T::Boolean,
          lockbox_number: String,
          memo_field: T.nilable(String),
          object: String,
          remitter_name: T.nilable(String),
          routing_number: T.nilable(String),
          status: ModernTreasury::Models::PaperItem::Status::OrSymbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_number:,
        account_number_safe:,
        amount:,
        check_number:,
        created_at:,
        currency:,
        deposit_date:,
        live_mode:,
        lockbox_number:,
        memo_field:,
        object:,
        remitter_name:,
        routing_number:,
        status:,
        transaction_id:,
        transaction_line_item_id:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_number: T.nilable(String),
              account_number_safe: T.nilable(String),
              amount: Integer,
              check_number: T.nilable(String),
              created_at: Time,
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
              deposit_date: Date,
              live_mode: T::Boolean,
              lockbox_number: String,
              memo_field: T.nilable(String),
              object: String,
              remitter_name: T.nilable(String),
              routing_number: T.nilable(String),
              status: ModernTreasury::Models::PaperItem::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              transaction_line_item_id: T.nilable(String),
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # The current status of the paper item. One of `pending`, `completed`, or
      #   `returned`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaperItem::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaperItem::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::PaperItem::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
