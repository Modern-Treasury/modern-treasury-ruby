# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Invoices#create
    class InvoiceCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute counterparty_id
      #   The ID of the counterparty receiving the invoice.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute due_date
      #   A future date by when the invoice needs to be paid.
      #
      #   @return [Time]
      required :due_date, Time

      # @!attribute originating_account_id
      #   The ID of the internal account the invoice should be paid to.
      #
      #   @return [String]
      required :originating_account_id, String

      # @!attribute auto_advance
      #   When true, the invoice will progress to unpaid automatically and cannot be
      #   edited after entering that state. If the invoice fails to progress to unpaid,
      #   the errors will be returned and the invoice will not be created.
      #
      #   @return [Boolean, nil]
      optional :auto_advance, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>, nil]
      optional :contact_details,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::InvoiceCreateParams::ContactDetail] }

      # @!attribute counterparty_billing_address
      #   The counterparty's billing address.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil]
      optional :counterparty_billing_address,
               -> { ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress },
               nil?: true

      # @!attribute counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil]
      optional :counterparty_shipping_address,
               -> { ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress },
               nil?: true

      # @!attribute currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #
      #   @return [Symbol, ModernTreasury::Models::Currency, nil]
      optional :currency, enum: -> { ModernTreasury::Models::Currency }

      # @!attribute description
      #   A free-form description of the invoice.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute fallback_payment_method
      #   When payment_method is automatic, the fallback payment method to use when an
      #   automatic payment fails. One of `manual` or `ui`.
      #
      #   @return [String, nil]
      optional :fallback_payment_method, String, nil?: true

      # @!attribute ingest_ledger_entries
      #   Whether to ingest the ledger_entries to populate the invoice line items. If this
      #   is false, then a line item must be provided. If this is true, line_items must be
      #   empty. Ignored if ledger_account_settlement_id is empty.
      #
      #   @return [Boolean, nil]
      optional :ingest_ledger_entries, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute invoice_line_items
      #   An array of invoice line items. The API supports a maximum of 50 invoice line
      #   items per invoice. If a greater number of invoice line items is required, please
      #   contact support.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil]
      optional :invoice_line_items,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem] },
               nil?: true

      # @!attribute invoicer_address
      #   The invoice issuer's business address.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil]
      optional :invoicer_address,
               -> { ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress },
               nil?: true

      # @!attribute ledger_account_settlement_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String, nil]
      optional :ledger_account_settlement_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String], nil?: true

      # @!attribute notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status
      #   notifications to. At least one email is required if notifications are enabled
      #   and the counterparty doesn't have an email.
      #
      #   @return [Array<String>, nil]
      optional :notification_email_addresses, ModernTreasury::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients
      #   about invoice status changes.
      #
      #   @return [Boolean, nil]
      optional :notifications_enabled, ModernTreasury::Internal::Type::Boolean

      # @!attribute payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date, nil]
      optional :payment_effective_date, Date

      # @!attribute payment_method
      #   The method by which the invoice can be paid. `ui` will show the embedded payment
      #   collection flow. `automatic` will automatically initiate payment based upon the
      #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   the automatically initiated payment order's direction will be debit. If the
      #   invoice amount is negative, the automatically initiated payment order's
      #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod, nil]
      optional :payment_method, enum: -> { ModernTreasury::Models::InvoiceCreateParams::PaymentMethod }

      # @!attribute payment_type
      #   One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentOrderType, nil]
      optional :payment_type, enum: -> { ModernTreasury::Models::PaymentOrderType }

      # @!attribute receiving_account_id
      #   The receiving account ID. Can be an `external_account`.
      #
      #   @return [String, nil]
      optional :receiving_account_id, String

      # @!attribute recipient_email
      #   The email of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      optional :recipient_email, String, nil?: true

      # @!attribute recipient_name
      #   The name of the recipient of the invoice. Leaving this value as null will
      #   fallback to using the counterparty's name.
      #
      #   @return [String, nil]
      optional :recipient_name, String, nil?: true

      # @!attribute remind_after_overdue_days
      #   Number of days after due date when overdue reminder emails will be sent out to
      #   invoice recipients.
      #
      #   @return [Array<Integer>, nil]
      optional :remind_after_overdue_days, ModernTreasury::Internal::Type::ArrayOf[Integer], nil?: true

      # @!attribute virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String, nil]
      optional :virtual_account_id, String, nil?: true

      # @!method initialize(counterparty_id:, due_date:, originating_account_id:, auto_advance: nil, contact_details: nil, counterparty_billing_address: nil, counterparty_shipping_address: nil, currency: nil, description: nil, fallback_payment_method: nil, ingest_ledger_entries: nil, invoice_line_items: nil, invoicer_address: nil, ledger_account_settlement_id: nil, metadata: nil, notification_email_addresses: nil, notifications_enabled: nil, payment_effective_date: nil, payment_method: nil, payment_type: nil, receiving_account_id: nil, recipient_email: nil, recipient_name: nil, remind_after_overdue_days: nil, virtual_account_id: nil, request_options: {})
      #   @param counterparty_id [String]
      #   @param due_date [Time]
      #   @param originating_account_id [String]
      #   @param auto_advance [Boolean, nil]
      #   @param contact_details [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>]
      #   @param counterparty_billing_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil]
      #   @param counterparty_shipping_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil]
      #   @param currency [Symbol, ModernTreasury::Models::Currency]
      #   @param description [String]
      #   @param fallback_payment_method [String, nil]
      #   @param ingest_ledger_entries [Boolean, nil]
      #   @param invoice_line_items [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil]
      #   @param invoicer_address [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil]
      #   @param ledger_account_settlement_id [String, nil]
      #   @param metadata [Hash{Symbol=>String}, nil]
      #   @param notification_email_addresses [Array<String>, nil]
      #   @param notifications_enabled [Boolean]
      #   @param payment_effective_date [Date]
      #   @param payment_method [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod]
      #   @param payment_type [Symbol, ModernTreasury::Models::PaymentOrderType]
      #   @param receiving_account_id [String]
      #   @param recipient_email [String, nil]
      #   @param recipient_name [String, nil]
      #   @param remind_after_overdue_days [Array<Integer>, nil]
      #   @param virtual_account_id [String, nil]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      class ContactDetail < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [Symbol, ModernTreasury::Models::InvoiceCreateParams::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> { ModernTreasury::Models::InvoiceCreateParams::ContactDetail::ContactIdentifierType }

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
        #   if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, contact_identifier:, contact_identifier_type:, created_at:, discarded_at:, live_mode:, object:, updated_at:)
        #   @param id [String]
        #   @param contact_identifier [String]
        #   @param contact_identifier_type [Symbol, ModernTreasury::Models::InvoiceCreateParams::ContactDetail::ContactIdentifierType]
        #   @param created_at [Time]
        #   @param discarded_at [Time, nil]
        #   @param live_mode [Boolean]
        #   @param object [String]
        #   @param updated_at [Time]

        # @see ModernTreasury::Models::InvoiceCreateParams::ContactDetail#contact_identifier_type
        module ContactIdentifierType
          extend ModernTreasury::Internal::Type::Enum

          EMAIL = :email
          PHONE_NUMBER = :phone_number
          WEBSITE = :website

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class CounterpartyBillingAddress < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The counterparty's billing address.
        #
        #   @param country [String]
        #   @param line1 [String]
        #   @param locality [String]
        #   @param postal_code [String]
        #   @param region [String]
        #   @param line2 [String]
      end

      class CounterpartyShippingAddress < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The counterparty's shipping address where physical goods should be delivered.
        #
        #   @param country [String]
        #   @param line1 [String]
        #   @param locality [String]
        #   @param postal_code [String]
        #   @param region [String]
        #   @param line2 [String]
      end

      class InvoiceLineItem < ModernTreasury::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the line item, typically a product or SKU name.
        #
        #   @return [String]
        required :name, String

        # @!attribute unit_amount
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit.
        #
        #   @return [Integer]
        required :unit_amount, Integer

        # @!attribute description
        #   An optional free-form description of the line item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute direction
        #   Either `debit` or `credit`. `debit` indicates that a client owes the business
        #   money and increases the invoice's `total_amount` due. `credit` has the opposite
        #   intention and effect.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute quantity
        #   The number of units of a product or service that this line item is for. Must be
        #   a whole number. Defaults to 1 if not provided.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!attribute unit_amount_decimal
        #   The cost per unit of the product or service that this line item is for,
        #   specified in the invoice currency's smallest unit. Accepts decimal strings with
        #   up to 12 decimals
        #
        #   @return [String, nil]
        optional :unit_amount_decimal, String

        # @!method initialize(name:, unit_amount:, description: nil, direction: nil, metadata: nil, quantity: nil, unit_amount_decimal: nil)
        #   @param name [String]
        #   @param unit_amount [Integer]
        #   @param description [String]
        #   @param direction [String]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param quantity [Integer]
        #   @param unit_amount_decimal [String]
      end

      class InvoicerAddress < ModernTreasury::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(country:, line1:, locality:, postal_code:, region:, line2: nil)
        #   The invoice issuer's business address.
        #
        #   @param country [String]
        #   @param line1 [String]
        #   @param locality [String]
        #   @param postal_code [String]
        #   @param region [String]
        #   @param line2 [String]
      end

      # The method by which the invoice can be paid. `ui` will show the embedded payment
      # collection flow. `automatic` will automatically initiate payment based upon the
      # account details of the receiving_account id.\nIf the invoice amount is positive,
      # the automatically initiated payment order's direction will be debit. If the
      # invoice amount is negative, the automatically initiated payment order's
      # direction will be credit. One of `manual`, `ui`, or `automatic`.
      module PaymentMethod
        extend ModernTreasury::Internal::Type::Enum

        UI = :ui
        MANUAL = :manual
        AUTOMATIC = :automatic

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
