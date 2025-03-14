# typed: strong

module ModernTreasury
  module Models
    class PaymentOrder < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(ModernTreasury::Models::PaymentOrder::Accounting) }
      def accounting
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::Accounting)
          .returns(ModernTreasury::Models::PaymentOrder::Accounting)
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

      # Value in specified currency's smallest unit. e.g. $10 would be represented as
      #   1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
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

      # Custom key-value pair for usage in compliance rules. Please contact support
      #   before making changes to this field.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def compliance_rule_metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def compliance_rule_metadata=(_)
      end

      # If the payment order is tied to a specific Counterparty, their id will appear,
      #   otherwise `null`.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def counterparty_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Defaults to the currency of the originating account.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # If the payment order's status is `returned`, this will include the return
      #   object's data.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject)) }
      def current_return
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnObject))
          .returns(T.nilable(ModernTreasury::Models::ReturnObject))
      end
      def current_return=(_)
      end

      # The ID of the compliance decision for the payment order, if transaction
      #   monitoring is enabled.
      sig { returns(T.nilable(String)) }
      def decision_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def decision_id=(_)
      end

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
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

      # Date transactions are to be posted to the participants' account. Defaults to the
      #   current business day or the next business day if the current day is a bank
      #   holiday or weekend. Format: yyyy-mm-dd.
      sig { returns(Date) }
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

      # Associated serialized foreign exchange rate information.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate)) }
      def foreign_exchange_rate
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate))
          .returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate))
      end
      def foreign_exchange_rate=(_)
      end

      # The ID of the ledger transaction linked to the payment order.
      sig { returns(T.nilable(String)) }
      def ledger_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ledger_transaction_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A boolean to determine if NSF Protection is enabled for this payment order. Note
      #   that this setting must also be turned on in your organization settings page.
      sig { returns(T::Boolean) }
      def nsf_protected
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def nsf_protected=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      # The ID of one of your organization's internal accounts.
      sig { returns(String) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
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
      sig { returns(Symbol) }
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

      # The receiving account ID. Can be an `external_account` or `internal_account`.
      sig { returns(String) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
      end

      sig { returns(Symbol) }
      def receiving_account_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def receiving_account_type=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber]) }
      def reference_numbers
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber])
          .returns(T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber])
      end
      def reference_numbers=(_)
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

      # The current status of the payment order.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
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

      # The IDs of all the transactions associated to this payment order. Usually, you
      #   will only have a single transaction ID. However, if a payment order initially
      #   results in a Return, but gets redrafted and is later successfully completed, it
      #   can have many transactions.
      sig { returns(T::Array[String]) }
      def transaction_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def transaction_ids=(_)
      end

      # A flag that determines whether a payment order should go through transaction
      #   monitoring.
      sig { returns(T::Boolean) }
      def transaction_monitoring_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def transaction_monitoring_enabled=(_)
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

      # The account to which the originating of this payment should be attributed to.
      #   Can be a `virtual_account` or `internal_account`.
      sig { returns(T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount))) }
      def ultimate_originating_account
      end

      sig do
        params(
          _: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount))
        )
          .returns(T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)))
      end
      def ultimate_originating_account=(_)
      end

      # The ultimate originating account ID. Can be a `virtual_account` or
      #   `internal_account`.
      sig { returns(T.nilable(String)) }
      def ultimate_originating_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_originating_account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ultimate_originating_account_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def ultimate_originating_account_type=(_)
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

      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_identifier=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_receiving_party_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_receiving_party_name=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Additional vendor specific fields for this payment. Data must be represented as
      #   key-value pairs.
      sig { returns(T.nilable(T.anything)) }
      def vendor_attributes
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def vendor_attributes=(_)
      end

      # This field will be populated if a vendor failure occurs. Logic shouldn't be
      #   built on its value as it is free-form.
      sig { returns(T.nilable(String)) }
      def vendor_failure_reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_failure_reason=(_)
      end

      sig do
        params(
          id: String,
          accounting: ModernTreasury::Models::PaymentOrder::Accounting,
          accounting_category_id: T.nilable(String),
          accounting_ledger_class_id: T.nilable(String),
          amount: Integer,
          charge_bearer: T.nilable(Symbol),
          compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          current_return: T.nilable(ModernTreasury::Models::ReturnObject),
          decision_id: T.nilable(String),
          description: T.nilable(String),
          direction: Symbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(Symbol),
          foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          object: String,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority: Symbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account_id: String,
          receiving_account_type: Symbol,
          reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: Symbol,
          subtype: T.nilable(Symbol),
          transaction_ids: T::Array[String],
          transaction_monitoring_enabled: T::Boolean,
          type: Symbol,
          ultimate_originating_account: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)),
          ultimate_originating_account_id: T.nilable(String),
          ultimate_originating_account_type: T.nilable(Symbol),
          ultimate_originating_party_identifier: T.nilable(String),
          ultimate_originating_party_name: T.nilable(String),
          ultimate_receiving_party_identifier: T.nilable(String),
          ultimate_receiving_party_name: T.nilable(String),
          updated_at: Time,
          vendor_attributes: T.nilable(T.anything),
          vendor_failure_reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        accounting:,
        accounting_category_id:,
        accounting_ledger_class_id:,
        amount:,
        charge_bearer:,
        compliance_rule_metadata:,
        counterparty_id:,
        created_at:,
        currency:,
        current_return:,
        decision_id:,
        description:,
        direction:,
        effective_date:,
        expires_at:,
        foreign_exchange_contract:,
        foreign_exchange_indicator:,
        foreign_exchange_rate:,
        ledger_transaction_id:,
        live_mode:,
        metadata:,
        nsf_protected:,
        object:,
        originating_account_id:,
        originating_party_name:,
        priority:,
        process_after:,
        purpose:,
        receiving_account_id:,
        receiving_account_type:,
        reference_numbers:,
        remittance_information:,
        send_remittance_advice:,
        statement_descriptor:,
        status:,
        subtype:,
        transaction_ids:,
        transaction_monitoring_enabled:,
        type:,
        ultimate_originating_account:,
        ultimate_originating_account_id:,
        ultimate_originating_account_type:,
        ultimate_originating_party_identifier:,
        ultimate_originating_party_name:,
        ultimate_receiving_party_identifier:,
        ultimate_receiving_party_name:,
        updated_at:,
        vendor_attributes:,
        vendor_failure_reason:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              accounting: ModernTreasury::Models::PaymentOrder::Accounting,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              amount: Integer,
              charge_bearer: T.nilable(Symbol),
              compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
              counterparty_id: T.nilable(String),
              created_at: Time,
              currency: Symbol,
              current_return: T.nilable(ModernTreasury::Models::ReturnObject),
              decision_id: T.nilable(String),
              description: T.nilable(String),
              direction: Symbol,
              effective_date: Date,
              expires_at: T.nilable(Time),
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(Symbol),
              foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              object: String,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority: Symbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account_id: String,
              receiving_account_type: Symbol,
              reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              status: Symbol,
              subtype: T.nilable(Symbol),
              transaction_ids: T::Array[String],
              transaction_monitoring_enabled: T::Boolean,
              type: Symbol,
              ultimate_originating_account: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)),
              ultimate_originating_account_id: T.nilable(String),
              ultimate_originating_account_type: T.nilable(Symbol),
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String),
              updated_at: Time,
              vendor_attributes: T.nilable(T.anything),
              vendor_failure_reason: T.nilable(String)
            }
          )
      end
      def to_hash
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

      class ForeignExchangeRate < ModernTreasury::BaseModel
        # Amount in the lowest denomination of the `base_currency` to convert, often
        #   called the "sell" amount.
        sig { returns(Integer) }
        def base_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def base_amount=(_)
        end

        # Currency to convert, often called the "sell" currency.
        sig { returns(Symbol) }
        def base_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def base_currency=(_)
        end

        # The exponent component of the rate. The decimal is calculated as `value` / (10 ^
        #   `exponent`).
        sig { returns(Integer) }
        def exponent
        end

        sig { params(_: Integer).returns(Integer) }
        def exponent=(_)
        end

        # A string representation of the rate.
        sig { returns(String) }
        def rate_string
        end

        sig { params(_: String).returns(String) }
        def rate_string=(_)
        end

        # Amount in the lowest denomination of the `target_currency`, often called the
        #   "buy" amount.
        sig { returns(Integer) }
        def target_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def target_amount=(_)
        end

        # Currency to convert the `base_currency` to, often called the "buy" currency.
        sig { returns(Symbol) }
        def target_currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def target_currency=(_)
        end

        # The whole number component of the rate. The decimal is calculated as `value` /
        #   (10 ^ `exponent`).
        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

        # Associated serialized foreign exchange rate information.
        sig do
          params(
            base_amount: Integer,
            base_currency: Symbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: Symbol,
            value: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(base_amount:, base_currency:, exponent:, rate_string:, target_amount:, target_currency:, value:)
        end

        sig do
          override
            .returns(
              {
                base_amount: Integer,
                base_currency: Symbol,
                exponent: Integer,
                rate_string: String,
                target_amount: Integer,
                target_currency: Symbol,
                value: Integer
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

      class ReceivingAccountType < ModernTreasury::Enum
        abstract!

        INTERNAL_ACCOUNT = :internal_account
        EXTERNAL_ACCOUNT = :external_account

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ReferenceNumber < ModernTreasury::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # This field will be true if this object exists in the live environment or false
        #   if it exists in the test environment.
        sig { returns(T::Boolean) }
        def live_mode
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def live_mode=(_)
        end

        sig { returns(String) }
        def object
        end

        sig { params(_: String).returns(String) }
        def object=(_)
        end

        # The vendor reference number.
        sig { returns(String) }
        def reference_number
        end

        sig { params(_: String).returns(String) }
        def reference_number=(_)
        end

        # The type of the reference number. Referring to the vendor payment id.
        sig { returns(Symbol) }
        def reference_number_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reference_number_type=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        sig do
          params(
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            reference_number: String,
            reference_number_type: Symbol,
            updated_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(id:, created_at:, live_mode:, object:, reference_number:, reference_number_type:, updated_at:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                live_mode: T::Boolean,
                object: String,
                reference_number: String,
                reference_number_type: Symbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # The type of the reference number. Referring to the vendor payment id.
        class ReferenceNumberType < ModernTreasury::Enum
          abstract!

          ACH_ORIGINAL_TRACE_NUMBER = :ach_original_trace_number
          ACH_TRACE_NUMBER = :ach_trace_number
          BANKPROV_PAYMENT_ACTIVITY_DATE = :bankprov_payment_activity_date
          BANKPROV_PAYMENT_ID = :bankprov_payment_id
          BNK_DEV_PRENOTIFICATION_ID = :bnk_dev_prenotification_id
          BNK_DEV_TRANSFER_ID = :bnk_dev_transfer_id
          BOFA_END_TO_END_ID = :bofa_end_to_end_id
          BOFA_TRANSACTION_ID = :bofa_transaction_id
          CHECK_NUMBER = :check_number
          CITIBANK_REFERENCE_NUMBER = :citibank_reference_number
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER = :citibank_worldlink_clearing_system_reference_number
          COLUMN_FX_QUOTE_ID = :column_fx_quote_id
          COLUMN_REVERSAL_PAIR_TRANSFER_ID = :column_reversal_pair_transfer_id
          COLUMN_TRANSFER_ID = :column_transfer_id
          CROSS_RIVER_PAYMENT_ID = :cross_river_payment_id
          CROSS_RIVER_SERVICE_MESSAGE = :cross_river_service_message
          CROSS_RIVER_TRANSACTION_ID = :cross_river_transaction_id
          CURRENCYCLOUD_CONVERSION_ID = :currencycloud_conversion_id
          CURRENCYCLOUD_PAYMENT_ID = :currencycloud_payment_id
          DC_BANK_TRANSACTION_ID = :dc_bank_transaction_id
          DWOLLA_TRANSACTION_ID = :dwolla_transaction_id
          EFT_TRACE_NUMBER = :eft_trace_number
          EVOLVE_TRANSACTION_ID = :evolve_transaction_id
          FEDWIRE_IMAD = :fedwire_imad
          FEDWIRE_OMAD = :fedwire_omad
          FIRST_REPUBLIC_INTERNAL_ID = :first_republic_internal_id
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID = :goldman_sachs_collection_request_id
          GOLDMAN_SACHS_END_TO_END_ID = :goldman_sachs_end_to_end_id
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID = :goldman_sachs_payment_request_id
          GOLDMAN_SACHS_REQUEST_ID = :goldman_sachs_request_id
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID = :goldman_sachs_unique_payment_id
          INTERAC_MESSAGE_ID = :interac_message_id
          JPMC_CCN = :jpmc_ccn
          JPMC_CLEARING_SYSTEM_REFERENCE = :jpmc_clearing_system_reference
          JPMC_CUSTOMER_REFERENCE_ID = :jpmc_customer_reference_id
          JPMC_END_TO_END_ID = :jpmc_end_to_end_id
          JPMC_FIRM_ROOT_ID = :jpmc_firm_root_id
          JPMC_FX_TRN_ID = :jpmc_fx_trn_id
          JPMC_P3_ID = :jpmc_p3_id
          JPMC_PAYMENT_BATCH_ID = :jpmc_payment_batch_id
          JPMC_PAYMENT_INFORMATION_ID = :jpmc_payment_information_id
          JPMC_PAYMENT_RETURNED_DATETIME = :jpmc_payment_returned_datetime
          LOB_CHECK_ID = :lob_check_id
          OTHER = :other
          PARTIAL_SWIFT_MIR = :partial_swift_mir
          PNC_CLEARING_REFERENCE = :pnc_clearing_reference
          PNC_INSTRUCTION_ID = :pnc_instruction_id
          PNC_MULTIPAYMENT_ID = :pnc_multipayment_id
          PNC_PAYMENT_TRACE_ID = :pnc_payment_trace_id
          PNC_TRANSACTION_REFERENCE_NUMBER = :pnc_transaction_reference_number
          RSPEC_VENDOR_PAYMENT_ID = :rspec_vendor_payment_id
          RTP_INSTRUCTION_ID = :rtp_instruction_id
          SIGNET_API_REFERENCE_ID = :signet_api_reference_id
          SIGNET_CONFIRMATION_ID = :signet_confirmation_id
          SIGNET_REQUEST_ID = :signet_request_id
          SILVERGATE_PAYMENT_ID = :silvergate_payment_id
          SVB_END_TO_END_ID = :svb_end_to_end_id
          SVB_PAYMENT_ID = :svb_payment_id
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW = :svb_transaction_cleared_for_sanctions_review
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW = :svb_transaction_held_for_sanctions_review
          SWIFT_MIR = :swift_mir
          SWIFT_UETR = :swift_uetr
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER = :umb_product_partner_account_number
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID = :usbank_payment_application_reference_id
          USBANK_PAYMENT_ID = :usbank_payment_id
          USBANK_PENDING_RTP_PAYMENT_ID = :usbank_pending_rtp_payment_id
          USBANK_POSTED_RTP_PAYMENT_ID = :usbank_posted_rtp_payment_id
          WELLS_FARGO_END_TO_END_ID = :wells_fargo_end_to_end_id
          WELLS_FARGO_PAYMENT_ID = :wells_fargo_payment_id
          WELLS_FARGO_TRACE_NUMBER = :wells_fargo_trace_number
          WELLS_FARGO_UETR = :wells_fargo_uetr

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      # The current status of the payment order.
      class Status < ModernTreasury::Enum
        abstract!

        APPROVED = :approved
        CANCELLED = :cancelled
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        NEEDS_APPROVAL = :needs_approval
        PENDING = :pending
        PROCESSING = :processing
        RETURNED = :returned
        REVERSED = :reversed
        SENT = :sent

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # The account to which the originating of this payment should be attributed to.
      #   Can be a `virtual_account` or `internal_account`.
      class UltimateOriginatingAccount < ModernTreasury::Union
        abstract!

        class << self
          sig { override.returns([ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount]) }
          def variants
          end
        end
      end

      class UltimateOriginatingAccountType < ModernTreasury::Enum
        abstract!

        INTERNAL_ACCOUNT = T.let(:internal_account, T.nilable(Symbol))
        VIRTUAL_ACCOUNT = T.let(:virtual_account, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
