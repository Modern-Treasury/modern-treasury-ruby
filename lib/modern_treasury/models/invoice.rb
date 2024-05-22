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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      #   @return [Symbol]
      required :currency,
               ModernTreasury::Enum.new(
                 :AED,
                 :AFN,
                 :ALL,
                 :AMD,
                 :ANG,
                 :AOA,
                 :ARS,
                 :AUD,
                 :AWG,
                 :AZN,
                 :BAM,
                 :BBD,
                 :BCH,
                 :BDT,
                 :BGN,
                 :BHD,
                 :BIF,
                 :BMD,
                 :BND,
                 :BOB,
                 :BRL,
                 :BSD,
                 :BTC,
                 :BTN,
                 :BWP,
                 :BYN,
                 :BYR,
                 :BZD,
                 :CAD,
                 :CDF,
                 :CHF,
                 :CLF,
                 :CLP,
                 :CNH,
                 :CNY,
                 :COP,
                 :CRC,
                 :CUC,
                 :CUP,
                 :CVE,
                 :CZK,
                 :DJF,
                 :DKK,
                 :DOP,
                 :DZD,
                 :EEK,
                 :EGP,
                 :ERN,
                 :ETB,
                 :EUR,
                 :FJD,
                 :FKP,
                 :GBP,
                 :GBX,
                 :GEL,
                 :GGP,
                 :GHS,
                 :GIP,
                 :GMD,
                 :GNF,
                 :GTQ,
                 :GYD,
                 :HKD,
                 :HNL,
                 :HRK,
                 :HTG,
                 :HUF,
                 :IDR,
                 :ILS,
                 :IMP,
                 :INR,
                 :IQD,
                 :IRR,
                 :ISK,
                 :JEP,
                 :JMD,
                 :JOD,
                 :JPY,
                 :KES,
                 :KGS,
                 :KHR,
                 :KMF,
                 :KPW,
                 :KRW,
                 :KWD,
                 :KYD,
                 :KZT,
                 :LAK,
                 :LBP,
                 :LKR,
                 :LRD,
                 :LSL,
                 :LTL,
                 :LVL,
                 :LYD,
                 :MAD,
                 :MDL,
                 :MGA,
                 :MKD,
                 :MMK,
                 :MNT,
                 :MOP,
                 :MRO,
                 :MRU,
                 :MTL,
                 :MUR,
                 :MVR,
                 :MWK,
                 :MXN,
                 :MYR,
                 :MZN,
                 :NAD,
                 :NGN,
                 :NIO,
                 :NOK,
                 :NPR,
                 :NZD,
                 :OMR,
                 :PAB,
                 :PEN,
                 :PGK,
                 :PHP,
                 :PKR,
                 :PLN,
                 :PYG,
                 :QAR,
                 :RON,
                 :RSD,
                 :RUB,
                 :RWF,
                 :SAR,
                 :SBD,
                 :SCR,
                 :SDG,
                 :SEK,
                 :SGD,
                 :SHP,
                 :SKK,
                 :SLL,
                 :SOS,
                 :SRD,
                 :SSP,
                 :STD,
                 :SVC,
                 :SYP,
                 :SZL,
                 :THB,
                 :TJS,
                 :TMM,
                 :TMT,
                 :TND,
                 :TOP,
                 :TRY,
                 :TTD,
                 :TWD,
                 :TZS,
                 :UAH,
                 :UGX,
                 :USD,
                 :UYU,
                 :UZS,
                 :VEF,
                 :VES,
                 :VND,
                 :VUV,
                 :WST,
                 :XAF,
                 :XAG,
                 :XAU,
                 :XBA,
                 :XBB,
                 :XBC,
                 :XBD,
                 :XCD,
                 :XDR,
                 :XFU,
                 :XOF,
                 :XPD,
                 :XPF,
                 :XPT,
                 :XTS,
                 :YER,
                 :ZAR,
                 :ZMK,
                 :ZMW,
                 :ZWD,
                 :ZWL,
                 :ZWN,
                 :ZWR
               )

      # @!attribute [rw] description
      #   A free-form description of the invoice.
      #   @return [String]
      required :description, String

      # @!attribute [rw] due_date
      #   A future date by when the invoice needs to be paid.
      #   @return [String]
      required :due_date, String

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
      #   @return [String]
      required :payment_effective_date, String

      # @!attribute [rw] payment_method
      #   When opening an invoice, whether to show the embedded payment UI , automatically debit the recipient, or rely on manual payment from the recipient.
      #   @return [Symbol]
      required :payment_method, ModernTreasury::Enum.new(:ui, :manual, :automatic)

      # @!attribute [rw] payment_orders
      #   The payment orders created for paying the invoice through the invoice payment UI.
      #   @return [Array<ModernTreasury::Models::PaymentOrder>]
      required :payment_orders, ModernTreasury::ArrayOf.new(-> { ModernTreasury::Models::PaymentOrder })

      # @!attribute [rw] payment_type
      #   One of `ach` or `eft`.
      #   @return [Symbol]
      required :payment_type, ModernTreasury::Enum.new(:eft, :ach)

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
      #   @return [Symbol]
      required :status,
               ModernTreasury::Enum.new(:draft, :paid, :partially_paid, :payment_pending, :unpaid, :voided)

      # @!attribute [rw] total_amount
      #   Total amount due in specified currency's smallest unit, e.g., $10 USD would be represented as 1000.
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute [rw] transaction_line_item_ids
      #   IDs of transaction line items associated with an invoice.
      #   @return [Array<String>]
      required :transaction_line_item_ids, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

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
        #   @return [Symbol]
        required :contact_identifier_type, ModernTreasury::Enum.new(:email, :phone_number, :website)

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] discarded_at
        #   @return [String]
        required :discarded_at, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String
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
      end
    end
  end
end
