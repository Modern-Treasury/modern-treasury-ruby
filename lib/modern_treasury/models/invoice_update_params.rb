# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceUpdateParams < ModernTreasury::BaseModel
      # @!attribute contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>]
      optional :contact_details,
               ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::InvoiceUpdateParams::ContactDetail })

      # @!attribute counterparty_billing_address
      #   The counterparty's billing address.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress]
      optional :counterparty_billing_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress }

      # @!attribute counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress]
      optional :counterparty_shipping_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress }

      # @!attribute currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute description
      #   A free-form description of the invoice.
      #
      #   @return [String]
      optional :description, String

      # @!attribute due_date
      #   A future date by when the invoice needs to be paid.
      #
      #   @return [Time]
      optional :due_date, Time

      # @!attribute fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an automatic payment fails. One of `manual` or `ui`.
      #
      #   @return [String]
      optional :fallback_payment_method, String

      # @!attribute ingest_ledger_entries
      #   Whether to ingest the ledger_entries to populate the invoice line items. If this is false, then a line item must be provided. If this is true, line_items must be empty. Ignored if ledger_account_settlement_id is empty.
      #
      #   @return [Boolean]
      optional :ingest_ledger_entries, ModernTreasury::BooleanModel

      # @!attribute invoice_line_items
      #   An array of invoice line items. The API supports a maximum of 50 invoice line items per invoice. If a greater number of invoice line items is required, please contact support.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>]
      optional :invoice_line_items,
               ModernTreasury::ArrayOf.new(
                 -> {
                   ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem
                 }
               )

      # @!attribute invoicer_address
      #   The invoice issuer's business address.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress]
      optional :invoicer_address, -> { ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress }

      # @!attribute ledger_account_settlement_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status notifications to. At least one email is required if notifications are enabled and the counterparty doesn't have an email.
      #
      #   @return [Array<String>]
      optional :notification_email_addresses, ModernTreasury::ArrayOf.new(String)

      # @!attribute notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients about invoice status changes.
      #
      #   @return [Boolean]
      optional :notifications_enabled, ModernTreasury::BooleanModel

      # @!attribute originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #
      #   @return [String]
      optional :originating_account_id, String

      # @!attribute payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date]
      optional :payment_effective_date, Date

      # @!attribute payment_method
      #   The method by which the invoice can be paid. `ui` will show the embedded payment collection flow. `automatic` will automatically initiate payment based upon the account details of the receiving_account id.\nIf the invoice amount is positive, the automatically initiated payment order's direction will be debit. If the invoice amount is negative, the automatically initiated payment order's direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod]
      optional :payment_method, enum: -> { ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod }

      # @!attribute payment_type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`, `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`, `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType]
      optional :payment_type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!attribute receiving_account_id
      #   The receiving account ID. Can be an `external_account`.
      #
      #   @return [String]
      optional :receiving_account_id, String

      # @!attribute recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #
      #   @return [String]
      optional :recipient_email, String

      # @!attribute recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will fallback to using the counterparty's name.
      #
      #   @return [String]
      optional :recipient_name, String

      # @!attribute remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to invoice recipients.
      #
      #   @return [Array<Integer>]
      optional :remind_after_overdue_days, ModernTreasury::ArrayOf.new(Integer)

      # @!attribute status
      #   Invoice status must be updated in a `PATCH` request that does not modify any other invoice attributes.             Valid state transitions are `draft` to `unpaid`, `draft` or `unpaid` to `voided`, and `draft` or `unpaid`             to `paid`.
      #
      #   @return [String]
      optional :status, String

      # @!attribute virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String]
      optional :virtual_account_id, String

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
        #   @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType
                 }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time]
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
        #   # @param discarded_at [String]
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
        #     updated_at:
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        class ContactIdentifierType < ModernTreasury::Enum
          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website
        end
      end

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
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

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
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      class InvoiceLineItem < ModernTreasury::BaseModel
        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String]
        required :name, String

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute description
        #   An optional free-form description of the line item.
        #
        #   @return [String]
        optional :description, String

        # @!attribute direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business money           and increases the invoice's `total_amount` due. `credit` has the opposite intention and effect.
        #
        #   @return [String]
        optional :direction, String

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be strings.
        #
        #   @return [Hash]
        optional :metadata, Hash

        # @!attribute quantity
        #   The number of units of a product or service that this line item is for.           Must be a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer]
        optional :quantity, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,           specified in the invoice currency's smallest unit. Accepts decimal strings with up to 12 decimals
        #
        #   @return [String]
        optional :unit_amount_decimal, String

        # @!parse
        #   # @param name [String] The name of the line item, typically a product or SKU name.
        #   #
        #   # @param unit_amount [Integer] The cost per unit of the product or service that this line item is for,
        #   #   specified in the invoice currency's smallest unit.
        #   #
        #   # @param description [String, nil] An optional free-form description of the line item.
        #   #
        #   # @param direction [String, nil] Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   #   intention and effect.
        #   #
        #   # @param metadata [Hash, nil] Additional data represented as key-value pairs. Both the key and value must be
        #   #   strings.
        #   #
        #   # @param quantity [Integer, nil] The number of units of a product or service that this line item is for. Must be
        #   #   a whole number. Defaults to 1 if not provided.
        #   #
        #   # @param unit_amount_decimal [String, nil] The cost per unit of the product or service that this line item is for,
        #   #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   #   up to 12 decimals
        #   #
        #   def initialize(
        #     name:,
        #     unit_amount:,
        #     description: nil,
        #     direction: nil,
        #     metadata: nil,
        #     quantity: nil,
        #     unit_amount_decimal: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

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
        #   # @param line2 [String, nil]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
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
