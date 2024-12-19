# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceCreateParams < ModernTreasury::BaseModel
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
      #   When true, the invoice will progress to unpaid automatically and cannot be edited after entering that state. If the invoice fails to progress to unpaid, the errors will be returned and the invoice will not be created.
      #
      #   @return [Boolean]
      optional :auto_advance, ModernTreasury::BooleanModel

      # @!attribute contact_details
      #   The invoicer's contact details displayed at the top of the invoice.
      #
      #   @return [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>]
      optional :contact_details,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::InvoiceCreateParams::ContactDetail }]

      # @!attribute counterparty_billing_address
      #   The counterparty's billing address.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress]
      optional :counterparty_billing_address,
               -> { ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress }

      # @!attribute counterparty_shipping_address
      #   The counterparty's shipping address where physical goods should be delivered.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress]
      optional :counterparty_shipping_address,
               -> { ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress }

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
      #   @return [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>]
      optional :invoice_line_items,
               ModernTreasury::ArrayOf[-> { ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem }]

      # @!attribute invoicer_address
      #   The invoice issuer's business address.
      #
      #   @return [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress]
      optional :invoicer_address, -> { ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress }

      # @!attribute ledger_account_settlement_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String]
      optional :ledger_account_settlement_id, String

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be strings.
      #
      #   @return [Hash{Symbol => String}]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!attribute notification_email_addresses
      #   Emails in addition to the counterparty email to send invoice status notifications to. At least one email is required if notifications are enabled and the counterparty doesn't have an email.
      #
      #   @return [Array<String>]
      optional :notification_email_addresses, ModernTreasury::ArrayOf[String]

      # @!attribute notifications_enabled
      #   If true, the invoice will send email notifications to the invoice recipients about invoice status changes.
      #
      #   @return [Boolean]
      optional :notifications_enabled, ModernTreasury::BooleanModel

      # @!attribute payment_effective_date
      #   Date transactions are to be posted to the participants' account. Defaults to the current business day or the next business day if the current day is a bank holiday or weekend. Format: yyyy-mm-dd.
      #
      #   @return [Date]
      optional :payment_effective_date, Date

      # @!attribute payment_method
      #   The method by which the invoice can be paid. `ui` will show the embedded payment collection flow. `automatic` will automatically initiate payment based upon the account details of the receiving_account id.\nIf the invoice amount is positive, the automatically initiated payment order's direction will be debit. If the invoice amount is negative, the automatically initiated payment order's direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      #   @return [Symbol, ModernTreasury::Models::InvoiceCreateParams::PaymentMethod]
      optional :payment_method, enum: -> { ModernTreasury::Models::InvoiceCreateParams::PaymentMethod }

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
      optional :remind_after_overdue_days, ModernTreasury::ArrayOf[Integer]

      # @!attribute virtual_account_id
      #   The ID of the virtual account the invoice should be paid to.
      #
      #   @return [String]
      optional :virtual_account_id, String

      # @!parse
      #   # @param counterparty_id [String] The ID of the counterparty receiving the invoice.
      #   #
      #   # @param due_date [String] A future date by when the invoice needs to be paid.
      #   #
      #   # @param originating_account_id [String] The ID of the internal account the invoice should be paid to.
      #   #
      #   # @param auto_advance [Boolean, nil] When true, the invoice will progress to unpaid automatically and cannot be
      #   #   edited after entering that state. If the invoice fails to progress to unpaid,
      #   #   the errors will be returned and the invoice will not be created.
      #   #
      #   # @param contact_details [Array<ModernTreasury::Models::InvoiceCreateParams::ContactDetail>, nil] The invoicer's contact details displayed at the top of the invoice.
      #   #
      #   # @param counterparty_billing_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyBillingAddress, nil] The counterparty's billing address.
      #   #
      #   # @param counterparty_shipping_address [ModernTreasury::Models::InvoiceCreateParams::CounterpartyShippingAddress, nil] The counterparty's shipping address where physical goods should be delivered.
      #   #
      #   # @param currency [String, nil] Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #   #
      #   # @param description [String, nil] A free-form description of the invoice.
      #   #
      #   # @param fallback_payment_method [String, nil] When payment_method is automatic, the fallback payment method to use when an
      #   #   automatic payment fails. One of `manual` or `ui`.
      #   #
      #   # @param ingest_ledger_entries [Boolean, nil] Whether to ingest the ledger_entries to populate the invoice line items. If this
      #   #   is false, then a line item must be provided. If this is true, line_items must be
      #   #   empty. Ignored if ledger_account_settlement_id is empty.
      #   #
      #   # @param invoice_line_items [Array<ModernTreasury::Models::InvoiceCreateParams::InvoiceLineItem>, nil] An array of invoice line items. The API supports a maximum of 50 invoice line
      #   #   items per invoice. If a greater number of invoice line items is required, please
      #   #   contact support.
      #   #
      #   # @param invoicer_address [ModernTreasury::Models::InvoiceCreateParams::InvoicerAddress, nil] The invoice issuer's business address.
      #   #
      #   # @param ledger_account_settlement_id [String, nil] The ID of the virtual account the invoice should be paid to.
      #   #
      #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
      #   #   strings.
      #   #
      #   # @param notification_email_addresses [Array<String>, nil] Emails in addition to the counterparty email to send invoice status
      #   #   notifications to. At least one email is required if notifications are enabled
      #   #   and the counterparty doesn't have an email.
      #   #
      #   # @param notifications_enabled [Boolean, nil] If true, the invoice will send email notifications to the invoice recipients
      #   #   about invoice status changes.
      #   #
      #   # @param payment_effective_date [String, nil] Date transactions are to be posted to the participants' account. Defaults to the
      #   #   current business day or the next business day if the current day is a bank
      #   #   holiday or weekend. Format: yyyy-mm-dd.
      #   #
      #   # @param payment_method [String, nil] The method by which the invoice can be paid. `ui` will show the embedded payment
      #   #   collection flow. `automatic` will automatically initiate payment based upon the
      #   #   account details of the receiving_account id.\nIf the invoice amount is positive,
      #   #   the automatically initiated payment order's direction will be debit. If the
      #   #   invoice amount is negative, the automatically initiated payment order's
      #   #   direction will be credit. One of `manual`, `ui`, or `automatic`.
      #   #
      #   # @param payment_type [String, nil] One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #   #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #   #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      #   #
      #   # @param receiving_account_id [String, nil] The receiving account ID. Can be an `external_account`.
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
      #   # @param virtual_account_id [String, nil] The ID of the virtual account the invoice should be paid to.
      #   #
      #   def initialize(
      #     counterparty_id:,
      #     due_date:,
      #     originating_account_id:,
      #     auto_advance: nil,
      #     contact_details: nil,
      #     counterparty_billing_address: nil,
      #     counterparty_shipping_address: nil,
      #     currency: nil,
      #     description: nil,
      #     fallback_payment_method: nil,
      #     ingest_ledger_entries: nil,
      #     invoice_line_items: nil,
      #     invoicer_address: nil,
      #     ledger_account_settlement_id: nil,
      #     metadata: nil,
      #     notification_email_addresses: nil,
      #     notifications_enabled: nil,
      #     payment_effective_date: nil,
      #     payment_method: nil,
      #     payment_type: nil,
      #     receiving_account_id: nil,
      #     recipient_email: nil,
      #     recipient_name: nil,
      #     remind_after_overdue_days: nil,
      #     virtual_account_id: nil,
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
        #   @return [Symbol, ModernTreasury::Models::InvoiceCreateParams::ContactDetail::ContactIdentifierType]
        required :contact_identifier_type,
                 enum: -> {
                   ModernTreasury::Models::InvoiceCreateParams::ContactDetail::ContactIdentifierType
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
        # case enum
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
        #   @return [Hash{Symbol => String}]
        optional :metadata, ModernTreasury::HashOf[String]

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
        #   # @param metadata [Hash{Symbol => String}, nil] Additional data represented as key-value pairs. Both the key and value must be
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
        #   def initialize(country:, line1:, locality:, postal_code:, region:, line2: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end

      # The method by which the invoice can be paid. `ui` will show the embedded payment collection flow. `automatic` will automatically initiate payment based upon the account details of the receiving_account id.\nIf the invoice amount is positive, the automatically initiated payment order's direction will be debit. If the invoice amount is negative, the automatically initiated payment order's direction will be credit. One of `manual`, `ui`, or `automatic`.
      #
      # @example
      #
      # ```ruby
      # case enum
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
      end
    end
  end
end
