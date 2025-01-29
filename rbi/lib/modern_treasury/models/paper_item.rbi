# typed: strong

module ModernTreasury
  module Models
    class PaperItem < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          account_number: T.nilable(String),
          account_number_safe: T.nilable(String),
          amount: Integer,
          check_number: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          deposit_date: Date,
          live_mode: T::Boolean,
          lockbox_number: String,
          memo_field: T.nilable(String),
          object: String,
          remitter_name: T.nilable(String),
          routing_number: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number_safe

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :check_number

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(Date) }
      attr_accessor :deposit_date

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :lockbox_number

      sig { returns(T.nilable(String)) }
      attr_accessor :memo_field

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(String)) }
      attr_accessor :remitter_name

      sig { returns(T.nilable(String)) }
      attr_accessor :routing_number

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

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
          currency: Symbol,
          deposit_date: Date,
          live_mode: T::Boolean,
          lockbox_number: String,
          memo_field: T.nilable(String),
          object: String,
          remitter_name: T.nilable(String),
          routing_number: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          transaction_line_item_id: T.nilable(String),
          updated_at: Time
        ).void
      end
      def initialize(
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
      ); end

      sig { returns(ModernTreasury::Models::PaperItem::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        COMPLETED = :completed
        PENDING = :pending
        RETURNED = :returned

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
