# typed: strong

module ModernTreasury
  module Models
    class PaperItem < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The account number on the paper item.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      # The last 4 digits of the account_number.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_number_safe

      # The amount of the paper item.
      sig { returns(Integer) }
      attr_accessor :amount

      # The check number on the paper item.
      sig { returns(T.nilable(String)) }
      attr_accessor :check_number

      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the paper item.
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The date the paper item was deposited into your organization's bank account.
      sig { returns(Date) }
      attr_accessor :deposit_date

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # The identifier for the lockbox assigned by the bank.
      sig { returns(String) }
      attr_accessor :lockbox_number

      # The memo field on the paper item.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo_field

      sig { returns(String) }
      attr_accessor :object

      # The name of the remitter on the paper item.
      sig { returns(T.nilable(String)) }
      attr_accessor :remitter_name

      # The routing number on the paper item.
      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

      # The current status of the paper item. One of `pending`, `completed`, or
      #   `returned`.
      sig { returns(ModernTreasury::Models::PaperItem::Status::TaggedSymbol) }
      attr_accessor :status

      # The ID of the reconciled Transaction or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # The ID of the reconciled Transaction Line Item or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_line_item_id

      sig { returns(Time) }
      attr_accessor :updated_at

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
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::PaperItem::Status::TaggedSymbol) }

        COMPLETED = T.let(:completed, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::PaperItem::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::PaperItem::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
