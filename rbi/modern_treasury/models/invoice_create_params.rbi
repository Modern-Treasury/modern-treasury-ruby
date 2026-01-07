# typed: strong

module ModernTreasury
  module Models
    class InvoiceCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InvoiceCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the counterparty receiving the invoice.
      sig { returns(String) }
      attr_accessor :counterparty_id

      # A future date by when the invoice needs to be paid.
      sig { returns(Time) }
      attr_accessor :due_date

      # The ID of the internal account the invoice should be paid to.
      sig { returns(String) }
      attr_accessor :originating_account_id

      # When true, the invoice will progress to unpaid automatically and cannot be
      # edited after entering that state. If the invoice fails to progress to unpaid,
      # the errors will be returned and the invoice will not be created.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_advance

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
            ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress
          )
        )
      end
      attr_reader :counterparty_billing_address

      sig do
        params(
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress::OrHash
            )
        ).void
      end
      attr_writer :counterparty_billing_address

      # The counterparty's shipping address where physical goods should be delivered.
      sig do
        returns(
          T.nilable(
            ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress
          )
        )
      end
      attr_reader :counterparty_shipping_address

      sig do
        params(
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress::OrHash
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

      # When payment_method is automatic, the fallback payment method to use when an
      # automatic payment fails. One of `manual` or `ui`.
      sig { returns(T.nilable(String)) }
      attr_accessor :fallback_payment_method

      # An array of invoice line items. The API supports a maximum of 50 invoice line
      # items per invoice. If a greater number of invoice line items is required, please
      # contact support.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::InvoiceCreateParams::InvoiceLineItem]
          )
        )
      end
      attr_accessor :invoice_line_items

      # The invoice issuer's business address.
      sig do
        returns(T.nilable(ModernTreasury::InvoiceCreateParams::InvoicerAddress))
      end
      attr_reader :invoicer_address

      sig do
        params(
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::InvoicerAddress::OrHash
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
            ModernTreasury::InvoiceCreateParams::PaymentMethod::OrSymbol
          )
        )
      end
      attr_reader :payment_method

      sig do
        params(
          payment_method:
            ModernTreasury::InvoiceCreateParams::PaymentMethod::OrSymbol
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

      # The ID of the virtual account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          counterparty_id: String,
          due_date: Time,
          originating_account_id: String,
          auto_advance: T.nilable(T::Boolean),
          contact_details: T::Array[ModernTreasury::ContactDetail::OrHash],
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress::OrHash
            ),
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress::OrHash
            ),
          currency: ModernTreasury::Currency::OrSymbol,
          description: String,
          fallback_payment_method: T.nilable(String),
          invoice_line_items:
            T.nilable(
              T::Array[
                ModernTreasury::InvoiceCreateParams::InvoiceLineItem::OrHash
              ]
            ),
          invoicer_address:
            T.nilable(
              ModernTreasury::InvoiceCreateParams::InvoicerAddress::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          payment_effective_date: Date,
          payment_method:
            ModernTreasury::InvoiceCreateParams::PaymentMethod::OrSymbol,
          payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
          receiving_account_id: String,
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          virtual_account_id: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the counterparty receiving the invoice.
        counterparty_id:,
        # A future date by when the invoice needs to be paid.
        due_date:,
        # The ID of the internal account the invoice should be paid to.
        originating_account_id:,
        # When true, the invoice will progress to unpaid automatically and cannot be
        # edited after entering that state. If the invoice fails to progress to unpaid,
        # the errors will be returned and the invoice will not be created.
        auto_advance: nil,
        # The invoicer's contact details displayed at the top of the invoice.
        contact_details: nil,
        # The counterparty's billing address.
        counterparty_billing_address: nil,
        # The counterparty's shipping address where physical goods should be delivered.
        counterparty_shipping_address: nil,
        # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
        currency: nil,
        # A free-form description of the invoice.
        description: nil,
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
        # The ID of the virtual account the invoice should be paid to.
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            counterparty_id: String,
            due_date: Time,
            originating_account_id: String,
            auto_advance: T.nilable(T::Boolean),
            contact_details: T::Array[ModernTreasury::ContactDetail],
            counterparty_billing_address:
              T.nilable(
                ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress
              ),
            counterparty_shipping_address:
              T.nilable(
                ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress
              ),
            currency: ModernTreasury::Currency::OrSymbol,
            description: String,
            fallback_payment_method: T.nilable(String),
            invoice_line_items:
              T.nilable(
                T::Array[ModernTreasury::InvoiceCreateParams::InvoiceLineItem]
              ),
            invoicer_address:
              T.nilable(ModernTreasury::InvoiceCreateParams::InvoicerAddress),
            metadata: T.nilable(T::Hash[Symbol, String]),
            notification_email_addresses: T.nilable(T::Array[String]),
            notifications_enabled: T::Boolean,
            payment_effective_date: Date,
            payment_method:
              ModernTreasury::InvoiceCreateParams::PaymentMethod::OrSymbol,
            payment_type: ModernTreasury::PaymentOrderType::OrSymbol,
            receiving_account_id: String,
            recipient_email: T.nilable(String),
            recipient_name: T.nilable(String),
            remind_after_overdue_days: T.nilable(T::Array[Integer]),
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
              ModernTreasury::InvoiceCreateParams::CounterpartyBillingAddress,
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
              ModernTreasury::InvoiceCreateParams::CounterpartyShippingAddress,
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

      class InvoiceLineItem < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InvoiceCreateParams::InvoiceLineItem,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The name of the line item, typically a product or SKU name.
        sig { returns(String) }
        attr_accessor :name

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit.
        sig { returns(Integer) }
        attr_accessor :unit_amount

        # An optional free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Either `debit` or `credit`. `debit` indicates that a client owes the business
        # money and increases the invoice's `total_amount` due. `credit` has the opposite
        # intention and effect.
        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # The number of units of a product or service that this line item is for. Must be
        # a whole number. Defaults to 1 if not provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        # The cost per unit of the product or service that this line item is for,
        # specified in the invoice currency's smallest unit. Accepts decimal strings with
        # up to 12 decimals
        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal

        sig { params(unit_amount_decimal: String).void }
        attr_writer :unit_amount_decimal

        sig do
          params(
            name: String,
            unit_amount: Integer,
            description: String,
            direction: String,
            metadata: T::Hash[Symbol, String],
            quantity: Integer,
            unit_amount_decimal: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the line item, typically a product or SKU name.
          name:,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit.
          unit_amount:,
          # An optional free-form description of the line item.
          description: nil,
          # Either `debit` or `credit`. `debit` indicates that a client owes the business
          # money and increases the invoice's `total_amount` due. `credit` has the opposite
          # intention and effect.
          direction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          # The number of units of a product or service that this line item is for. Must be
          # a whole number. Defaults to 1 if not provided.
          quantity: nil,
          # The cost per unit of the product or service that this line item is for,
          # specified in the invoice currency's smallest unit. Accepts decimal strings with
          # up to 12 decimals
          unit_amount_decimal: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              unit_amount: Integer,
              description: String,
              direction: String,
              metadata: T::Hash[Symbol, String],
              quantity: Integer,
              unit_amount_decimal: String
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
              ModernTreasury::InvoiceCreateParams::InvoicerAddress,
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
            T.all(Symbol, ModernTreasury::InvoiceCreateParams::PaymentMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UI =
          T.let(
            :ui,
            ModernTreasury::InvoiceCreateParams::PaymentMethod::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            ModernTreasury::InvoiceCreateParams::PaymentMethod::TaggedSymbol
          )
        AUTOMATIC =
          T.let(
            :automatic,
            ModernTreasury::InvoiceCreateParams::PaymentMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::InvoiceCreateParams::PaymentMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
