# typed: strong

module ModernTreasury
  module Models
    class Invoice < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          amount_paid: Integer,
          amount_remaining: Integer,
          contact_details: T::Array[ModernTreasury::Models::Invoice::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress),
          counterparty_id: String,
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress),
          created_at: Time,
          currency: Symbol,
          description: String,
          due_date: Time,
          expected_payments: T::Array[ModernTreasury::Models::ExpectedPayment],
          fallback_payment_method: T.nilable(String),
          hosted_url: String,
          invoicer_address: T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T::Array[String],
          notifications_enabled: T::Boolean,
          number: String,
          object: String,
          originating_account_id: String,
          payment_effective_date: T.nilable(Date),
          payment_method: T.nilable(Symbol),
          payment_orders: T::Array[ModernTreasury::Models::PaymentOrder],
          payment_type: T.nilable(Symbol),
          pdf_url: T.nilable(String),
          receiving_account_id: T.nilable(String),
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T::Array[Integer],
          status: Symbol,
          total_amount: Integer,
          transaction_line_item_ids: T::Array[String],
          updated_at: Time,
          virtual_account_id: T.nilable(String)
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :amount_paid

      sig { returns(Integer) }
      attr_accessor :amount_remaining

      sig { returns(T::Array[ModernTreasury::Models::Invoice::ContactDetail]) }
      attr_accessor :contact_details

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress)) }
      attr_accessor :counterparty_billing_address

      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress)) }
      attr_accessor :counterparty_shipping_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :description

      sig { returns(Time) }
      attr_accessor :due_date

      sig { returns(T::Array[ModernTreasury::Models::ExpectedPayment]) }
      attr_accessor :expected_payments

      sig { returns(T.nilable(String)) }
      attr_accessor :fallback_payment_method

      sig { returns(String) }
      attr_accessor :hosted_url

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress)) }
      attr_accessor :invoicer_address

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_settlement_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T::Array[String]) }
      attr_accessor :notification_email_addresses

      sig { returns(T::Boolean) }
      attr_accessor :notifications_enabled

      sig { returns(String) }
      attr_accessor :number

      sig { returns(String) }
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :originating_account_id

      sig { returns(T.nilable(Date)) }
      attr_accessor :payment_effective_date

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :payment_method

      sig { returns(T::Array[ModernTreasury::Models::PaymentOrder]) }
      attr_accessor :payment_orders

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :payment_type

      sig { returns(T.nilable(String)) }
      attr_accessor :pdf_url

      sig { returns(T.nilable(String)) }
      attr_accessor :receiving_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_email

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      sig { returns(T::Array[Integer]) }
      attr_accessor :remind_after_overdue_days

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Integer) }
      attr_accessor :total_amount

      sig { returns(T::Array[String]) }
      attr_accessor :transaction_line_item_ids

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          id: String,
          amount_paid: Integer,
          amount_remaining: Integer,
          contact_details: T::Array[ModernTreasury::Models::Invoice::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress),
          counterparty_id: String,
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress),
          created_at: Time,
          currency: Symbol,
          description: String,
          due_date: Time,
          expected_payments: T::Array[ModernTreasury::Models::ExpectedPayment],
          fallback_payment_method: T.nilable(String),
          hosted_url: String,
          invoicer_address: T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T::Array[String],
          notifications_enabled: T::Boolean,
          number: String,
          object: String,
          originating_account_id: String,
          payment_effective_date: T.nilable(Date),
          payment_method: T.nilable(Symbol),
          payment_orders: T::Array[ModernTreasury::Models::PaymentOrder],
          payment_type: T.nilable(Symbol),
          pdf_url: T.nilable(String),
          receiving_account_id: T.nilable(String),
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T::Array[Integer],
          status: Symbol,
          total_amount: Integer,
          transaction_line_item_ids: T::Array[String],
          updated_at: Time,
          virtual_account_id: T.nilable(String)
        ).void
      end
      def initialize(
        id:,
        amount_paid:,
        amount_remaining:,
        contact_details:,
        counterparty_billing_address:,
        counterparty_id:,
        counterparty_shipping_address:,
        created_at:,
        currency:,
        description:,
        due_date:,
        expected_payments:,
        fallback_payment_method:,
        hosted_url:,
        invoicer_address:,
        ledger_account_settlement_id:,
        live_mode:,
        metadata:,
        notification_email_addresses:,
        notifications_enabled:,
        number:,
        object:,
        originating_account_id:,
        payment_effective_date:,
        payment_method:,
        payment_orders:,
        payment_type:,
        pdf_url:,
        receiving_account_id:,
        recipient_email:,
        recipient_name:,
        remind_after_overdue_days:,
        status:,
        total_amount:,
        transaction_line_item_ids:,
        updated_at:,
        virtual_account_id:
      ); end

      sig { returns(ModernTreasury::Models::Invoice::Shape) }
      def to_h; end

      class ContactDetail < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            contact_identifier: String,
            contact_identifier_type: Symbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :contact_identifier

        sig { returns(Symbol) }
        attr_accessor :contact_identifier_type

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            contact_identifier: String,
            contact_identifier_type: Symbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).void
        end
        def initialize(
          id:,
          contact_identifier:,
          contact_identifier_type:,
          created_at:,
          discarded_at:,
          live_mode:,
          object:,
          updated_at:
        ); end

        sig { returns(ModernTreasury::Models::Invoice::ContactDetail::Shape) }
        def to_h; end

        class ContactIdentifierType < ModernTreasury::Enum
          abstract!

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class CounterpartyBillingAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          }
        end

        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil); end

        sig { returns(ModernTreasury::Models::Invoice::CounterpartyBillingAddress::Shape) }
        def to_h; end
      end

      class CounterpartyShippingAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          }
        end

        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil); end

        sig { returns(ModernTreasury::Models::Invoice::CounterpartyShippingAddress::Shape) }
        def to_h; end
      end

      class InvoicerAddress < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          }
        end

        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :locality

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil); end

        sig { returns(ModernTreasury::Models::Invoice::InvoicerAddress::Shape) }
        def to_h; end
      end

      class PaymentMethod < ModernTreasury::Enum
        abstract!

        UI = T.let(:ui, T.nilable(Symbol))
        MANUAL = T.let(:manual, T.nilable(Symbol))
        AUTOMATIC = T.let(:automatic, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class PaymentType < ModernTreasury::Enum
        abstract!

        EFT = T.let(:eft, T.nilable(Symbol))
        ACH = T.let(:ach, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Status < ModernTreasury::Enum
        abstract!

        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
