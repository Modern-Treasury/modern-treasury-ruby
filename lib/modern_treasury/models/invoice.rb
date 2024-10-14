# frozen_string_literal: true

module ModernTreasury
  module Models
    class Invoice < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount_paid
      #   Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #   @return [Integer]
      required :amount_paid, Integer

      # @!attribute [rw] amount_remaining
      #   Amount remaining due on the invoice in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #   @return [Integer]
      required :amount_remaining, Integer

      # @!attribute [rw] contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #   @return [Array<ModernTreasury::Models::Invoice::ContactDetail>]
      required :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::Invoice::ContactDetail })

      # @!attribute [rw] counterparty_billing_address
      #   The counterparty's billing address.
      #   @return [ModernTreasury::Models::Invoice::CounterpartyBillingAddress]
      required :counterparty_billing_address,
               lambda {
                 ModernTreasury::Models::Invoice::CounterpartyBillingAddress
               }

      # @!attribute [rw] counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #   @return [ModernTreasury::Models::Invoice::CounterpartyShippingAddress]
      required :counterparty_shipping_address,
               -> { ModernTreasury::Models::Invoice::CounterpartyShippingAddress }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] description
      #   A free-form description of the invoice.
      #   @return [String]
      required :description, String

      # @!attribute [rw] due_date
      #   A future date by when the invoice needs to be paid.
      #   @return [Time]
      required :due_date, Time

      # @!attribute [rw] expected_payments
      #   The expected payments created for an unpaid invoice.
      #   @return [Array<ModernTreasury::Models::ExpectedPayment>]
      required :expected_payments, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::ExpectedPayment })

      # @!attribute [rw] fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an automatic payment fails. One of `manual` or `ui`.
      #   @return [String]
      required :fallback_payment_method, String

      # @!attribute [rw] hosted_url
      #   The URL of the hosted web UI where the invoice can be viewed.
      #   @return [String]
      required :hosted_url, String

      # @!attribute [rw] invoicer_address
      #   The invoice issuer's business address.
      #   @return [ModernTreasury::Models::Invoice::InvoicerAddress]
      required :invoicer_address, -> { ModernTreasury::Models::Invoice::InvoicerAddress }

      # @!attribute [rw] ledger_account_settlement_id
      #   The ledger account settlement object linked to the invoice.
      #   @return [String]
      required :ledger_account_settlement_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      required :metadata, Hash

      # @!attribute [rw] notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status notifications to. At least one email is required if notifications are enabled and the counterparty doesn't have an email.
      #   @return [Array<String>]
      required :notification_email_addresses, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients about invoice status changes.
      #   @return [Boolean]
      required :notifications_enabled, ModernTreasury::BooleanModel

      # @!attribute [rw] number
      #   A unique record number assigned to each invoice that is issued.
      #   @return [String]
      required :number, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #   @return [String]
      required :originating_account_id, String

      # @!attribute [rw] payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #   @return [Date]
      required :payment_effective_date, Date

      # @!attribute [rw] payment_method
      #   When opening an invoice, whether to show the embedded payment UI , automatically debit the recipient, or rely on manual payment from the recipient.
      #   @return [Symbol, ModernTreasury::Models::Invoice::PaymentMethod]
      required :payment_method, enum: -> { ModernTreasury::Models::Invoice::PaymentMethod }

      # @!attribute [rw] payment_orders
      #   The payment orders created for paying the invoice through the invoice payment UI.
      #   @return [Array<ModernTreasury::Models::PaymentOrder>]
      required :payment_orders, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::PaymentOrder })

      # @!attribute [rw] payment_type
      #   One of `ach` or `eft`.
      #   @return [Symbol, ModernTreasury::Models::Invoice::PaymentType]
      required :payment_type, enum: -> { ModernTreasury::Models::Invoice::PaymentType }

      # @!attribute [rw] pdf_url
      #   The URL where the invoice PDF can be downloaded.
      #   @return [String]
      required :pdf_url, String

      # @!attribute [rw] receiving_account_id
      #   The receiving account ID. Can be an `internal_account`.
      #   @return [String]
      required :receiving_account_id, String

      # @!attribute [rw] recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #   @return [String]
      required :recipient_email, String

      # @!attribute [rw] recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #   @return [String]
      required :recipient_name, String

      # @!attribute [rw] remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to invoice recipients.
      #   @return [Array<Integer>]
      required :remind_after_overdue_days, ModernTreasury::ArrayOf.new(Integer)

      # @!attribute [rw] status
      #   The status of the invoice.
      #   @return [Symbol, ModernTreasury::Models::Invoice::Status]
      required :status, enum: -> { ModernTreasury::Models::Invoice::Status }

      # @!attribute [rw] total_amount
      #   Total amount due in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute [rw] transaction_line_item_ids
      #   IDs of transaction line items associated with an invoice.
      #   @return [Array<String>]
      required :transaction_line_item_ids, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #   @return [String]
      required :virtual_account_id, String

      class ContactDetail < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] contact_identifier
        #   @return [String]
        required :contact_identifier, String

        # @!attribute [rw] contact_identifier_type
        #   @return [Symbol, ModernTreasury::Models::Invoice::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::Models::Invoice::ContactDetail::ContactIdentifierType }

        # @!attribute [rw] created_at
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] discarded_at
        #   @return [Time]
        required :discarded_at, Time

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [Time]
        required :updated_at, Time

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end

        # Create a new instance of ContactDetail from a Hash of raw data.
        #
        # @overload initialize(id: nil, contact_identifier: nil, contact_identifier_type: nil, created_at: nil, discarded_at: nil, live_mode: nil, object: nil, updated_at: nil)
        # @param id [String]
        # @param contact_identifier [String]
        # @param contact_identifier_type [String]
        # @param created_at [String]
        # @param discarded_at [String]
        # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        # @param object [String]
        # @param updated_at [String]
        def initialize(data = {})
          super
        end
      end

      class CounterpartyBillingAddress < BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # Create a new instance of CounterpartyBillingAddress from a Hash of raw data.
        #
        # @overload initialize(country: nil, line1: nil, locality: nil, postal_code: nil, region: nil, line2: nil)
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param line1 [String]
        # @param locality [String] Locality or City.
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        # @param line2 [String]
        def initialize(data = {})
          super
        end
      end

      class CounterpartyShippingAddress < BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # Create a new instance of CounterpartyShippingAddress from a Hash of raw data.
        #
        # @overload initialize(country: nil, line1: nil, locality: nil, postal_code: nil, region: nil, line2: nil)
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param line1 [String]
        # @param locality [String] Locality or City.
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        # @param line2 [String]
        def initialize(data = {})
          super
        end
      end

      class InvoicerAddress < BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # Create a new instance of InvoicerAddress from a Hash of raw data.
        #
        # @overload initialize(country: nil, line1: nil, locality: nil, postal_code: nil, region: nil, line2: nil)
        # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        # @param line1 [String]
        # @param locality [String] Locality or City.
        # @param postal_code [String] The postal code of the address.
        # @param region [String] Region or State.
        # @param line2 [String]
        def initialize(data = {})
          super
        end
      end

      # When opening an invoice, whether to show the embedded payment UI , automatically debit the recipient, or rely on manual payment from the recipient.
      class PaymentMethod < ModernTreasury::Enum
        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic
      end

      # One of `ach` or `eft`.
      class PaymentType < ModernTreasury::Enum
        EFT = :eft
        ACH = :ach
      end

      # The status of the invoice.
      class Status < ModernTreasury::Enum
        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided
      end

      # Create a new instance of Invoice from a Hash of raw data.
      #
      # @overload initialize(id: nil, amount_paid: nil, amount_remaining: nil, contact_details: nil, counterparty_billing_address: nil, counterparty_id: nil, counterparty_shipping_address: nil, created_at: nil, currency: nil, description: nil, due_date: nil, expected_payments: nil, fallback_payment_method: nil, hosted_url: nil, invoicer_address: nil, ledger_account_settlement_id: nil, live_mode: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, number: nil, object: nil, originating_account_id: nil, payment_effective_date: nil, payment_method: nil, payment_orders: nil, payment_type: nil, pdf_url: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, status: nil, total_amount: nil, transaction_line_item_ids: nil, updated_at: nil, virtual_account_id: nil)
      # @param id [String]
      # @param amount_paid [Integer] Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD
      #   would be represented as 1000.
      # @param amount_remaining [Integer] Amount remaining due on the invoice in specified currency's smallest unit, e.g.,
      #   $10 USD would be represented as 1000.
      # @param contact_details [Array<Object>] The invoicer's contact details displayed at the top of the invoice.
      # @param counterparty_billing_address [Object] The counterparty's billing address.
      # @param counterparty_id [String] The ID of the counterparty receiving the invoice.
      # @param counterparty_shipping_address [Object] The counterparty's shipping address where physical goods should be delivered.
      # @param created_at [String]
      # @param currency [String] Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      # @param description [String] A free-form description of the invoice.
      # @param due_date [String] A future date by when the invoice needs to be paid.
      # @param expected_payments [Array<Object>] The expected payments created for an unpaid invoice.
      # @param fallback_payment_method [String] When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      # @param hosted_url [String] The URL of the hosted web UI where the invoice can be viewed.
      # @param invoicer_address [Object] The invoice issuer's business address.
      # @param ledger_account_settlement_id [String] The ledger account settlement object linked to the invoice.
      # @param live_mode [Hash] This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      # @param metadata [Hash] Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @param notification_email_addresses [Array<String>] Emails in addition to the counterparty email to send invoice status
      #   notifications to. At least one email is required if notifications are enabled
      #   and the counterparty doesn't have an email.
      # @param notifications_enabled [Hash] If true, the invoice will send email notifications to the invoice recipients
      #   about invoice status changes.
      # @param number [String] A unique record number assigned to each invoice that is issued.
      # @param object [String]
      # @param originating_account_id [String] The ID of the internal account the invoice should be paid to.
      # @param payment_effective_date [String] Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      # @param payment_method [String] When opening an invoice, whether to show the embedded payment UI , automatically
      #   debit the recipient, or rely on manual payment from the recipient.
      # @param payment_orders [Array<Object>] The payment orders created for paying the invoice through the invoice payment
      #   UI.
      # @param payment_type [String] One of `ach` or `eft`.
      # @param pdf_url [String] The URL where the invoice PDF can be downloaded.
      # @param receiving_account_id [String] The receiving account ID. Can be an `internal_account`.
      # @param recipient_email [String] The email of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @param recipient_name [String] The name of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      # @param remind_after_overdue_days [Array<Integer>] Number of days after due date when overdue reminder emails will be sent out to
      #   invoice recipients.
      # @param status [String] The status of the invoice.
      # @param total_amount [Integer] Total amount due in specified currency's smallest unit, e.g., $10 USD would be
      #   represented as 1000.
      # @param transaction_line_item_ids [Array<String>] IDs of transaction line items associated with an invoice.
      # @param updated_at [String]
      # @param virtual_account_id [String] The ID of the virtual account the invoice should be paid to.
      def initialize(data = {})
        super
      end
    end
  end
end
