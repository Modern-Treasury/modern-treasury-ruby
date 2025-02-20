# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>, nil]
      optional :contact_details,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::InvoiceUpdateParams::ContactDetail] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>]
      #   attr_writer :contact_details

      # @!attribute counterparty_billing_address
      #   The counterparty's billing address.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress, nil]
      optional :counterparty_billing_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress },
               nil?: true

      # @!attribute [r] counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress, nil]
      optional :counterparty_shipping_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress },
               nil?: true

      # @!attribute [r] currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::Currency]
      #   attr_writer :currency

      # @!attribute [r] description
      #   A free-form description of the invoice.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] due_date
      #   A future date by when the invoice needs to be paid.
      #
      #   @return [Time, nil]
      optional :due_date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :due_date

      # @!attribute fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an
      #     automatic payment fails. One of `manual` or `ui`.
      #
      #   @return [String, nil]
      optional :fallback_payment_method, String, nil?: true

      # @!attribute ingest_ledger_entries
      #   Whether to ingest the ledger_entries to populate the invoice line items. If this
      #     is false, then a line item must be provided. If this is true, line_items must be
      #     empty. Ignored if ledger_account_settlement_id is empty.
      #
      #   @return [Boolean, nil]
      optional :ingest_ledger_entries, ModernTreasury::BooleanModel, nil?: true

      # @!attribute invoice_line_items
      #   An array of invoice line items. The API supports a maximum of 50 invoice line
      #     items per invoice. If a greater number of invoice line items is required, please
      #     contact support.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>, nil]
      optional :invoice_line_items,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem] },
               nil?: true

      # @!attribute invoicer_address
      #   The invoice issuer's business address.
      #
      #   @return [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress, nil]
      optional :invoicer_address,
               -> { ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress },
               nil?: true

      # @!attribute ledger_account_settlement_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String], nil?: true

      # @!attribute notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status
      #     notifications to. At least one email is required if notifications are enabled
      #     and the counterparty doesn't have an email.
      #
      #   @return [Array<String>, nil]
      optional :notification_email_addresses, ModernTreasury::ArrayOf[String], nil?: true

      # @!attribute [r] notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients
      #     about invoice status changes.
      #
      #   @return [Boolean, nil]
      optional :notifications_enabled, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :notifications_enabled

      # @!attribute [r] originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #
      #   @return [String, nil]
      optional :originating_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originating_account_id

      # @!attribute [r] payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the
      #     current business day or the next business day if the current day is a bank
      #     holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date, nil]
      optional :payment_effective_date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :payment_effective_date

      # @!attribute [r] payment_method
      #   The method by which the invoice can be paid. `ui` will show the embedded payment
      #     collection flow. `automatic` will automatically initiate payment based upon the
      #     account details of the receiving_account id.\nIf the invoice amount is positive,
      #     the automatically initiated payment order's direction will be debit. If the
      #     invoice amount is negative, the automatically initiated payment order's
      #     direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod, nil]
      optional :payment_method, enum: -> { ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod]
      #   attr_writer :payment_method

      # @!attribute [r] payment_type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #     `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #     `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType, nil]
      optional :payment_type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   attr_writer :payment_type

      # @!attribute [r] receiving_account_id
      #   The receiving account ID. Can be an `external_account`.
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :receiving_account_id

      # @!attribute recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      optional :recipient_email, String, nil?: true

      # @!attribute recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will
      #     fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      optional :recipient_name, String, nil?: true

      # @!attribute remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to
      #     invoice recipients.
      #
      #   @return [Array<Integer>, nil]
      optional :remind_after_overdue_days, ModernTreasury::ArrayOf[Integer], nil?: true

      # @!attribute [r] status
      #   Invoice status must be updated in a `PATCH` request that does not modify any
      #     other invoice attributes. Valid state transitions are `draft` to `unpaid`,
      #     `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
      #
      #   @return [String, nil]
      optional :status, String

      # @!parse
      #   # @return [String]
      #   attr_writer :status

      # @!attribute virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!parse
      #   # @param contact_details [Array<ModernTreasury::Models::InvoiceUpdateParams::ContactDetail>]
      #   # @param counterparty_billing_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyBillingAddress, nil]
      #   # @param counterparty_id [String]
      #   # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceUpdateParams::CounterpartyShippingAddress, nil]
      #   # @param currency [Symbol, ModernTreasury::Models::Currency]
      #   # @param description [String]
      #   # @param due_date [Time]
      #   # @param fallback_payment_method [String, nil]
      #   # @param ingest_ledger_entries [Boolean, nil]
      #   # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceUpdateParams::InvoiceLineItem>, nil]
      #   # @param invoicer_address [ModernTreasury::Models::InvoiceUpdateParams::InvoicerAddress, nil]
      #   # @param ledger_account_settlement_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String}, nil]
      #   # @param notification_email_addresses [Array<String>, nil]
      #   # @param notifications_enabled [Boolean]
      #   # @param originating_account_id [String]
      #   # @param payment_effective_date [Date]
      #   # @param payment_method [Symbol, ModernTreasury::Models::InvoiceUpdateParams::PaymentMethod]
      #   # @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   # @param receiving_account_id [String]
      #   # @param recipient_email [String, nil]
      #   # @param recipient_name [String, nil]
      #   # @param remind_after_overdue_days [Array<Integer>, nil]
      #   # @param status [String]
      #   # @param virtual_account_id [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     contact_details: nil,
      #     counterparty_billing_address: nil,
      #     counterparty_id: nil,
      #     counterparty_shipping_address: nil,
      #     currency: nil,
      #     description: nil,
      #     due_date: nil,
      #     fallback_payment_method: nil,
      #     ingest_ledger_entries: nil,
      #     invoice_line_items: nil,
      #     invoicer_address: nil,
      #     ledger_account_settlement_id: nil,
      #     metadata: nil,
      #     notification_email_addresses: nil,
      #     notifications_enabled: nil,
      #     originating_account_id: nil,
      #     payment_effective_date: nil,
      #     payment_method: nil,
      #     payment_type: nil,
      #     receiving_account_id: nil,
      #     recipient_email: nil,
      #     recipient_name: nil,
      #     remind_after_overdue_days: nil,
      #     status: nil,
      #     virtual_account_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
                 enum: -> { ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute discarded_at
        #
        #   @return [Time, nil]
        required :discarded_at, Time, nil?: true

        # @!attribute live_mode
        #   This field will be true if this object exists in the live environment or false
        #     if it exists in the test environment.
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
        #   # @param contact_identifier [String]
        #   # @param contact_identifier_type [Symbol, ModernTreasury::Models::InvoiceUpdateParams::ContactDetail::ContactIdentifierType]
        #   # @param created_at [Time]
        #   # @param discarded_at [Time, nil]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param updated_at [Time]
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

        # @abstract
        #
        # @example
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
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

        # @!attribute [r] line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # The counterparty's billing address.
        #   #
        #   # @param country [String]
        #   # @param line1 [String]
        #   # @param locality [String]
        #   # @param postal_code [String]
        #   # @param region [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

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

        # @!attribute [r] line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # The counterparty's shipping address where physical goods should be delivered.
        #   #
        #   # @param country [String]
        #   # @param line1 [String]
        #   # @param locality [String]
        #   # @param postal_code [String]
        #   # @param region [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      class InvoiceLineItem < ModernTreasury::BaseModel
        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String]
        required :name, String

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute [r] description
        #   An optional free-form description of the line item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business
        #     money and increases the invoice's `total_amount` due. `credit` has the opposite
        #     intention and effect.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!parse
        #   # @return [String]
        #   attr_writer :direction

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute [r] quantity
        #   The number of units of a product or service that this line item is for. Must be
        #     a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :quantity

        # @!attribute [r] unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #     specified in the invoice currency's smallest unit. Accepts decimal strings with
        #     up to 12 decimals
        #
        #   @return [String, nil]
        optional :unit_amount_decimal, String

        # @!parse
        #   # @return [String]
        #   attr_writer :unit_amount_decimal

        # @!parse
        #   # @param name [String]
        #   # @param unit_amount [Integer]
        #   # @param description [String]
        #   # @param direction [String]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param quantity [Integer]
        #   # @param unit_amount_decimal [String]
        #   #
        #   def initialize(
        #     name:,
        #     unit_amount:,
        #     description: nil,
        #     direction: nil,
        #     metadata: nil,
        #     quantity: nil,
        #     unit_amount_decimal: nil,
        #     **
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

        # @!attribute [r] line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # The invoice issuer's business address.
        #   #
        #   # @param country [String]
        #   # @param line1 [String]
        #   # @param locality [String]
        #   # @param postal_code [String]
        #   # @param region [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # @abstract
      #
      # The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      # @example
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

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
