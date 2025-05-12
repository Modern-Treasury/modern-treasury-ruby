# typed: strong

module ModernTreasury
  module Models
    class Invoice < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Invoice, ModernTreasury::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD
      # would be represented as 1000.
      sig { returns(Integer) }
      attr_accessor :amount_paid

      # Amount remaining due on the invoice in specified currency's smallest unit, e.g.,
      # $10 USD would be represented as 1000.
      sig { returns(Integer) }
      attr_accessor :amount_remaining

      # The invoicer's contact details displayed at the top of the invoice.
      sig { returns(T::Array[ModernTreasury::Invoice::ContactDetail]) }
      attr_accessor :contact_details

      # The counterparty's billing address.
      sig do
        returns(T.nilable(ModernTreasury::Invoice::CounterpartyBillingAddress))
      end
      attr_reader :counterparty_billing_address

      sig do
        params(
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::Invoice::CounterpartyBillingAddress::OrHash
            )
        ).void
      end
      attr_writer :counterparty_billing_address

      # The ID of the counterparty receiving the invoice.
      sig { returns(String) }
      attr_accessor :counterparty_id

      # The counterparty's shipping address where physical goods should be delivered.
      sig do
        returns(T.nilable(ModernTreasury::Invoice::CounterpartyShippingAddress))
      end
      attr_reader :counterparty_shipping_address

      sig do
        params(
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::Invoice::CounterpartyShippingAddress::OrHash
            )
        ).void
      end
      attr_writer :counterparty_shipping_address

      sig { returns(Time) }
      attr_accessor :created_at

      # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
      sig { returns(ModernTreasury::Currency::TaggedSymbol) }
      attr_accessor :currency

      # A free-form description of the invoice.
      sig { returns(String) }
      attr_accessor :description

      # A future date by when the invoice needs to be paid.
      sig { returns(Time) }
      attr_accessor :due_date

      # The expected payments created for an unpaid invoice.
      sig { returns(T::Array[ModernTreasury::ExpectedPayment]) }
      attr_accessor :expected_payments

      # When payment_method is automatic, the fallback payment method to use when an
      # automatic payment fails. One of `manual` or `ui`.
      sig { returns(T.nilable(String)) }
      attr_accessor :fallback_payment_method

      # The URL of the hosted web UI where the invoice can be viewed.
      sig { returns(String) }
      attr_accessor :hosted_url

      # The invoice issuer's business address.
      sig { returns(T.nilable(ModernTreasury::Invoice::InvoicerAddress)) }
      attr_reader :invoicer_address

      sig do
        params(
          invoicer_address:
            T.nilable(ModernTreasury::Invoice::InvoicerAddress::OrHash)
        ).void
      end
      attr_writer :invoicer_address

      # The ledger account settlement object linked to the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :ledger_account_settlement_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

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
      sig { returns(T::Boolean) }
      attr_accessor :notifications_enabled

      # A unique record number assigned to each invoice that is issued.
      sig { returns(String) }
      attr_accessor :number

      sig { returns(String) }
      attr_accessor :object

      # The ID of the internal account the invoice should be paid to.
      sig { returns(String) }
      attr_accessor :originating_account_id

      # Date transactions are to be posted to the participants' account. Defaults to the
      # current business day or the next business day if the current day is a bank
      # holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(T.nilable(Date)) }
      attr_accessor :payment_effective_date

      # When opening an invoice, whether to show the embedded payment UI , automatically
      # debit the recipient, or rely on manual payment from the recipient.
      sig do
        returns(T.nilable(ModernTreasury::Invoice::PaymentMethod::TaggedSymbol))
      end
      attr_accessor :payment_method

      # The payment orders created for paying the invoice through the invoice payment
      # UI.
      sig { returns(T::Array[ModernTreasury::PaymentOrder]) }
      attr_accessor :payment_orders

      # One of `ach` or `eft`.
      sig do
        returns(T.nilable(ModernTreasury::Invoice::PaymentType::TaggedSymbol))
      end
      attr_accessor :payment_type

      # The URL where the invoice PDF can be downloaded.
      sig { returns(T.nilable(String)) }
      attr_accessor :pdf_url

      # The receiving account ID. Can be an `internal_account`.
      sig { returns(T.nilable(String)) }
      attr_accessor :receiving_account_id

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

      # The status of the invoice.
      sig { returns(ModernTreasury::Invoice::Status::TaggedSymbol) }
      attr_accessor :status

      # Total amount due in specified currency's smallest unit, e.g., $10 USD would be
      # represented as 1000.
      sig { returns(Integer) }
      attr_accessor :total_amount

      # IDs of transaction line items associated with an invoice.
      sig { returns(T::Array[String]) }
      attr_accessor :transaction_line_item_ids

      sig { returns(Time) }
      attr_accessor :updated_at

      # The ID of the virtual account the invoice should be paid to.
      sig { returns(T.nilable(String)) }
      attr_accessor :virtual_account_id

      sig do
        params(
          id: String,
          amount_paid: Integer,
          amount_remaining: Integer,
          contact_details:
            T::Array[ModernTreasury::Invoice::ContactDetail::OrHash],
          counterparty_billing_address:
            T.nilable(
              ModernTreasury::Invoice::CounterpartyBillingAddress::OrHash
            ),
          counterparty_id: String,
          counterparty_shipping_address:
            T.nilable(
              ModernTreasury::Invoice::CounterpartyShippingAddress::OrHash
            ),
          created_at: Time,
          currency: ModernTreasury::Currency::OrSymbol,
          description: String,
          due_date: Time,
          expected_payments: T::Array[ModernTreasury::ExpectedPayment::OrHash],
          fallback_payment_method: T.nilable(String),
          hosted_url: String,
          invoicer_address:
            T.nilable(ModernTreasury::Invoice::InvoicerAddress::OrHash),
          ledger_account_settlement_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          notification_email_addresses: T.nilable(T::Array[String]),
          notifications_enabled: T::Boolean,
          number: String,
          object: String,
          originating_account_id: String,
          payment_effective_date: T.nilable(Date),
          payment_method:
            T.nilable(ModernTreasury::Invoice::PaymentMethod::OrSymbol),
          payment_orders: T::Array[ModernTreasury::PaymentOrder::OrHash],
          payment_type:
            T.nilable(ModernTreasury::Invoice::PaymentType::OrSymbol),
          pdf_url: T.nilable(String),
          receiving_account_id: T.nilable(String),
          recipient_email: T.nilable(String),
          recipient_name: T.nilable(String),
          remind_after_overdue_days: T.nilable(T::Array[Integer]),
          status: ModernTreasury::Invoice::Status::OrSymbol,
          total_amount: Integer,
          transaction_line_item_ids: T::Array[String],
          updated_at: Time,
          virtual_account_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Amount paid on the invoice in specified currency's smallest unit, e.g., $10 USD
        # would be represented as 1000.
        amount_paid:,
        # Amount remaining due on the invoice in specified currency's smallest unit, e.g.,
        # $10 USD would be represented as 1000.
        amount_remaining:,
        # The invoicer's contact details displayed at the top of the invoice.
        contact_details:,
        # The counterparty's billing address.
        counterparty_billing_address:,
        # The ID of the counterparty receiving the invoice.
        counterparty_id:,
        # The counterparty's shipping address where physical goods should be delivered.
        counterparty_shipping_address:,
        created_at:,
        # Currency that the invoice is denominated in. Defaults to `USD` if not provided.
        currency:,
        # A free-form description of the invoice.
        description:,
        # A future date by when the invoice needs to be paid.
        due_date:,
        # The expected payments created for an unpaid invoice.
        expected_payments:,
        # When payment_method is automatic, the fallback payment method to use when an
        # automatic payment fails. One of `manual` or `ui`.
        fallback_payment_method:,
        # The URL of the hosted web UI where the invoice can be viewed.
        hosted_url:,
        # The invoice issuer's business address.
        invoicer_address:,
        # The ledger account settlement object linked to the invoice.
        ledger_account_settlement_id:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata:,
        # Emails in addition to the counterparty email to send invoice status
        # notifications to. At least one email is required if notifications are enabled
        # and the counterparty doesn't have an email.
        notification_email_addresses:,
        # If true, the invoice will send email notifications to the invoice recipients
        # about invoice status changes.
        notifications_enabled:,
        # A unique record number assigned to each invoice that is issued.
        number:,
        object:,
        # The ID of the internal account the invoice should be paid to.
        originating_account_id:,
        # Date transactions are to be posted to the participants' account. Defaults to the
        # current business day or the next business day if the current day is a bank
        # holiday or weekend. Format: yyyy-mm-dd.
        payment_effective_date:,
        # When opening an invoice, whether to show the embedded payment UI , automatically
        # debit the recipient, or rely on manual payment from the recipient.
        payment_method:,
        # The payment orders created for paying the invoice through the invoice payment
        # UI.
        payment_orders:,
        # One of `ach` or `eft`.
        payment_type:,
        # The URL where the invoice PDF can be downloaded.
        pdf_url:,
        # The receiving account ID. Can be an `internal_account`.
        receiving_account_id:,
        # The email of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_email:,
        # The name of the recipient of the invoice. Leaving this value as null will
        # fallback to using the counterparty's name.
        recipient_name:,
        # Number of days after due date when overdue reminder emails will be sent out to
        # invoice recipients.
        remind_after_overdue_days:,
        # The status of the invoice.
        status:,
        # Total amount due in specified currency's smallest unit, e.g., $10 USD would be
        # represented as 1000.
        total_amount:,
        # IDs of transaction line items associated with an invoice.
        transaction_line_item_ids:,
        updated_at:,
        # The ID of the virtual account the invoice should be paid to.
        virtual_account_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_paid: Integer,
            amount_remaining: Integer,
            contact_details: T::Array[ModernTreasury::Invoice::ContactDetail],
            counterparty_billing_address:
              T.nilable(ModernTreasury::Invoice::CounterpartyBillingAddress),
            counterparty_id: String,
            counterparty_shipping_address:
              T.nilable(ModernTreasury::Invoice::CounterpartyShippingAddress),
            created_at: Time,
            currency: ModernTreasury::Currency::TaggedSymbol,
            description: String,
            due_date: Time,
            expected_payments: T::Array[ModernTreasury::ExpectedPayment],
            fallback_payment_method: T.nilable(String),
            hosted_url: String,
            invoicer_address:
              T.nilable(ModernTreasury::Invoice::InvoicerAddress),
            ledger_account_settlement_id: T.nilable(String),
            live_mode: T::Boolean,
            metadata: T.nilable(T::Hash[Symbol, String]),
            notification_email_addresses: T.nilable(T::Array[String]),
            notifications_enabled: T::Boolean,
            number: String,
            object: String,
            originating_account_id: String,
            payment_effective_date: T.nilable(Date),
            payment_method:
              T.nilable(ModernTreasury::Invoice::PaymentMethod::TaggedSymbol),
            payment_orders: T::Array[ModernTreasury::PaymentOrder],
            payment_type:
              T.nilable(ModernTreasury::Invoice::PaymentType::TaggedSymbol),
            pdf_url: T.nilable(String),
            receiving_account_id: T.nilable(String),
            recipient_email: T.nilable(String),
            recipient_name: T.nilable(String),
            remind_after_overdue_days: T.nilable(T::Array[Integer]),
            status: ModernTreasury::Invoice::Status::TaggedSymbol,
            total_amount: Integer,
            transaction_line_item_ids: T::Array[String],
            updated_at: Time,
            virtual_account_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class ContactDetail < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Invoice::ContactDetail,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :contact_identifier

        sig do
          returns(
            ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol
          )
        end
        attr_accessor :contact_identifier_type

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :discarded_at

        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        sig { returns(T::Boolean) }
        attr_accessor :live_mode

        sig { returns(String) }
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            contact_identifier: String,
            contact_identifier_type:
              ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::OrSymbol,
            created_at: Time,
            discarded_at: T.nilable(Time),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          contact_identifier:,
          contact_identifier_type:,
          created_at:,
          discarded_at:,
          # This field will be true if this object exists in the live environment or false
          # if it exists in the test environment.
          live_mode:,
          object:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              contact_identifier: String,
              contact_identifier_type:
                ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module ContactIdentifierType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::Invoice::ContactDetail::ContactIdentifierType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::Invoice::ContactDetail::ContactIdentifierType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class CounterpartyBillingAddress < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Invoice::CounterpartyBillingAddress,
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
              ModernTreasury::Invoice::CounterpartyShippingAddress,
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
              ModernTreasury::Invoice::InvoicerAddress,
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

      # When opening an invoice, whether to show the embedded payment UI , automatically
      # debit the recipient, or rely on manual payment from the recipient.
      module PaymentMethod
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Invoice::PaymentMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UI = T.let(:ui, ModernTreasury::Invoice::PaymentMethod::TaggedSymbol)
        MANUAL =
          T.let(:manual, ModernTreasury::Invoice::PaymentMethod::TaggedSymbol)
        AUTOMATIC =
          T.let(
            :automatic,
            ModernTreasury::Invoice::PaymentMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::Invoice::PaymentMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # One of `ach` or `eft`.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Invoice::PaymentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EFT = T.let(:eft, ModernTreasury::Invoice::PaymentType::TaggedSymbol)
        ACH = T.let(:ach, ModernTreasury::Invoice::PaymentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::Invoice::PaymentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The status of the invoice.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Invoice::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, ModernTreasury::Invoice::Status::TaggedSymbol)
        PAID = T.let(:paid, ModernTreasury::Invoice::Status::TaggedSymbol)
        PARTIALLY_PAID =
          T.let(:partially_paid, ModernTreasury::Invoice::Status::TaggedSymbol)
        PAYMENT_PENDING =
          T.let(:payment_pending, ModernTreasury::Invoice::Status::TaggedSymbol)
        UNPAID = T.let(:unpaid, ModernTreasury::Invoice::Status::TaggedSymbol)
        VOIDED = T.let(:voided, ModernTreasury::Invoice::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::Invoice::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
