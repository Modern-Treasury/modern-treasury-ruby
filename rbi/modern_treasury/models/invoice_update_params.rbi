# typed: strong

module ModernTreasury
  module Models
    class InvoiceUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InvoiceUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The invoicer's contact details displayed at the top of the invoice.
      sig { returns(T.nilable(T::Array[ModernTreasury::ContactDetail])) }
      attr_reader :contact_details

      sig do
        params(
          contact_details: T::Array[ModernTreasury::ContactDetail::OrHash]
        ).void
      end
      attr_writer :contact_details

      # The counterparty's billing address.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress
          )
        )
      end
      attr_reader :counterparty_billing_address

      sig do
        params(
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress::OrHash
            )
        ).void
      end
      attr_writer :counterparty_billing_address

      # The ID of the counterparty receiving the invoice.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The counterparty's shipping address where physical goods should be delivered.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress
          )
        )
      end
      attr_reader :counterparty_shipping_address

      sig do
        params(
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress::OrHash
            )
        ).void
      end
      attr_writer :counterparty_shipping_address

      # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
      attr_writer :currency

      # A free-form description of the invoice.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A future date by when the invoice needs to be paid.
      sig { returns(T.nilable(Time)) }
      attr_reader :due_date

      sig { params(due_date: Time).void }
      attr_writer :due_date

      # When payment_method is automatic, the fallback payment method to use when an
      # automatic payment fails. One of `manual` or `ui`.
      sig { returns(T.nilable(String)) }
      attr_accessor :fallback_payment_method

      # An array of invoice line items. The API supports a maximum of 50 invoice line
      # items per invoice. If a greater number of invoice line items is required, please
      # contact support.
      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::Invoices::InvoiceLineItemCreate])
        )
      end
      attr_accessor :invoice_line_items

      # The invoice issuer's business address.
      sig do
        returns(T.nilable(ModernTreasury::InvoiceUpdateParams::InvoicerAddress))
      end
      attr_reader :invoicer_address

      sig do
        params(
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::InvoicerAddress::OrHash
            )
        ).void
      end
      attr_writer :invoicer_address

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Emails in addition to the counterparty email to send invoice status
      # notifications to. At least one email is required if notifications are enabled
      # and the counterparty doesn't have an email.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :notification_email_addresses

      # If true, the invoice will send email notifications to the invoice recipients
      # about invoice status changes.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :notifications_enabled

      sig { params(notifications_enabled: T::Boolean).void }
      attr_writer :notifications_enabled

      # The ID of the internal account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      attr_reader :originating_account_id

      sig { params(originating_account_id: String).void }
      attr_writer :originating_account_id

      # Date transactions are to be posted to the participants' account. Defaults to the
      # current business day or the next business day if the current day is a bank
      # holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(T.nilable(Date)) }
      attr_reader :payment_effective_date

      sig { params(payment_effective_date: Date).void }
      attr_writer :payment_effective_date

      # The method by which the invoice can be paid. `ui` will show the embedded payment
      # collection flow. `automatic` will automatically initiate payment based upon the
      # account details of the receiving_account id.\nIf the invoice amount is positive,
      # the automatically initiated payment order's direction will be debit. If the
      # invoice amount is negative, the automatically initiated payment order's
      # direction will be credit. One of `manual`, `ui`, or `automatic`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::OrSymbol
          )
        )
      end
      attr_reader :payment_method

      sig do
        params(
          payment_method:
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::OrSymbol
        ).void
      end
      attr_writer :payment_method

      # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      sig { returns(T.nilable(ModernTreasury::PaymentOrderType::OrSymbol)) }
      attr_reader :payment_type

      sig do
        params(payment_type: ModernTreasury::PaymentOrderType::OrSymbol).void
      end
      attr_writer :payment_type

      # The receiving account ID. Can be an `external_account`.
      sig { returns(T.nilable(String)) }
      attr_reader :receiving_account_id

      sig { params(receiving_account_id: String).void }
      attr_writer :receiving_account_id

      # The email of the recipient of the invoice. Leaving this value as null will
      # fallback to using the counterparty's name.
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_email

      # The name of the recipient of the invoice. Leaving this value as null will
      # fallback to using the counterparty's name.
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      # Number of days after due date when overdue reminder emails will be sent out to
      # invoice recipients.
      sig { returns(T.nilable(T::Array[Integer])) }
      attr_accessor :remind_after_overdue_days

      # Invoice status must be updated in a `PATCH` request that does not modify any
      # other invoice attributes. Valid state transitions are `draft` to `unpaid`,
      # `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # The ID of the virtual account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          contact_details: T::Array[ModernTreasury::ContactDetail::OrHash],
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress::OrHash
            ),
          counterparty_id: String,
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress::OrHash
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: String,
          due_date: Time,
          fallback_payment_method: T.nilable(String),
          invoice_line_items:
            T.nilable(
              T::Array[ModernTreasury::Invoices::InvoiceLineItemCreate::OrHash]
            ),
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceUpdateParams::InvoicerAddress::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          originating_account_id: String,
          payment_effective_date: Date,
          payment_method:
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::OrSymbol,
          payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: String,
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The invoicer's contact details displayed at the top of the invoice.
        contact_details: nil,
        # The counterparty's billing address.
        counterparty_billing_address: nil,
        # The ID of the counterparty receiving the invoice.
        counterparty_id: nil,
        # The counterparty's shipping address where physical goods should be delivered.
        counterparty_shipping_address: nil,
        # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
        currency: nil,
        # A free-form description of the invoice.
        description: nil,
        # A future date by when the invoice needs to be paid.
        due_date: nil,
        # When payment_method is automatic, the fallback payment method to use when an
        # automatic payment fails. One of `manual` or `ui`.
        fallback_payment_method: nil,
        # An array of invoice line items. The API supports a maximum of 50 invoice line
        # items per invoice. If a greater number of invoice line items is required, please
        # contact support.
        invoice_line_items: nil,
        # The invoice issuer's business address.
        invoicer_address: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # Emails in addition to the counterparty email to send invoice status
        # notifications to. At least one email is required if notifications are enabled
        # and the counterparty doesn't have an email.
        notification_email_addresses: nil,
        # If true, the invoice will send email notifications to the invoice recipients
        # about invoice status changes.
        notifications_enabled: nil,
        # The ID of the internal account the invoice should be paid to.
        originating_account_id: nil,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        payment_effective_date: nil,
        # The method by which the invoice can be paid. `ui` will show the embedded payment
        # collection flow. `automatic` will automatically initiate payment based upon the
        # account details of the receiving_account id.\nIf the invoice amount is positive,
        # the automatically initiated payment order's direction will be debit. If the
        # invoice amount is negative, the automatically initiated payment order's
        # direction will be credit. One of `manual`, `ui`, or `automatic`.
        payment_method: nil,
        # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
        # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
        # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
        payment_type: nil,
        # The receiving account ID. Can be an `external_account`.
        receiving_account_id: nil,
        # The email of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_email: nil,
        # The name of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_name: nil,
        # Number of days after due date when overdue reminder emails will be sent out to
        # invoice recipients.
        remind_after_overdue_days: nil,
        # Invoice status must be updated in a `PATCH` request that does not modify any
        # other invoice attributes. Valid state transitions are `draft` to `unpaid`,
        # `draft` or `unpaid` to `voided`, and `draft` or `unpaid` to `paid`.
        status: nil,
        # The ID of the virtual account the invoice should be paid to.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contact_details: T::Array[ModernTreasury::ContactDetail],
            counterparty_billing_address:
              T.nilable(
                ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress
              ),
            counterparty_id: String,
            counterparty_shipping_address:
              T.nilable(
                ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress
              ),
            currency: ModernTreasury::Currency::OrSymbol,
            description: String,
            due_date: Time,
            fallback_payment_method: T.nilable(String),
            invoice_line_items:
              T.nilable(
                T::Array[ModernTreasury::Invoices::InvoiceLineItemCreate]
              ),
            invoicer_address:
              T.nilable(ModernTreasury::InvoiceUpdateParams::InvoicerAddress),
            metadata: T.nilable(T::Hash[Symbol, String]),
            notification_email_addresses: T.nilable(T::Array[String]),
            notifications_enabled: T::Boolean,
            originating_account_id: String,
            payment_effective_date: Date,
            payment_method:
              ModernTreasury::InvoiceUpdateParams::PaymentMethod::OrSymbol,
            payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
            receiving_account_id: String,
            recipient_email: T.nilable(String),
            recipient_name: T.nilable(String),
            remind_after_overdue_days: T.nilable(T::Array[Integer]),
            status: String,
            virtual_account_id: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CounterpartyBillingAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InvoiceUpdateParams::CounterpartyBillingAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        # Locality or City.
        sig { returns(String) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # The counterparty's billing address.
        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          line1:,
          # Locality or City.
          locality:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          line2: nil
        )
        end

        sig do
          override.returns(
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

      class CounterpartyShippingAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InvoiceUpdateParams::CounterpartyShippingAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        # Locality or City.
        sig { returns(String) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # The counterparty's shipping address where physical goods should be delivered.
        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          line1:,
          # Locality or City.
          locality:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          line2: nil
        )
        end

        sig do
          override.returns(
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

      class InvoicerAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InvoiceUpdateParams::InvoicerAddress,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Country code conforms to [ISO 3166-1 alpha-2]
        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        # Locality or City.
        sig { returns(String) }
        attr_accessor :locality

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # Region or State.
        sig { returns(String) }
        attr_accessor :region

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # The invoice issuer's business address.
        sig do
          params(
            country: String,
            line1: String,
            locality: String,
            postal_code: String,
            region: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Country code conforms to [ISO 3166-1 alpha-2]
          country:,
          line1:,
          # Locality or City.
          locality:,
          # The postal code of the address.
          postal_code:,
          # Region or State.
          region:,
          line2: nil
        )
        end

        sig do
          override.returns(
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
      # collection flow. `automatic` will automatically initiate payment based upon the
      # account details of the receiving_account id.\nIf the invoice amount is positive,
      # the automatically initiated payment order's direction will be debit. If the
      # invoice amount is negative, the automatically initiated payment order's
      # direction will be credit. One of `manual`, `ui`, or `automatic`.
      module PaymentMethod
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::InvoiceUpdateParams::PaymentMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UI =
          T.let(
            :ui,
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::TaggedSymbol
          )
        AUTOMATIC =
          T.let(
            :automatic,
            ModernTreasury::InvoiceUpdateParams::PaymentMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InvoiceUpdateParams::PaymentMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
