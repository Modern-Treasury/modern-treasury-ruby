# typed: strong

module ModernTreasury
  module Models
    class PaymentOrderCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # The ID of one of your organization's internal accounts.
      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
      #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
      #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateParams::Accounting)) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderCreateParams::Accounting)
          .returns(ModernTreasury::Models::PaymentOrderCreateParams::Accounting)
      end
      def accounting=(_)
      end

      # The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      def accounting_category_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_category_id=(_)
      end

      # The ID of one of your accounting ledger classes. Note that these will only be
      #   accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      def accounting_ledger_class_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def accounting_ledger_class_id=(_)
      end

      # The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      sig { returns(T.nilable(Symbol)) }
      def charge_bearer
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def charge_bearer=(_)
      end

      # Defaults to the currency of the originating account.
      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # An array of documents to be attached to the payment order. Note that if you
      #   attach documents, the request's content type must be `multipart/form-data`.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document])) }
      def documents
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document])
          .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document])
      end
      def documents=(_)
      end

      # Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(T.nilable(Date)) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      # RFP payments require an expires_at. This value must be past the effective_date.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      # A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      sig { returns(T.nilable(Symbol)) }
      def fallback_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fallback_type=(_)
      end

      # If present, indicates a specific foreign exchange contract number that has been
      #   generated by your financial institution.
      sig { returns(T.nilable(String)) }
      def foreign_exchange_contract
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def foreign_exchange_contract=(_)
      end

      # Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      sig { returns(T.nilable(Symbol)) }
      def foreign_exchange_indicator
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def foreign_exchange_indicator=(_)
      end

      # Specifies a ledger transaction object that will be created with the payment
      #   order. If the ledger transaction cannot be created, then the payment order
      #   creation will fail. The resulting ledger transaction will mirror the status of
      #   the payment order.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction)) }
      def ledger_transaction
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction)
          .returns(ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction)
      end
      def ledger_transaction=(_)
      end

      # Either ledger_transaction or ledger_transaction_id can be provided. Only a
      #   pending ledger transaction can be attached upon payment order creation. Once the
      #   payment order is created, the status of the ledger transaction tracks the
      #   payment order automatically.
      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: String).returns(String) }
      def ledger_transaction_id=(_)
      end

      # An array of line items that must sum up to the amount of the payment order.
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem])) }
      def line_items
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem])
          .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem])
      end
      def line_items=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      sig { returns(T.nilable(T::Boolean)) }
      def nsf_protected
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def nsf_protected=(_)
      end

      # If present, this will replace your default company name on receiver's bank
      #   statement. This field can only be used for ACH payments currently. For ACH, only
      #   the first 16 characters of this string will be used. Any additional characters
      #   will be truncated.
      sig { returns(T.nilable(String)) }
      def originating_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originating_party_name=(_)
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      sig { returns(T.nilable(Symbol)) }
      def priority
      end

      sig { params(_: Symbol).returns(Symbol) }
      def priority=(_)
      end

      # If present, Modern Treasury will not process the payment until after this time.
      #   If `process_after` is past the cutoff for `effective_date`, `process_after` will
      #   take precedence and `effective_date` will automatically update to reflect the
      #   earliest possible sending date after `process_after`. Format is ISO8601
      #   timestamp.
      sig { returns(T.nilable(Time)) }
      def process_after
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def process_after=(_)
      end

      # For `wire`, this is usually the purpose which is transmitted via the
      #   "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
      #   digit CPA Code that will be attached to the payment.
      sig { returns(T.nilable(String)) }
      def purpose
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def purpose=(_)
      end

      # Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount)) }
      def receiving_account
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount)
          .returns(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount)
      end
      def receiving_account=(_)
      end

      # Either `receiving_account` or `receiving_account_id` must be present. When using
      #   `receiving_account_id`, you may pass the id of an external account or an
      #   internal account.
      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
      end

      # For `ach`, this field will be passed through on an addenda record. For `wire`
      #   payments the field will be passed through as the "Originator to Beneficiary
      #   Information", also known as OBI or Fedwire tag 6000.
      sig { returns(T.nilable(String)) }
      def remittance_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remittance_information=(_)
      end

      # Send an email to the counterparty when the payment order is sent to the bank. If
      #   `null`, `send_remittance_advice` on the Counterparty is used.
      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def send_remittance_advice=(_)
      end

      # An optional descriptor which will appear in the receiver's statement. For
      #   `check` payments this field will be used as the memo line. For `ach` the maximum
      #   length is 10 characters. Note that for ACH payments, the name on your bank
      #   account will be included automatically by the bank, so you can use the
      #   characters for other useful information. For `eft` the maximum length is 15
      #   characters.
      sig { returns(T.nilable(String)) }
      def statement_descriptor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_)
      end

      # An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      sig { returns(T.nilable(Symbol)) }
      def subtype
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def subtype=(_)
      end

      # A flag that determines whether a payment order should go through transaction
      #   monitoring.
      sig { returns(T.nilable(T::Boolean)) }
      def transaction_monitoring_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def transaction_monitoring_enabled=(_)
      end

      # Identifier of the ultimate originator of the payment order.
      sig { returns(T.nilable(String)) }
      def ultimate_originating_party_identifier
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_party_identifier=(_)
      end

      # Name of the ultimate originator of the payment order.
      sig { returns(T.nilable(String)) }
      def ultimate_originating_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_party_name=(_)
      end

      # Identifier of the ultimate funds recipient.
      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier=(_)
      end

      # Name of the ultimate funds recipient.
      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_name=(_)
      end

      sig do
        params(
          amount: Integer,
          direction: Symbol,
          originating_account_id: String,
          type: Symbol,
          accounting: ModernTreasury::Models::PaymentOrderCreateParams::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          charge_bearer: T.nilable(Symbol),
          currency: Symbol,
          description: T.nilable(String),
          documents: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document],
          effective_date: Date,
          expires_at: T.nilable(Time),
          fallback_type: Symbol,
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          ledger_transaction: ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction,
          ledger_transaction_id: String,
          line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem],
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount,
          receiving_account_id: String,
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          subtype: T.nilable(Symbol),
          transaction_monitoring_enabled: T::Boolean,
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        direction:,
        originating_account_id:,
        type:,
        accounting: nil,
        accounting_category_id: nil,
        accounting_ledger_class_id: nil,
        charge_bearer: nil,
        currency: nil,
        description: nil,
        documents: nil,
        effective_date: nil,
        expires_at: nil,
        fallback_type: nil,
        foreign_exchange_contract: nil,
        foreign_exchange_indicator: nil,
        ledger_transaction: nil,
        ledger_transaction_id: nil,
        line_items: nil,
        metadata: nil,
        nsf_protected: nil,
        originating_party_name: nil,
        priority: nil,
        process_after: nil,
        purpose: nil,
        receiving_account: nil,
        receiving_account_id: nil,
        remittance_information: nil,
        send_remittance_advice: nil,
        statement_descriptor: nil,
        subtype: nil,
        transaction_monitoring_enabled: nil,
        ultimate_originating_party_identifier: nil,
        ultimate_originating_party_name: nil,
        ultimate_receiving_party_identifier: nil,
        ultimate_receiving_party_name: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              direction: Symbol,
              originating_account_id: String,
              type: Symbol,
              accounting: ModernTreasury::Models::PaymentOrderCreateParams::Accounting,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              charge_bearer: T.nilable(Symbol),
              currency: Symbol,
              description: T.nilable(String),
              documents: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::Document],
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type: Symbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(Symbol),
              ledger_transaction: ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction,
              ledger_transaction_id: String,
              line_items: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_party_name: T.nilable(String),
              priority: Symbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount,
              receiving_account_id: String,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              subtype: T.nilable(Symbol),
              transaction_monitoring_enabled: T::Boolean,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      class Direction < ModernTreasury::Enum
        abstract!

        CREDIT = :credit
        DEBIT = :debit

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Accounting < ModernTreasury::BaseModel
        # The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def account_id=(_)
        end

        # The ID of one of the class objects in your accounting system. Class objects
        #   track segments of your business independent of client or project. Note that
        #   these will only be accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def class_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def class_id=(_)
        end

        sig { params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(account_id: nil, class_id: nil)
        end

        sig { override.returns({account_id: T.nilable(String), class_id: T.nilable(String)}) }
        def to_hash
        end
      end

      # The party that will pay the fees for the payment order. Only applies to wire
      #   payment orders. Can be one of shared, sender, or receiver, which correspond
      #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
      class ChargeBearer < ModernTreasury::Enum
        abstract!

        SHARED = T.let(:shared, T.nilable(Symbol))
        SENDER = T.let(:sender, T.nilable(Symbol))
        RECEIVER = T.let(:receiver, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Document < ModernTreasury::BaseModel
        # The unique identifier for the associated object.
        sig { returns(String) }
        def documentable_id
        end

        sig { params(_: String).returns(String) }
        def documentable_id=(_)
        end

        sig { returns(Symbol) }
        def documentable_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def documentable_type=(_)
        end

        sig { returns(T.any(IO, StringIO)) }
        def file
        end

        sig { params(_: T.any(IO, StringIO)).returns(T.any(IO, StringIO)) }
        def file=(_)
        end

        # A category given to the document, can be `null`.
        sig { returns(T.nilable(String)) }
        def document_type
        end

        sig { params(_: String).returns(String) }
        def document_type=(_)
        end

        sig do
          params(
            documentable_id: String,
            documentable_type: Symbol,
            file: T.any(IO, StringIO),
            document_type: String
          )
            .returns(T.attached_class)
        end
        def self.new(documentable_id:, documentable_type:, file:, document_type: nil)
        end

        sig do
          override
            .returns(
              {
                documentable_id: String,
                documentable_type: Symbol,
                file: T.any(IO, StringIO),
                document_type: String
              }
            )
        end
        def to_hash
        end

        class DocumentableType < ModernTreasury::Enum
          abstract!

          CASES = :cases
          COUNTERPARTIES = :counterparties
          EXPECTED_PAYMENTS = :expected_payments
          EXTERNAL_ACCOUNTS = :external_accounts
          INCOMING_PAYMENT_DETAILS = :incoming_payment_details
          INTERNAL_ACCOUNTS = :internal_accounts
          ORGANIZATIONS = :organizations
          PAPER_ITEMS = :paper_items
          PAYMENT_ORDERS = :payment_orders
          TRANSACTIONS = :transactions
          DECISIONS = :decisions
          CONNECTIONS = :connections

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      # A payment type to fallback to if the original type is not valid for the
      #   receiving account. Currently, this only supports falling back from RTP to ACH
      #   (type=rtp and fallback_type=ach)
      class FallbackType < ModernTreasury::Enum
        abstract!

        ACH = :ach

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      class ForeignExchangeIndicator < ModernTreasury::Enum
        abstract!

        FIXED_TO_VARIABLE = T.let(:fixed_to_variable, T.nilable(Symbol))
        VARIABLE_TO_FIXED = T.let(:variable_to_fixed, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class LedgerTransaction < ModernTreasury::BaseModel
        # An array of ledger entry objects.
        sig { returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction::LedgerEntry]) }
        def ledger_entries
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction::LedgerEntry])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction::LedgerEntry])
        end
        def ledger_entries=(_)
        end

        # An optional description for internal use.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The timestamp (ISO8601 format) at which the ledger transaction happened for
        #   reporting purposes.
        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        # The date (YYYY-MM-DD) on which the ledger transaction happened for reporting
        #   purposes.
        sig { returns(T.nilable(Date)) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        # A unique string to represent the ledger transaction. Only one pending or posted
        #   ledger transaction may have this ID in the ledger.
        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: String).returns(String) }
        def external_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the id will be populated here, otherwise null.
        sig { returns(T.nilable(String)) }
        def ledgerable_id
        end

        sig { params(_: String).returns(String) }
        def ledgerable_id=(_)
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        #   reversal.
        sig { returns(T.nilable(Symbol)) }
        def ledgerable_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def ledgerable_type=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # To post a ledger transaction at creation, use `posted`.
        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # Specifies a ledger transaction object that will be created with the payment
        #   order. If the ledger transaction cannot be created, then the payment order
        #   creation will fail. The resulting ledger transaction will mirror the status of
        #   the payment order.
        sig do
          params(
            ledger_entries: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction::LedgerEntry],
            description: T.nilable(String),
            effective_at: Time,
            effective_date: Date,
            external_id: String,
            ledgerable_id: String,
            ledgerable_type: Symbol,
            metadata: T::Hash[Symbol, String],
            status: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          ledger_entries:,
          description: nil,
          effective_at: nil,
          effective_date: nil,
          external_id: nil,
          ledgerable_id: nil,
          ledgerable_type: nil,
          metadata: nil,
          status: nil
        )
        end

        sig do
          override
            .returns(
              {
                ledger_entries: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::LedgerTransaction::LedgerEntry],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: Symbol,
                metadata: T::Hash[Symbol, String],
                status: Symbol
              }
            )
        end
        def to_hash
        end

        class LedgerEntry < ModernTreasury::BaseModel
          # Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000. Can be any integer up to 36 digits.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          # The ledger account that this ledger entry is associated with.
          sig { returns(String) }
          def ledger_account_id
          end

          sig { params(_: String).returns(String) }
          def ledger_account_id=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s available balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def available_balance_amount=(_)
          end

          # Lock version of the ledger account. This can be passed when creating a ledger
          #   transaction to only succeed if no ledger transactions have posted since the
          #   given version. See our post about Designing the Ledgers API with Optimistic
          #   Locking for more details.
          sig { returns(T.nilable(Integer)) }
          def lock_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lock_version=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s pending balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def pending_balance_amount=(_)
          end

          # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
          #   account’s posted balance. If any of these conditions would be false after the
          #   transaction is created, the entire call will fail with error code 422.
          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def posted_balance_amount=(_)
          end

          # If true, response will include the balance of the associated ledger account for
          #   the entry.
          sig { returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def show_resulting_ledger_account_balances=(_)
          end

          sig do
            params(
              amount: Integer,
              direction: Symbol,
              ledger_account_id: String,
              available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              lock_version: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
              show_resulting_ledger_account_balances: T.nilable(T::Boolean)
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            direction:,
            ledger_account_id:,
            available_balance_amount: nil,
            lock_version: nil,
            metadata: nil,
            pending_balance_amount: nil,
            posted_balance_amount: nil,
            show_resulting_ledger_account_balances: nil
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  direction: Symbol,
                  ledger_account_id: String,
                  available_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                  lock_version: T.nilable(Integer),
                  metadata: T::Hash[Symbol, String],
                  pending_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                  posted_balance_amount: T.nilable(T::Hash[Symbol, Integer]),
                  show_resulting_ledger_account_balances: T.nilable(T::Boolean)
                }
              )
          end
          def to_hash
          end
        end

        # If the ledger transaction can be reconciled to another object in Modern
        #   Treasury, the type will be populated here, otherwise null. This can be one of
        #   payment_order, incoming_payment_detail, expected_payment, return, paper_item, or
        #   reversal.
        class LedgerableType < ModernTreasury::Enum
          abstract!

          EXPECTED_PAYMENT = :expected_payment
          INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
          PAPER_ITEM = :paper_item
          PAYMENT_ORDER = :payment_order
          RETURN = :return
          REVERSAL = :reversal

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        # To post a ledger transaction at creation, use `posted`.
        class Status < ModernTreasury::Enum
          abstract!

          ARCHIVED = :archived
          PENDING = :pending
          POSTED = :posted

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class LineItem < ModernTreasury::BaseModel
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        #   as 1000.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The ID of one of your accounting categories. Note that these will only be
        #   accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        def accounting_category_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def accounting_category_id=(_)
        end

        # A free-form description of the line item.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, accounting_category_id: nil, description: nil, metadata: nil)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                accounting_category_id: T.nilable(String),
                description: T.nilable(String),
                metadata: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end
      end

      # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
      #   same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
      #   an overnight check rather than standard mail.
      class Priority < ModernTreasury::Enum
        abstract!

        HIGH = :high
        NORMAL = :normal

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ReceivingAccount < ModernTreasury::BaseModel
        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail])
          )
        end
        def account_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail])
        end
        def account_details=(_)
        end

        # Can be `checking`, `savings` or `other`.
        sig { returns(T.nilable(Symbol)) }
        def account_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def account_type=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::ContactDetail])
          )
        end
        def contact_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::ContactDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::ContactDetail])
        end
        def contact_details=(_)
        end

        # Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::LedgerAccount)) }
        def ledger_account
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::LedgerAccount)
            .returns(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::LedgerAccount)
        end
        def ledger_account=(_)
        end

        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        # Required if receiving wire payments.
        sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyAddress)) }
        def party_address
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyAddress)
            .returns(ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyAddress)
        end
        def party_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def party_identifier
        end

        sig { params(_: String).returns(String) }
        def party_identifier=(_)
        end

        # If this value isn't provided, it will be inherited from the counterparty's name.
        sig { returns(T.nilable(String)) }
        def party_name
        end

        sig { params(_: String).returns(String) }
        def party_name=(_)
        end

        # Either `individual` or `business`.
        sig { returns(T.nilable(Symbol)) }
        def party_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def party_type=(_)
        end

        # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        sig { returns(T.nilable(String)) }
        def plaid_processor_token
        end

        sig { params(_: String).returns(String) }
        def plaid_processor_token=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail])
          )
        end
        def routing_details
        end

        sig do
          params(_: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail])
            .returns(T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail])
        end
        def routing_details=(_)
        end

        # Either `receiving_account` or `receiving_account_id` must be present. When using
        #   `receiving_account_id`, you may pass the id of an external account or an
        #   internal account.
        sig do
          params(
            account_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail],
            account_type: Symbol,
            contact_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::ContactDetail],
            ledger_account: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::LedgerAccount,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyAddress,
            party_identifier: String,
            party_name: String,
            party_type: T.nilable(Symbol),
            plaid_processor_token: String,
            routing_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail]
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_details: nil,
          account_type: nil,
          contact_details: nil,
          ledger_account: nil,
          metadata: nil,
          name: nil,
          party_address: nil,
          party_identifier: nil,
          party_name: nil,
          party_type: nil,
          plaid_processor_token: nil,
          routing_details: nil
        )
        end

        sig do
          override
            .returns(
              {
                account_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::AccountDetail],
                account_type: Symbol,
                contact_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::ContactDetail],
                ledger_account: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::LedgerAccount,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::PartyAddress,
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(Symbol),
                plaid_processor_token: String,
                routing_details: T::Array[ModernTreasury::Models::PaymentOrderCreateParams::ReceivingAccount::RoutingDetail]
              }
            )
        end
        def to_hash
        end

        class AccountDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def account_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def account_number_type=(_)
          end

          sig { params(account_number: String, account_number_type: Symbol).returns(T.attached_class) }
          def self.new(account_number:, account_number_type: nil)
          end

          sig { override.returns({account_number: String, account_number_type: Symbol}) }
          def to_hash
          end

          class AccountNumberType < ModernTreasury::Enum
            abstract!

            AU_NUMBER = :au_number
            CLABE = :clabe
            HK_NUMBER = :hk_number
            IBAN = :iban
            ID_NUMBER = :id_number
            NZ_NUMBER = :nz_number
            OTHER = :other
            PAN = :pan
            SG_NUMBER = :sg_number
            WALLET_ADDRESS = :wallet_address

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class ContactDetail < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def contact_identifier
          end

          sig { params(_: String).returns(String) }
          def contact_identifier=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def contact_identifier_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def contact_identifier_type=(_)
          end

          sig do
            params(contact_identifier: String, contact_identifier_type: Symbol).returns(T.attached_class)
          end
          def self.new(contact_identifier: nil, contact_identifier_type: nil)
          end

          sig { override.returns({contact_identifier: String, contact_identifier_type: Symbol}) }
          def to_hash
          end

          class ContactIdentifierType < ModernTreasury::Enum
            abstract!

            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class LedgerAccount < ModernTreasury::BaseModel
          # The currency of the ledger account.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # The id of the ledger that this account belongs to.
          sig { returns(String) }
          def ledger_id
          end

          sig { params(_: String).returns(String) }
          def ledger_id=(_)
          end

          # The name of the ledger account.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The normal balance of the ledger account.
          sig { returns(Symbol) }
          def normal_balance
          end

          sig { params(_: Symbol).returns(Symbol) }
          def normal_balance=(_)
          end

          # The currency exponent of the ledger account.
          sig { returns(T.nilable(Integer)) }
          def currency_exponent
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def currency_exponent=(_)
          end

          # The description of the ledger account.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # The array of ledger account category ids that this ledger account should be a
          #   child of.
          sig { returns(T.nilable(T::Array[String])) }
          def ledger_account_category_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def ledger_account_category_ids=(_)
          end

          # If the ledger account links to another object in Modern Treasury, the id will be
          #   populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          def ledgerable_id
          end

          sig { params(_: String).returns(String) }
          def ledgerable_id=(_)
          end

          # If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          sig { returns(T.nilable(Symbol)) }
          def ledgerable_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def ledgerable_type=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # Specifies a ledger account object that will be created with the external
          #   account. The resulting ledger account is linked to the external account for
          #   auto-ledgering Payment objects. See
          #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          #   for more details.
          sig do
            params(
              currency: String,
              ledger_id: String,
              name: String,
              normal_balance: Symbol,
              currency_exponent: T.nilable(Integer),
              description: T.nilable(String),
              ledger_account_category_ids: T::Array[String],
              ledgerable_id: String,
              ledgerable_type: Symbol,
              metadata: T::Hash[Symbol, String]
            )
              .returns(T.attached_class)
          end
          def self.new(
            currency:,
            ledger_id:,
            name:,
            normal_balance:,
            currency_exponent: nil,
            description: nil,
            ledger_account_category_ids: nil,
            ledgerable_id: nil,
            ledgerable_type: nil,
            metadata: nil
          )
          end

          sig do
            override
              .returns(
                {
                  currency: String,
                  ledger_id: String,
                  name: String,
                  normal_balance: Symbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: Symbol,
                  metadata: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash
          end

          # If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          class LedgerableType < ModernTreasury::Enum
            abstract!

            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class PartyAddress < ModernTreasury::BaseModel
          # Country code conforms to [ISO 3166-1 alpha-2]
          sig { returns(T.nilable(String)) }
          def country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # Locality or City.
          sig { returns(T.nilable(String)) }
          def locality
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def locality=(_)
          end

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # Region or State.
          sig { returns(T.nilable(String)) }
          def region
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def region=(_)
          end

          # Required if receiving wire payments.
          sig do
            params(
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              locality: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil)
          end

          sig do
            override
              .returns(
                {
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  locality: T.nilable(String),
                  postal_code: T.nilable(String),
                  region: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        # Either `individual` or `business`.
        class PartyType < ModernTreasury::Enum
          abstract!

          BUSINESS = T.let(:business, T.nilable(Symbol))
          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class RoutingDetail < ModernTreasury::BaseModel
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(Symbol) }
          def routing_number_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def routing_number_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def payment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_type=(_)
          end

          sig do
            params(
              routing_number: String,
              routing_number_type: Symbol,
              payment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(routing_number:, routing_number_type:, payment_type: nil)
          end

          sig do
            override.returns({routing_number: String, routing_number_type: Symbol, payment_type: Symbol})
          end
          def to_hash
          end

          class RoutingNumberType < ModernTreasury::Enum
            abstract!

            ABA = :aba
            AU_BSB = :au_bsb
            BR_CODIGO = :br_codigo
            CA_CPA = :ca_cpa
            CHIPS = :chips
            CNAPS = :cnaps
            DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
            GB_SORT_CODE = :gb_sort_code
            HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
            HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
            ID_SKNBI_CODE = :id_sknbi_code
            IN_IFSC = :in_ifsc
            JP_ZENGIN_CODE = :jp_zengin_code
            MY_BRANCH_CODE = :my_branch_code
            MX_BANK_IDENTIFIER = :mx_bank_identifier
            NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
            PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
            SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
            SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
            SWIFT = :swift
            ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class PaymentType < ModernTreasury::Enum
            abstract!

            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
            PROVXCHANGE = :provxchange
            RO_SENT = :ro_sent
            RTP = :rtp
            SE_BANKGIROT = :se_bankgirot
            SEN = :sen
            SEPA = :sepa
            SG_GIRO = :sg_giro
            SIC = :sic
            SIGNET = :signet
            SKNBI = :sknbi
            WIRE = :wire
            ZENGIN = :zengin

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
