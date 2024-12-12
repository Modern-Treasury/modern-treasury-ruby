# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceUpdateParams < ModernTreasury::BaseModel
      # @!attribute [rw] contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>]
      optional :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::InvoiceUpdateParams::ContactDetail })

      # @!attribute [rw] counterparty_billing_address
      #   The counterparty's billing address.
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress]
      optional :counterparty_billing_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress }

      # @!attribute [rw] counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress]
      optional :counterparty_shipping_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress }

      # @!attribute [rw] currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute [rw] description
      #   A free-form description of the invoice.
      #   @return [String]
      optional :description, String

      # @!attribute [rw] due_date
      #   A future date by when the invoice needs to be paid.
      #   @return [Time]
      optional :due_date, Time

      # @!attribute [rw] fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an automatic payment fails. One of `manual` or `ui`.
      #   @return [String]
      optional :fallback_payment_method, String

      # @!attribute [rw] ingest_ledger_entries
      #   Whether to ingest the ledger_entries to populate the invoice line items. If this is false, then a line item must be provided. If this is true, line_items must be empty. Ignored if ledger_account_settlement_id is empty.
      #   @return [Boolean]
      optional :ingest_ledger_entries, ModernTreasury::BooleanModel

      # @!attribute [rw] invoice_line_items
      #   An array of invoice line items. The API supports a maximum of 50 invoice line items per invoice. If a greater number of invoice line items is required, please contact support.
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>]
      optional :invoice_line_items,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem
                 }
               )

      # @!attribute [rw] invoicer_address
      #   The invoice issuer's business address.
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress]
      optional :invoicer_address, -> { ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress }

      # @!attribute [rw] ledger_account_settlement_id
      #   The ID of the virtual account the invoice should be paid to.
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute [rw] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute [rw] notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status notifications to. At least one email is required if notifications are enabled and the counterparty doesn't have an email.
      #   @return [Array<String>]
      optional :notification_email_addresses, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients about invoice status changes.
      #   @return [Boolean]
      optional :notifications_enabled, ModernTreasury::BooleanModel

      # @!attribute [rw] originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute [rw] payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #   @return [Date]
      optional :payment_effective_date, Date

      # @!attribute [rw] payment_method
      #   The method by which the invoice can be paid. `ui` will show the embedded payment collection flow. `automatic` will automatically initiate payment based upon the account details of the receiving_account id.\nIf the invoice amount is positive, the automatically initiated payment order's direction will be debit. If the invoice amount is negative, the automatically initiated payment order's direction will be credit. One of `manual`, `ui`, or `automatic`.
      #   @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod]
      optional :payment_method, enum: -> { ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod }

      # @!attribute [rw] payment_type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
      optional :payment_type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!attribute [rw] receiving_account_id
      #   The receiving account ID. Can be an `external_account`.
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute [rw] recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #   @return [String]
      optional :recipient_email, String

      # @!attribute [rw] recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #   @return [String]
      optional :recipient_name, String

      # @!attribute [rw] remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to invoice recipients.
      #   @return [Array<Integer>]
      optional :remind_after_overdue_days, ModernTreasury::ArrayOf.new(Integer)

      # @!attribute [rw] status
      #   Invoice status must be updated in a `PATCH` request that does not modify any other invoice attributes.             Valid state transitions are `draft` to `unpaid`, `draft` or `unpaid` to `voided`, and `draft` or `unpaid`             to `paid`.
      #   @return [String]
      optional :status, String

      # @!attribute [rw] virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #   @return [String]
      optional :virtual_account_id, String

      class ContactDetail < ModernTreasury::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] contact_identifier
        #   @return [String]
        required :contact_identifier, String

        # @!attribute [rw] contact_identifier_type
        #   @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType
                 }

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

        # @!parse
        #   # Create a new instance of ContactDetail from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :contact_identifier
        #   #   @option data [String] :contact_identifier_type
        #   #   @option data [String] :created_at
        #   #   @option data [String] :discarded_at
        #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
        #   #     if it exists in the test environment.
        #   #   @option data [String] :object
        #   #   @option data [String] :updated_at
        #   def initialize(data = {}) = super
      end

      class CounterpartyBillingAddress < ModernTreasury::BaseModel
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

        # @!parse
        #   # Create a new instance of CounterpartyBillingAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :line1
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String, nil] :line2
        #   def initialize(data = {}) = super
      end

      class CounterpartyShippingAddress < ModernTreasury::BaseModel
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

        # @!parse
        #   # Create a new instance of CounterpartyShippingAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :line1
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String, nil] :line2
        #   def initialize(data = {}) = super
      end

      class InvoiceLineItem < ModernTreasury::BaseModel
        # @!attribute [rw] name
        #   The name of the line item, typically a product or SKU name.
        #   @return [String]
        required :name, String

        # @!attribute [rw] unit_amount
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit.
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute [rw] description
        #   An optional free-form description of the line item.
        #   @return [String]
        optional :description, String

        # @!attribute [rw] direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business money           and increases the invoice's `total_amount` due. `credit` has the opposite intention and effect.
        #   @return [String]
        optional :direction, String

        # @!attribute [rw] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute [rw] quantity
        #   The number of units of a product or service that this line item is for.           Must be a whole number. Defaults to 1 if not provided.
        #   @return [Integer]
        optional :quantity, Integer

        # @!attribute [rw] unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit. Accepts decimal strings with up to 12 decimals
        #   @return [String]
        optional :unit_amount_decimal, String

        # @!parse
        #   # Create a new instance of InvoiceLineItem from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :name The name of the line item, typically a product or SKU name.
        #   #   @option data [Integer] :unit_amount The cost per unit of the product or service that this line item is for,
        #   #     specified in the invoice currency's smallest unit.
        #   #   @option data [String, nil] :description An optional free-form description of the line item.
        #   #   @option data [String, nil] :direction Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   #     intention and effect.
        #   #   @option data [Hash, nil] :metadata Additional data represented as key-value pairs. Both the key and value must be
        #   #     strings.
        #   #   @option data [Integer, nil] :quantity The number of units of a product or service that this line item is for. Must be
        #   #     a whole number. Defaults to 1 if not provided.
        #   #   @option data [String, nil] :unit_amount_decimal The cost per unit of the product or service that this line item is for,
        #   #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   #     up to 12 decimals
        #   def initialize(data = {}) = super
      end

      class InvoicerAddress < ModernTreasury::BaseModel
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

        # @!parse
        #   # Create a new instance of InvoicerAddress from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :country Country code conforms to [ISO 3166-1 alpha-2]
        #   #   @option data [String] :line1
        #   #   @option data [String] :locality Locality or City.
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :region Region or State.
        #   #   @option data [String, nil] :line2
        #   def initialize(data = {}) = super
      end

      # The method by which the invoice can be paid. `ui` will show the embedded payment collection flow. `automatic` will automatically initiate payment based upon the account details of the receiving_account id.\nIf the invoice amount is positive, the automatically initiated payment order's direction will be debit. If the invoice amount is negative, the automatically initiated payment order's direction will be credit. One of `manual`, `ui`, or `automatic`.
      class PaymentMethod < ModernTreasury::Enum
        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic
      end
    end
  end
end
