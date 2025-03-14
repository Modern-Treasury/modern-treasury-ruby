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

      # Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD
      #   would be represented as 1000.
      sig { returns(Integer) }
      def amount_paid
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_paid=(_)
      end

      # Amount remaining due on the invoice in specified currency's smallest unit, e.g.,
      #   $10 USD would be represented as 1000.
      sig { returns(Integer) }
      def amount_remaining
      end

      sig { params(_: Integer).returns(Integer) }
      def amount_remaining=(_)
      end

      # The invoicer's contact details displayed at the top of the invoice.
      sig { returns(T::Array[ModernTreasury::Models::Invoice::ContactDetail]) }
      def contact_details
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::Invoice::ContactDetail])
          .returns(T::Array[ModernTreasury::Models::Invoice::ContactDetail])
      end
      def contact_details=(_)
      end

      # The counterparty's billing address.
      sig { returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress)) }
      def counterparty_billing_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress))
          .returns(T.nilable(ModernTreasury::Models::Invoice::CounterpartyBillingAddress))
      end
      def counterparty_billing_address=(_)
      end

      # The ID of the counterparty receiving the invoice.
      sig { returns(String) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The counterparty's shipping address where physical goods should be delivered.
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

      # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # A free-form description of the invoice.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # A future date by when the invoice needs to be paid.
      sig { returns(Time) }
      def due_date
      end

      sig { params(_: Time).returns(Time) }
      def due_date=(_)
      end

      # The expected payments created for an unpaid invoice.
      sig { returns(T::Array[ModernTreasury::Models::ExpectedPayment]) }
      def expected_payments
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::ExpectedPayment])
          .returns(T::Array[ModernTreasury::Models::ExpectedPayment])
      end
      def expected_payments=(_)
      end

      # When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      sig { returns(T.nilable(String)) }
      def fallback_payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fallback_payment_method=(_)
      end

      # The URL of the hosted web UI where the invoice can be viewed.
      sig { returns(String) }
      def hosted_url
      end

      sig { params(_: String).returns(String) }
      def hosted_url=(_)
      end

      # The invoice issuer's business address.
      sig { returns(T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress)) }
      def invoicer_address
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress))
          .returns(T.nilable(ModernTreasury::Models::Invoice::InvoicerAddress))
      end
      def invoicer_address=(_)
      end

      # The ledger account settlement object linked to the invoice.
      sig { returns(T.nilable(String)) }
      def ledger_account_settlement_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_account_settlement_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
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
      sig { returns(T::Boolean) }
      def notifications_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def notifications_enabled=(_)
      end

      # A unique record number assigned to each invoice that is issued.
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

      # The ID of the internal account the invoice should be paid to.
      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      # Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(T.nilable(Date)) }
      def payment_effective_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def payment_effective_date=(_)
      end

      # When opening an invoice, whether to show the embedded payment UI , automatically
      #   debit the recipient, or rely on manual payment from the recipient.
      sig { returns(T.nilable(Symbol)) }
      def payment_method
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_method=(_)
      end

      # The payment orders created for paying the invoice through the invoice payment
      #   UI.
      sig { returns(T::Array[ModernTreasury::Models::PaymentOrder]) }
      def payment_orders
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrder])
          .returns(T::Array[ModernTreasury::Models::PaymentOrder])
      end
      def payment_orders=(_)
      end

      # One of `ach` or `eft`.
      sig { returns(T.nilable(Symbol)) }
      def payment_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_type=(_)
      end

      # The URL where the invoice PDF can be downloaded.
      sig { returns(T.nilable(String)) }
      def pdf_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pdf_url=(_)
      end

      # The receiving account ID. Can be an `internal_account`.
      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
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

      # The status of the invoice.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Total amount due in specified currency's smallest unit, e.g., $10 USD would be
      #   represented as 1000.
      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      # IDs of transaction line items associated with an invoice.
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

      # The ID of the virtual account the invoice should be paid to.
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
          .returns(T.attached_class)
      end
      def self.new(
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

      # When opening an invoice, whether to show the embedded payment UI , automatically
      #   debit the recipient, or rely on manual payment from the recipient.
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

      # One of `ach` or `eft`.
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

      # The status of the invoice.
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
