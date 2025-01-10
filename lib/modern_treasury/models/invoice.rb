# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    #
    # ```ruby
    # invoice => {
    #   id: String,
    #   amount_paid: Integer,
    #   amount_remaining: Integer,
    #   contact_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail] === _1 },
    #   counterparty_billing_address: ModernTreasury::Models::Invoice::CounterpartyBillingAddress,
    #   **_
    # }
    # ```
    class Invoice < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_paid
      #   Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_paid, Integer

      # @!attribute amount_remaining
      #   Amount remaining due on the invoice in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #
      #   @return [Integer]
      required :amount_remaining, Integer

      # @!attribute contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #
      #   @return [Array<ModernTreasury::Models::Invoice::ContactDetail>]
      required :contact_details,
               -> {
                 ModernTreasury::ArrayOf[ModernTreasury::Models::Invoice::ContactDetail]
               }

      # @!attribute counterparty_billing_address
      #   The counterparty's billing address.
      #
      #   @return [ModernTreasury::Models::Invoice::CounterpartyBillingAddress, nil]
      required :counterparty_billing_address,
               -> {
                 ModernTreasury::Models::Invoice::CounterpartyBillingAddress
               }

      # @!attribute counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #
      #   @return [ModernTreasury::Models::Invoice::CounterpartyShippingAddress, nil]
      required :counterparty_shipping_address,
               -> { ModernTreasury::Models::Invoice::CounterpartyShippingAddress }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      required :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute description
      #   A free-form description of the invoice.
      #
      #   @return [String]
      required :description, String

      # @!attribute due_date
      #   A future date by when the invoice needs to be paid.
      #
      #   @return [Time]
      required :due_date, Time

      # @!attribute expected_payments
      #   The expected payments created for an unpaid invoice.
      #
      #   @return [Array<ModernTreasury::Models::ExpectedPayment>]
      required :expected_payments, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::ExpectedPayment] }

      # @!attribute fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an automatic payment fails. One of `manual` or `ui`.
      #
      #   @return [String, nil]
      required :fallback_payment_method, String

      # @!attribute hosted_url
      #   The URL of the hosted web UI where the invoice can be viewed.
      #
      #   @return [String]
      required :hosted_url, String

      # @!attribute invoicer_address
      #   The invoice issuer's business address.
      #
      #   @return [ModernTreasury::Models::Invoice::InvoicerAddress, nil]
      required :invoicer_address, -> { ModernTreasury::Models::Invoice::InvoicerAddress }

      # @!attribute ledger_account_settlement_id
      #   The ledger account settlement object linked to the invoice.
      #
      #   @return [String, nil]
      required :ledger_account_settlement_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}, nil]
      required :metadata, ModernTreasury::HashOf[String]

      # @!attribute notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status notifications to. At least one email is required if notifications are enabled and the counterparty doesn't have an email.
      #
      #   @return [Array<String>, nil]
      required :notification_email_addresses, ModernTreasury::ArrayOf[String]

      # @!attribute notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients about invoice status changes.
      #
      #   @return [Boolean]
      required :notifications_enabled, ModernTreasury::BooleanModel

      # @!attribute number
      #   A unique record number assigned to each invoice that is issued.
      #
      #   @return [String]
      required :number, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date, nil]
      required :payment_effective_date, Date

      # @!attribute payment_method
      #   When opening an invoice, whether to show the embedded payment UI , automatically debit the recipient, or rely on manual payment from the recipient.
      #
      #   @return [Symbol, ModernTreasury::Models::Invoice::PaymentMethod, nil]
      required :payment_method, enum: -> { ModernTreasury::Models::Invoice::PaymentMethod }

      # @!attribute payment_orders
      #   The payment orders created for paying the invoice through the invoice payment UI.
      #
      #   @return [Array<ModernTreasury::Models::PaymentOrder>]
      required :payment_orders, -> { ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder] }

      # @!attribute payment_type
      #   One of `ach` or `eft`.
      #
      #   @return [Symbol, ModernTreasury::Models::Invoice::PaymentType, nil]
      required :payment_type, enum: -> { ModernTreasury::Models::Invoice::PaymentType }

      # @!attribute pdf_url
      #   The URL where the invoice PDF can be downloaded.
      #
      #   @return [String, nil]
      required :pdf_url, String

      # @!attribute receiving_account_id
      #   The receiving account ID. Can be an `internal_account`.
      #
      #   @return [String, nil]
      required :receiving_account_id, String

      # @!attribute recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      required :recipient_email, String

      # @!attribute recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      required :recipient_name, String

      # @!attribute remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to invoice recipients.
      #
      #   @return [Array<Integer>, nil]
      required :remind_after_overdue_days, ModernTreasury::ArrayOf[Integer]

      # @!attribute status
      #   The status of the invoice.
      #
      #   @return [Symbol, ModernTreasury::Models::Invoice::Status]
      required :status, enum: -> { ModernTreasury::Models::Invoice::Status }

      # @!attribute total_amount
      #   Total amount due in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute transaction_line_item_ids
      #   IDs of transaction line items associated with an invoice.
      #
      #   @return [Array<String>]
      required :transaction_line_item_ids, ModernTreasury::ArrayOf[String]

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String, nil]
      required :virtual_account_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param amount_paid [Integer] Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD
      #   #   would be represented as 1000.
      #   #
      #   # @param amount_remaining [Integer] Amount remaining due on the invoice in specified currency's smallest unit, e.g.,
      #   #   $10 USD would be represented as 1000.
      #   #
      #   # @param contact_details [Array<ModernTreasury::Models::Invoice::ContactDetail>] The invoicer's contact details displayed at the top of the invoice.
      #   #
      #   # @param counterparty_billing_address [ModernTreasury::Models::Invoice::CounterpartyBillingAddress, nil] The counterparty's billing address.
      #   #
      #   # @param counterparty_id [String] The ID of the counterparty receiving the invoice.
      #   #
      #   # @param counterparty_shipping_address [ModernTreasury::Models::Invoice::CounterpartyShippingAddress, nil] The counterparty's shipping address where physical goods should be delivered.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param currency [String] Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #   #
      #   # @param description [String] A free-form description of the invoice.
      #   #
      #   # @param due_date [String] A future date by when the invoice needs to be paid.
      #   #
      #   # @param expected_payments [Array<ModernTreasury::Models::ExpectedPayment>] The expected payments created for an unpaid invoice.
      #   #
      #   # @param fallback_payment_method [String, nil] When payment_method is automatic, the fallback payment method to use when an
      #   #   automatic payment fails. One of `manual` or `ui`.
      #   #
      #   # @param hosted_url [String] The URL of the hosted web UI where the invoice can be viewed.
      #   #
      #   # @param invoicer_address [ModernTreasury::Models::Invoice::InvoicerAddress, nil] The invoice issuer's business address.
      #   #
      #   # @param ledger_account_settlement_id [String, nil] The ledger account settlement object linked to the invoice.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param notification_email_addresses [Array<String>, nil] Emails in addition to the counterparty email to send invoice status
      #   #   notifications to. At least one email is required if notifications are enabled
      #   #   and the counterparty doesn't have an email.
      #   #
      #   # @param notifications_enabled [Boolean] If true, the invoice will send email notifications to the invoice recipients
      #   #   about invoice status changes.
      #   #
      #   # @param number [String] A unique record number assigned to each invoice that is issued.
      #   #
      #   # @param object [String]
      #   #
      #   # @param originating_account_id [String] The ID of the internal account the invoice should be paid to.
      #   #
      #   # @param payment_effective_date [String, nil] Date transactions are to be posted to the participants' account. Defaults to the
      #   #   current business day or the next business day if the current day is a bank
      #   #   holiday or weekend. Format: yyyy-mm-dd.
      #   #
      #   # @param payment_method [String, nil] When opening an invoice, whether to show the embedded payment UI , automatically
      #   #   debit the recipient, or rely on manual payment from the recipient.
      #   #
      #   # @param payment_orders [Array<ModernTreasury::Models::PaymentOrder>] The payment orders created for paying the invoice through the invoice payment
      #   #   UI.
      #   #
      #   # @param payment_type [String, nil] One of `ach` or `eft`.
      #   #
      #   # @param pdf_url [String, nil] The URL where the invoice PDF can be downloaded.
      #   #
      #   # @param receiving_account_id [String, nil] The receiving account ID. Can be an `internal_account`.
      #   #
      #   # @param recipient_email [String, nil] The email of the recipient of the invoice. Leaving this value as null will
      #   #   fallback to using the counterparty's name.
      #   #
      #   # @param recipient_name [String, nil] The name of the recipient of the invoice. Leaving this value as null will
      #   #   fallback to using the counterparty's name.
      #   #
      #   # @param remind_after_overdue_days [Array<Integer>, nil] Number of days after due date when overdue reminder emails will be sent out to
      #   #   invoice recipients.
      #   #
      #   # @param status [String] The status of the invoice.
      #   #
      #   # @param total_amount [Integer] Total amount due in specified currency's smallest unit, e.g., $10 USD would be
      #   #   represented as 1000.
      #   #
      #   # @param transaction_line_item_ids [Array<String>] IDs of transaction line items associated with an invoice.
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param virtual_account_id [String, nil] The ID of the virtual account the invoice should be paid to.
      #   #
      #   def initialize(
      #     id:,
      #     amount_paid:,
      #     amount_remaining:,
      #     contact_details:,
      #     counterparty_billing_address:,
      #     counterparty_id:,
      #     counterparty_shipping_address:,
      #     created_at:,
      #     currency:,
      #     description:,
      #     due_date:,
      #     expected_payments:,
      #     fallback_payment_method:,
      #     hosted_url:,
      #     invoicer_address:,
      #     ledger_account_settlement_id:,
      #     live_mode:,
      #     metadata:,
      #     notification_email_addresses:,
      #     notifications_enabled:,
      #     number:,
      #     object:,
      #     originating_account_id:,
      #     payment_effective_date:,
      #     payment_method:,
      #     payment_orders:,
      #     payment_type:,
      #     pdf_url:,
      #     receiving_account_id:,
      #     recipient_email:,
      #     recipient_name:,
      #     remind_after_overdue_days:,
      #     status:,
      #     total_amount:,
      #     transaction_line_item_ids:,
      #     updated_at:,
      #     virtual_account_id:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # contact_detail => {
      #   id: String,
      #   contact_identifier: String,
      #   contact_identifier_type: enum: ModernTreasury::Models::Invoice::ContactDetail::ContactIdentifierType,
      #   created_at: Time,
      #   discarded_at: Time,
      #   **_
      # }
      # ```
      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute contact_identifier
        #
        #   @return [String]
        required :contact_identifier, String

        # @!attribute contact_identifier_type
        #
        #   @return [Symbol, ModernTreasury::Models::Invoice::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::Models::Invoice::ContactDetail::ContactIdentifierType }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param contact_identifier [String]
        #   #
        #   # @param contact_identifier_type [String]
        #   #
        #   # @param created_at [String]
        #   #
        #   # @param discarded_at [String, nil]
        #   #
        #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
        #   #   if it exists in the test environment.
        #   #
        #   # @param object [String]
        #   #
        #   # @param updated_at [String]
        #   #
        #   def initialize(
        #     id:,
        #     contact_identifier:,
        #     contact_identifier_type:,
        #     created_at:,
        #     discarded_at:,
        #     live_mode:,
        #     object:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case contact_identifier_type
        # in :email
        #   # ...
        # in :phone_number
        #   # ...
        # in :website
        #   # ...
        # end
        # ```
        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # counterparty_billing_address => {
      #   country: String,
      #   line1: String,
      #   locality: String,
      #   postal_code: String,
      #   region: String
      # }
      # ```
      class CounterpartyBillingAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        required :region, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # The counterparty's billing address.
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # counterparty_shipping_address => {
      #   country: String,
      #   line1: String,
      #   locality: String,
      #   postal_code: String,
      #   region: String
      # }
      # ```
      class CounterpartyShippingAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        required :region, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # The counterparty's shipping address where physical goods should be delivered.
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # invoicer_address => {
      #   country: String,
      #   line1: String,
      #   locality: String,
      #   postal_code: String,
      #   region: String
      # }
      # ```
      class InvoicerAddress < ModernTreasury::BaseModel
        # @!attribute country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute locality
        #   Locality or City.
        #
        #   @return [String]
        required :locality, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Region or State.
        #
        #   @return [String]
        required :region, String

        # @!attribute line2
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # The invoice issuer's business address.
        #   #
        #   # @param country [String] Country code conforms to [ISO 3166-1 alpha-2]
        #   #
        #   # @param line1 [String]
        #   #
        #   # @param locality [String] Locality or City.
        #   #
        #   # @param postal_code [String] The postal code of the address.
        #   #
        #   # @param region [String] Region or State.
        #   #
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # When opening an invoice, whether to show the embedded payment UI , automatically debit the recipient, or rely on manual payment from the recipient.
      #
      # @example
      #
      # ```ruby
      # case payment_method
      # in :ui
      #   # ...
      # in :manual
      #   # ...
      # in :automatic
      #   # ...
      # end
      # ```
      class PaymentMethod < ModernTreasury::Enum
        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic

        finalize!
      end

      # One of `ach` or `eft`.
      #
      # @example
      #
      # ```ruby
      # case payment_type
      # in :eft
      #   # ...
      # in :ach
      #   # ...
      # end
      # ```
      class PaymentType < ModernTreasury::Enum
        EFT = :eft
        ACH = :ach

        finalize!
      end

      # The status of the invoice.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :draft
      #   # ...
      # in :paid
      #   # ...
      # in :partially_paid
      #   # ...
      # in :payment_pending
      #   # ...
      # in :unpaid
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Status < ModernTreasury::Enum
        DRAFT = :draft
        PAID = :paid
        PARTIALLY_PAID = :partially_paid
        PAYMENT_PENDING = :payment_pending
        UNPAID = :unpaid
        VOIDED = :voided

        finalize!
      end
    end
  end
end
