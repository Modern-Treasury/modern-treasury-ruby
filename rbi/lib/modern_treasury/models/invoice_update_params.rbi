# typed: strong

module ModernTreasury
  module Models
    class InvoiceUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail])) }
      def contact_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail])
          .returns(T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail])
      end
      def contact_details=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress)) }
      def counterparty_billing_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress))
      end
      def counterparty_billing_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress)) }
      def counterparty_shipping_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress))
      end
      def counterparty_shipping_address=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def due_date
      end

      sig { params(_: Time).returns(Time) }
      def due_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def fallback_payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fallback_payment_method=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def ingest_ledger_entries
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def ingest_ledger_entries=(_)
      end

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem])) }
      def invoice_line_items
      end

      sig do
        params(_: T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem]))
          .returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem]))
      end
      def invoice_line_items=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress)) }
      def invoicer_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress))
      end
      def invoicer_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_settlement_id=(_)
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

      sig { returns(T.nilable(T::Boolean)) }
      def notifications_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def notifications_enabled=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(Date)) }
      def payment_effective_date
      end

      sig { params(_: Date).returns(Date) }
      def payment_effective_date=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_method=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
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

      sig { returns(T.nilable(String)) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

      sig do
        params(
          contact_details: T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress),
          counterparty_id: String,
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress),
          currency: Symbol,
          description: String,
          due_date: Time,
          fallback_payment_method: T.nilable(String),
          ingest_ledger_entries: T.nilable(T::Boolean),
          invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem]),
          invoicer_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          originating_account_id: String,
          payment_effective_date: Date,
          payment_method: Symbol,
          payment_type: Symbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: String,
          virtual_account_id: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        contact_details: nil,
        counterparty_billing_address: nil,
        counterparty_id: nil,
        counterparty_shipping_address: nil,
        currency: nil,
        description: nil,
        due_date: nil,
        fallback_payment_method: nil,
        ingest_ledger_entries: nil,
        invoice_line_items: nil,
        invoicer_address: nil,
        ledger_account_settlement_id: nil,
        metadata: nil,
        notification_email_addresses: nil,
        notifications_enabled: nil,
        originating_account_id: nil,
        payment_effective_date: nil,
        payment_method: nil,
        payment_type: nil,
        receiving_account_id: nil,
        recipient_email: nil,
        recipient_name: nil,
        remind_after_overdue_days: nil,
        status: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              contact_details: T::Array[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail],
              counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress),
              counterparty_id: String,
              counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress),
              currency: Symbol,
              description: String,
              due_date: Time,
              fallback_payment_method: T.nilable(String),
              ingest_ledger_entries: T.nilable(T::Boolean),
              invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem]),
              invoicer_address: T.nilable(ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress),
              ledger_account_settlement_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              notification_email_addresses: T.nilable(T::Array[String]),
              notifications_enabled: T::Boolean,
              originating_account_id: String,
              payment_effective_date: Date,
              payment_method: Symbol,
              payment_type: Symbol,
              receiving_account_id: String,
              recipient_email: T.nilable(String),
              recipient_name: T.nilable(String),
              remind_after_overdue_days: T.nilable(T::Array[Integer]),
              status: String,
              virtual_account_id: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
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
            .returns(T.attached_class)
        end
        def self.new(
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
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, locality:, postal_code:, region:, line2: nil)
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
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, locality:, postal_code:, region:, line2: nil)
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

      class InvoiceLineItem < ModernTreasury::BaseModel
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Integer) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { returns(T.nilable(String)) }
        def unit_amount_decimal
        end

        sig { params(_: String).returns(String) }
        def unit_amount_decimal=(_)
        end

        sig do
          params(
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          name:,
          unit_amount:,
          description: nil,
          direction: nil,
          metadata: nil,
          quantity: nil,
          unit_amount_decimal: nil
        )
        end

        sig do
          override
            .returns(
              {
                name: String,
                unit_amount: Integer,
                description: String,
                direction: String,
                metadata: T::Hash[Symbol, String],
                quantity: Integer,
                unit_amount_decimal: String
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
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, locality:, postal_code:, region:, line2: nil)
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

        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
