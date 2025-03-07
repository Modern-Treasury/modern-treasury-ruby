# typed: strong

module ModernTreasury
  module Models
    class Invoice < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Integer) }
      def amount_paid
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_paid=(_)
      end

      sig { returns(Integer) }
      def amount_remaining
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_remaining=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::Invoice::ContactDetail]) }
      def contact_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::Invoice::ContactDetail])
          .returns(T::Array[ModernTreasury::Models::Invoice::ContactDetail])
      end
      def contact_details=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress)) }
      def counterparty_billing_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress))
          .returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress))
      end
      def counterparty_billing_address=(_)
      end

      sig { returns(String) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress)) }
      def counterparty_shipping_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress))
          .returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyShippingAddress))
      end
      def counterparty_shipping_address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(Time) }
      def due_date
      end

      sig { params(_: Time).returns(Time) }
      def due_date=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::ExpectedPayment]) }
      def expected_payments
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExpectedPayment])
          .returns(T::Array[ModernTreasury::Models::ExpectedPayment])
      end
      def expected_payments=(_)
      end

      sig { returns(T.nilable(String)) }
      def fallback_payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fallback_payment_method=(_)
      end

      sig { returns(String) }
      def hosted_url
      end

      sig { params(_: String).returns(String) }
      def hosted_url=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress)) }
      def invoicer_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress))
          .returns(T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress))
      end
      def invoicer_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_settlement_id=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def notification_email_addresses
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def notification_email_addresses=(_)
      end

      sig { returns(T::Boolean) }
      def notifications_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def notifications_enabled=(_)
      end

      sig { returns(String) }
      def number
      end

      sig { params(_: String).returns(String) }
      def number=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(Date)) }
      def payment_effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def payment_effective_date=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_method
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_method=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::PaymentOrder]) }
      def payment_orders
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrder])
          .returns(T::Array[ModernTreasury::Models::PaymentOrder])
      end
      def payment_orders=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def pdf_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pdf_url=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiving_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_email=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      sig { returns(T.nilable(T::Array[Integer])) }
      def remind_after_overdue_days
      end

      sig { params(_: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer])) }
      def remind_after_overdue_days=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      sig { returns(T::Array[String]) }
      def transaction_line_item_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def transaction_line_item_ids=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

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
          notification_email_addresses: T.nilable(T::Array[String]),
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
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: Symbol,
          total_amount: Integer,
          transaction_line_item_ids: T::Array[String],
          updated_at: Time,
          virtual_account_id: T.nilable(String)
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
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
              notification_email_addresses: T.nilable(T::Array[String]),
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
              remind_after_overdue_days: T.nilable(T::Array[Integer]),
              status: Symbol,
              total_amount: Integer,
              transaction_line_item_ids: T::Array[String],
              updated_at: Time,
              virtual_account_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class ContactDetail < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def contact_identifier
        end

        sig { params(_: String).returns(String) }
        def contact_identifier=(_)
        end

        sig { returns(Symbol) }
        def contact_identifier_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def contact_identifier_type=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def discarded_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def discarded_at=(_)
        end

        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
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
            contact_identifier: String,
            contact_identifier_type: Symbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
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
            )
        end
        def to_hash
        end

        class ContactIdentifierType < ModernTreasury::Enum
          abstract!

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class CounterpartyBillingAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(String) }
        def region
        end

        sig { params(_: String).returns(String) }
        def region=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          )
            .void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        end

        sig do
          override
            .returns(
              {
                country: String,
                line1: String,
                locality: String,
                postal_code: String,
                region: String,
                line2: String
              }
            )
        end
        def to_hash
        end
      end

      class CounterpartyShippingAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(String) }
        def region
        end

        sig { params(_: String).returns(String) }
        def region=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          )
            .void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        end

        sig do
          override
            .returns(
              {
                country: String,
                line1: String,
                locality: String,
                postal_code: String,
                region: String,
                line2: String
              }
            )
        end
        def to_hash
        end
      end

      class InvoicerAddress < ModernTreasury::BaseModel
        sig { returns(String) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(String) }
        def region
        end

        sig { params(_: String).returns(String) }
        def region=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          )
            .void
        end
        def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        end

        sig do
          override
            .returns(
              {
                country: String,
                line1: String,
                locality: String,
                postal_code: String,
                region: String,
                line2: String
              }
            )
        end
        def to_hash
        end
      end

      class PaymentMethod < ModernTreasury::Enum
        abstract!

        UI = T.let(:ui, T.nilable(Symbol))
        MANUAL = T.let(:manual, T.nilable(Symbol))
        AUTOMATIC = T.let(:automatic, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class PaymentType < ModernTreasury::Enum
        abstract!

        EFT = T.let(:eft, T.nilable(Symbol))
        ACH = T.let(:ach, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
