# typed: strong

module ModernTreasury
  module Models
    class InvoiceCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the counterparty receiving the invoice.
      sig { returns(String) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # A future date by when the invoice needs to be paid.
      sig { returns(Time) }
      def due_date
      end

      sig { params(_: Time).returns(Time) }
      def due_date=(_)
      end

      # The ID of the internal account the invoice should be paid to.
      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      # When true, the invoice will progress to unpaid automatically and cannot be
      #   edited after entering that state. If the invoice fails to progress to unpaid,
      #   the errors will be returned and the invoice will not be created.
      sig { returns(T.nilable(T::Boolean)) }
      def auto_advance
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_advance=(_)
      end

      # The invoicer's contact details displayed at the top of the invoice.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail])) }
      def contact_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail])
          .returns(T::Array[ModernTreasury::Models::InvoiceCreateParams::ContactDetail])
      end
      def contact_details=(_)
      end

      # The counterparty's billing address.
      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress)) }
      def counterparty_billing_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress))
      end
      def counterparty_billing_address=(_)
      end

      # The counterparty's shipping address where physical goods should be delivered.
      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress)) }
      def counterparty_shipping_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress))
      end
      def counterparty_shipping_address=(_)
      end

      # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # A free-form description of the invoice.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      sig { returns(T.nilable(String)) }
      def fallback_payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fallback_payment_method=(_)
      end

      # Whether to ingest the ledger_entries to populate the invoice line items. If this
      #   is false, then a line item must be provided. If this is true, line_items must be
      #   empty. Ignored if ledger_account_settlement_id is empty.
      sig { returns(T.nilable(T::Boolean)) }
      def ingest_ledger_entries
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def ingest_ledger_entries=(_)
      end

      # An array of invoice line items. The API supports a maximum of 50 invoice line
      #   items per invoice. If a greater number of invoice line items is required, please
      #   contact support.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem])) }
      def invoice_line_items
      end

      sig do
        params(_: T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem]))
          .returns(T.nilable(T::Array[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem]))
      end
      def invoice_line_items=(_)
      end

      # The invoice issuer's business address.
      sig { returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress)) }
      def invoicer_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress))
          .returns(T.nilable(ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress))
      end
      def invoicer_address=(_)
      end

      # The ID of the virtual account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_settlement_id=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      # Emails in addition to the counterparty email to send invoice status
      #   notifications to. At least one email is required if notifications are enabled
      #   and the counterparty doesn't have an email.
      sig { returns(T.nilable(T::Array[String])) }
      def notification_email_addresses
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def notification_email_addresses=(_)
      end

      # If true, the invoice will send email notifications to the invoice recipients
      #   about invoice status changes.
      sig { returns(T.nilable(T::Boolean)) }
      def notifications_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def notifications_enabled=(_)
      end

      # Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(T.nilable(Date)) }
      def payment_effective_date
      end

      sig { params(_: Date).returns(Date) }
      def payment_effective_date=(_)
      end

      # The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      sig { returns(T.nilable(Symbol)) }
      def payment_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_method=(_)
      end

      # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      sig { returns(T.nilable(Symbol)) }
      def payment_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_type=(_)
      end

      # The receiving account ID. Can be an `external_account`.
      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
      end

      # The email of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      sig { returns(T.nilable(String)) }
      def recipient_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_email=(_)
      end

      # The name of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      # Number of days after due date when overdue reminder emails will be sent out to
      #   invoice recipients.
      sig { returns(T.nilable(T::Array[Integer])) }
      def remind_after_overdue_days
      end

      sig { params(_: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer])) }
      def remind_after_overdue_days=(_)
      end

      # The ID of the virtual account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def virtual_account_id=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
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
        # Country code conforms to [ISO 3166-1 alpha-2]
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

        # Locality or City.
        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Region or State.
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

        # The counterparty's billing address.
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
        # Country code conforms to [ISO 3166-1 alpha-2]
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

        # Locality or City.
        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Region or State.
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

        # The counterparty's shipping address where physical goods should be delivered.
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
        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        def unit_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def unit_amount=(_)
        end

        # An optional free-form description of the line item.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        sig { returns(T.nilable(String)) }
        def direction
        end

        sig { params(_: String).returns(String) }
        def direction=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
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
        # Country code conforms to [ISO 3166-1 alpha-2]
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

        # Locality or City.
        sig { returns(String) }
        def locality
        end

        sig { params(_: String).returns(String) }
        def locality=(_)
        end

        # The postal code of the address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # Region or State.
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

        # The invoice issuer's business address.
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

      # The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
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
