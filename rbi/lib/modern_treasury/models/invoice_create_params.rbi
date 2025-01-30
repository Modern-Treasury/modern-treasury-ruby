# typed: strong

module ModernTreasury
  module Models
    class InvoiceCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            counterparty_id: String,
            due_date: Time,
            originating_account_id: String,
            auto_advance: T.nilable(T::Boolean),
            contact_details: T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail],
            counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress),
            counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress),
            currency: Symbol,
            description: String,
            fallback_payment_method: T.nilable(String),
            ingest_ledger_entries: T.nilable(T::Boolean),
            invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem]),
            invoicer_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress),
            ledger_account_settlement_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            notification_email_addresses: T.nilable(T::Array[String]),
            notifications_enabled: T::Boolean,
            payment_effective_date: Date,
            payment_method: Symbol,
            payment_type: Symbol,
            receiving_account_id: String,
            recipient_email: T.nilable(String),
            recipient_name: T.nilable(String),
            remind_after_overdue_days: T.nilable(T::Array[Integer]),
            virtual_account_id: T.nilable(String)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(Time) }
      attr_accessor :due_date

      sig { returns(String) }
      attr_accessor :originating_account_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_advance

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail])) }
      attr_reader :contact_details

      sig do
        params(contact_details: T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail]).void
      end
      attr_writer :contact_details

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress)) }
      attr_accessor :counterparty_billing_address

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress)) }
      attr_accessor :counterparty_shipping_address

      sig { returns(T.nilable(Symbol)) }
      attr_reader :currency

      sig { params(currency: Symbol).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_accessor :fallback_payment_method

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :ingest_ledger_entries

      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem])) }
      attr_accessor :invoice_line_items

      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress)) }
      attr_accessor :invoicer_address

      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_settlement_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :notification_email_addresses

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :notifications_enabled

      sig { params(notifications_enabled: T::Boolean).void }
      attr_writer :notifications_enabled

      sig { returns(T.nilable(Date)) }
      attr_reader :payment_effective_date

      sig { params(payment_effective_date: Date).void }
      attr_writer :payment_effective_date

      sig { returns(T.nilable(Symbol)) }
      attr_reader :payment_method

      sig { params(payment_method: Symbol).void }
      attr_writer :payment_method

      sig { returns(T.nilable(Symbol)) }
      attr_reader :payment_type

      sig { params(payment_type: Symbol).void }
      attr_writer :payment_type

      sig { returns(T.nilable(String)) }
      attr_reader :receiving_account_id

      sig { params(receiving_account_id: String).void }
      attr_writer :receiving_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_email

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      sig { returns(T.nilable(T::Array[Integer])) }
      attr_accessor :remind_after_overdue_days

      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          counterparty_id: String,
          due_date: Time,
          originating_account_id: String,
          auto_advance: T.nilable(T::Boolean),
          contact_details: T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail],
          counterparty_billing_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress),
          counterparty_shipping_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress),
          currency: Symbol,
          description: String,
          fallback_payment_method: T.nilable(String),
          ingest_ledger_entries: T.nilable(T::Boolean),
          invoice_line_items: T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem]),
          invoicer_address: T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress),
          ledger_account_settlement_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          payment_effective_date: Date,
          payment_method: Symbol,
          payment_type: Symbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        counterparty_id:,
        due_date:,
        originating_account_id:,
        auto_advance: nil,
        contact_details: nil,
        counterparty_billing_address: nil,
        counterparty_shipping_address: nil,
        currency: nil,
        description: nil,
        fallback_payment_method: nil,
        ingest_ledger_entries: nil,
        invoice_line_items: nil,
        invoicer_address: nil,
        ledger_account_settlement_id: nil,
        metadata: nil,
        notification_email_addresses: nil,
        notifications_enabled: nil,
        payment_effective_date: nil,
        payment_method: nil,
        payment_type: nil,
        receiving_account_id: nil,
        recipient_email: nil,
        recipient_name: nil,
        remind_after_overdue_days: nil,
        virtual_account_id: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::InvoiceCreateParams::Shape) }
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

        sig { returns(ModernTreasury::Models::InvoiceCreateParams::ContactDetail::Shape) }
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

        sig { returns(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress::Shape) }
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

        sig { returns(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress::Shape) }
        def to_h; end
      end

      class InvoiceLineItem < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String
          }
        end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :unit_amount

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal

        sig { params(unit_amount_decimal: String).void }
        attr_writer :unit_amount_decimal

        sig do
          params(
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String
          ).void
        end
        def initialize(
          name:,
          unit_amount:,
          description: nil,
          direction: nil,
          metadata: nil,
          quantity: nil,
          unit_amount_decimal: nil
        ); end

        sig { returns(ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem::Shape) }
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

        sig { returns(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress::Shape) }
        def to_h; end
      end

      class PaymentMethod < ModernTreasury::Enum
        abstract!

        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
