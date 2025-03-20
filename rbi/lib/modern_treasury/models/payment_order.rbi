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
        params(_: T.any(ModernTreasury::Models::PaymentOrder::Accounting, ModernTreasury::Util::AnyHash))
          .returns(T.any(ModernTreasury::Models::PaymentOrder::Accounting, ModernTreasury::Util::AnyHash))
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
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol)) }
      def charge_bearer
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol))
      end
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
      sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: ModernTreasury::Models::Currency::TaggedSymbol)
          .returns(ModernTreasury::Models::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # If the payment order's status is `returned`, this will include the return
      #   object's data.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnObject)) }
      def current_return
      end

      sig do
        params(_: T.nilable(T.any(ModernTreasury::Models::ReturnObject, ModernTreasury::Util::AnyHash)))
          .returns(T.nilable(T.any(ModernTreasury::Models::ReturnObject, ModernTreasury::Util::AnyHash)))
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
      sig { returns(ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol)
      end
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
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol)) }
      def foreign_exchange_indicator
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol))
      end
      def foreign_exchange_indicator=(_)
      end

      # Associated serialized foreign exchange rate information.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate)) }
      def foreign_exchange_rate
      end

      sig do
        params(
          _: T.nilable(T.any(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate, ModernTreasury::Util::AnyHash))
        )
          .returns(
            T.nilable(T.any(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate, ModernTreasury::Util::AnyHash))
          )
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
      sig { returns(ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol) }
      def priority
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol)
      end
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

      sig { returns(ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol) }
      def receiving_account_type
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol)
      end
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
      sig { returns(ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # An additional layer of classification for the type of payment order you are
      #   doing. This field is only used for `ach` payment orders currently. For `ach`
      #   payment orders, the `subtype` represents the SEC code. We currently support
      #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol)) }
      def subtype
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol))
      end
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
      sig { returns(ModernTreasury::Models::PaymentOrderType::TaggedSymbol) }
      def type
      end

      sig do
        params(_: ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
          .returns(ModernTreasury::Models::PaymentOrderType::TaggedSymbol)
      end
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

      sig { returns(T.nilable(ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol)) }
      def ultimate_originating_account_type
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol))
          .returns(T.nilable(ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol))
      end
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
          charge_bearer: T.nilable(ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol),
          compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
          counterparty_id: T.nilable(String),
          created_at: Time,
          currency: ModernTreasury::Models::Currency::TaggedSymbol,
          current_return: T.nilable(ModernTreasury::Models::ReturnObject),
          decision_id: T.nilable(String),
          description: T.nilable(String),
          direction: ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol,
          effective_date: Date,
          expires_at: T.nilable(Time),
          foreign_exchange_contract: T.nilable(String),
          foreign_exchange_indicator: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol),
          foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
          ledger_transaction_id: T.nilable(String),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          nsf_protected: T::Boolean,
          object: String,
          originating_account_id: String,
          originating_party_name: T.nilable(String),
          priority: ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol,
          process_after: T.nilable(Time),
          purpose: T.nilable(String),
          receiving_account_id: String,
          receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol,
          reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
          remittance_information: T.nilable(String),
          send_remittance_advice: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          status: ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol,
          subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol),
          transaction_ids: T::Array[String],
          transaction_monitoring_enabled: T::Boolean,
          type: ModernTreasury::Models::PaymentOrderType::TaggedSymbol,
          ultimate_originating_account: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)),
          ultimate_originating_account_id: T.nilable(String),
          ultimate_originating_account_type: T.nilable(ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol),
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
              charge_bearer: T.nilable(ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol),
              compliance_rule_metadata: T.nilable(T::Hash[Symbol, T.anything]),
              counterparty_id: T.nilable(String),
              created_at: Time,
              currency: ModernTreasury::Models::Currency::TaggedSymbol,
              current_return: T.nilable(ModernTreasury::Models::ReturnObject),
              decision_id: T.nilable(String),
              description: T.nilable(String),
              direction: ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol,
              effective_date: Date,
              expires_at: T.nilable(Time),
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol),
              foreign_exchange_rate: T.nilable(ModernTreasury::Models::PaymentOrder::ForeignExchangeRate),
              ledger_transaction_id: T.nilable(String),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              object: String,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority: ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account_id: String,
              receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol,
              reference_numbers: T::Array[ModernTreasury::Models::PaymentOrder::ReferenceNumber],
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              status: ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol,
              subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::TaggedSymbol),
              transaction_ids: T::Array[String],
              transaction_monitoring_enabled: T::Boolean,
              type: ModernTreasury::Models::PaymentOrderType::TaggedSymbol,
              ultimate_originating_account: T.nilable(T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)),
              ultimate_originating_account_id: T.nilable(String),
              ultimate_originating_account_type: T.nilable(ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol),
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
      module ChargeBearer
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::ChargeBearer) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol) }

        SHARED = T.let(:shared, ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol)
        SENDER = T.let(:sender, ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol)
        RECEIVER = T.let(:receiver, ModernTreasury::Models::PaymentOrder::ChargeBearer::TaggedSymbol)
      end

      # One of `credit`, `debit`. Describes the direction money is flowing in the
      #   transaction. A `credit` moves money from your account to someone else's. A
      #   `debit` pulls money from someone else's account to your own. Note that wire,
      #   rtp, and check payments will always be `credit`.
      module Direction
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol) }

        CREDIT = T.let(:credit, ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol)
        DEBIT = T.let(:debit, ModernTreasury::Models::PaymentOrder::Direction::TaggedSymbol)
      end

      # Indicates the type of FX transfer to initiate, can be either
      #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
      #   currency matches the originating account currency.
      module ForeignExchangeIndicator
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol) }

        FIXED_TO_VARIABLE =
          T.let(:fixed_to_variable, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol)
        VARIABLE_TO_FIXED =
          T.let(:variable_to_fixed, ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator::TaggedSymbol)
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
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        def base_currency
        end

        sig do
          params(_: ModernTreasury::Models::Currency::TaggedSymbol)
            .returns(ModernTreasury::Models::Currency::TaggedSymbol)
        end
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
        sig { returns(ModernTreasury::Models::Currency::TaggedSymbol) }
        def target_currency
        end

        sig do
          params(_: ModernTreasury::Models::Currency::TaggedSymbol)
            .returns(ModernTreasury::Models::Currency::TaggedSymbol)
        end
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
            base_currency: ModernTreasury::Models::Currency::TaggedSymbol,
            exponent: Integer,
            rate_string: String,
            target_amount: Integer,
            target_currency: ModernTreasury::Models::Currency::TaggedSymbol,
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
                base_currency: ModernTreasury::Models::Currency::TaggedSymbol,
                exponent: Integer,
                rate_string: String,
                target_amount: Integer,
                target_currency: ModernTreasury::Models::Currency::TaggedSymbol,
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
      module Priority
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::Priority) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol) }

        HIGH = T.let(:high, ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol)
        NORMAL = T.let(:normal, ModernTreasury::Models::PaymentOrder::Priority::TaggedSymbol)
      end

      module ReceivingAccountType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::ReceivingAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol) }

        INTERNAL_ACCOUNT =
          T.let(:internal_account, ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol)
        EXTERNAL_ACCOUNT =
          T.let(:external_account, ModernTreasury::Models::PaymentOrder::ReceivingAccountType::TaggedSymbol)
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
        sig { returns(ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol) }
        def reference_number_type
        end

        sig do
          params(_: ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
            .returns(ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
        end
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
            reference_number_type: ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol,
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
                reference_number_type: ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol,
                updated_at: Time
              }
            )
        end
        def to_hash
        end

        # The type of the reference number. Referring to the vendor payment id.
        module ReferenceNumberType
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol) }

          ACH_ORIGINAL_TRACE_NUMBER =
            T.let(
              :ach_original_trace_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          ACH_TRACE_NUMBER =
            T.let(
              :ach_trace_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ACTIVITY_DATE =
            T.let(
              :bankprov_payment_activity_date,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BANKPROV_PAYMENT_ID =
            T.let(
              :bankprov_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_PRENOTIFICATION_ID =
            T.let(
              :bnk_dev_prenotification_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BNK_DEV_TRANSFER_ID =
            T.let(
              :bnk_dev_transfer_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_END_TO_END_ID =
            T.let(
              :bofa_end_to_end_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          BOFA_TRANSACTION_ID =
            T.let(
              :bofa_transaction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CHECK_NUMBER =
            T.let(
              :check_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_REFERENCE_NUMBER =
            T.let(
              :citibank_reference_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER =
            T.let(
              :citibank_worldlink_clearing_system_reference_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_FX_QUOTE_ID =
            T.let(
              :column_fx_quote_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_REVERSAL_PAIR_TRANSFER_ID =
            T.let(
              :column_reversal_pair_transfer_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          COLUMN_TRANSFER_ID =
            T.let(
              :column_transfer_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_PAYMENT_ID =
            T.let(
              :cross_river_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_SERVICE_MESSAGE =
            T.let(
              :cross_river_service_message,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CROSS_RIVER_TRANSACTION_ID =
            T.let(
              :cross_river_transaction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_CONVERSION_ID =
            T.let(
              :currencycloud_conversion_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          CURRENCYCLOUD_PAYMENT_ID =
            T.let(
              :currencycloud_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DC_BANK_TRANSACTION_ID =
            T.let(
              :dc_bank_transaction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          DWOLLA_TRANSACTION_ID =
            T.let(
              :dwolla_transaction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EFT_TRACE_NUMBER =
            T.let(
              :eft_trace_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          EVOLVE_TRANSACTION_ID =
            T.let(
              :evolve_transaction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_IMAD =
            T.let(
              :fedwire_imad,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FEDWIRE_OMAD =
            T.let(
              :fedwire_omad,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          FIRST_REPUBLIC_INTERNAL_ID =
            T.let(
              :first_republic_internal_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_COLLECTION_REQUEST_ID =
            T.let(
              :goldman_sachs_collection_request_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_END_TO_END_ID =
            T.let(
              :goldman_sachs_end_to_end_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_PAYMENT_REQUEST_ID =
            T.let(
              :goldman_sachs_payment_request_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_REQUEST_ID =
            T.let(
              :goldman_sachs_request_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          GOLDMAN_SACHS_UNIQUE_PAYMENT_ID =
            T.let(
              :goldman_sachs_unique_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          INTERAC_MESSAGE_ID =
            T.let(
              :interac_message_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CCN =
            T.let(:jpmc_ccn, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
          JPMC_CLEARING_SYSTEM_REFERENCE =
            T.let(
              :jpmc_clearing_system_reference,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_CUSTOMER_REFERENCE_ID =
            T.let(
              :jpmc_customer_reference_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_END_TO_END_ID =
            T.let(
              :jpmc_end_to_end_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FIRM_ROOT_ID =
            T.let(
              :jpmc_firm_root_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_FX_TRN_ID =
            T.let(
              :jpmc_fx_trn_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_P3_ID =
            T.let(
              :jpmc_p3_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_BATCH_ID =
            T.let(
              :jpmc_payment_batch_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_INFORMATION_ID =
            T.let(
              :jpmc_payment_information_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          JPMC_PAYMENT_RETURNED_DATETIME =
            T.let(
              :jpmc_payment_returned_datetime,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          LOB_CHECK_ID =
            T.let(
              :lob_check_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          OTHER =
            T.let(:other, ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol)
          PARTIAL_SWIFT_MIR =
            T.let(
              :partial_swift_mir,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_CLEARING_REFERENCE =
            T.let(
              :pnc_clearing_reference,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_INSTRUCTION_ID =
            T.let(
              :pnc_instruction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_MULTIPAYMENT_ID =
            T.let(
              :pnc_multipayment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_PAYMENT_TRACE_ID =
            T.let(
              :pnc_payment_trace_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          PNC_TRANSACTION_REFERENCE_NUMBER =
            T.let(
              :pnc_transaction_reference_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RSPEC_VENDOR_PAYMENT_ID =
            T.let(
              :rspec_vendor_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          RTP_INSTRUCTION_ID =
            T.let(
              :rtp_instruction_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_API_REFERENCE_ID =
            T.let(
              :signet_api_reference_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_CONFIRMATION_ID =
            T.let(
              :signet_confirmation_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SIGNET_REQUEST_ID =
            T.let(
              :signet_request_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SILVERGATE_PAYMENT_ID =
            T.let(
              :silvergate_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_END_TO_END_ID =
            T.let(
              :svb_end_to_end_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_PAYMENT_ID =
            T.let(
              :svb_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_cleared_for_sanctions_review,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW =
            T.let(
              :svb_transaction_held_for_sanctions_review,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_MIR =
            T.let(
              :swift_mir,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          SWIFT_UETR =
            T.let(
              :swift_uetr,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER =
            T.let(
              :umb_product_partner_account_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_APPLICATION_REFERENCE_ID =
            T.let(
              :usbank_payment_application_reference_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PAYMENT_ID =
            T.let(
              :usbank_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_PENDING_RTP_PAYMENT_ID =
            T.let(
              :usbank_pending_rtp_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          USBANK_POSTED_RTP_PAYMENT_ID =
            T.let(
              :usbank_posted_rtp_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_END_TO_END_ID =
            T.let(
              :wells_fargo_end_to_end_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_PAYMENT_ID =
            T.let(
              :wells_fargo_payment_id,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_TRACE_NUMBER =
            T.let(
              :wells_fargo_trace_number,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
          WELLS_FARGO_UETR =
            T.let(
              :wells_fargo_uetr,
              ModernTreasury::Models::PaymentOrder::ReferenceNumber::ReferenceNumberType::TaggedSymbol
            )
        end
      end

      # The current status of the payment order.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol) }

        APPROVED = T.let(:approved, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        CANCELLED = T.let(:cancelled, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        DENIED = T.let(:denied, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        FAILED = T.let(:failed, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        NEEDS_APPROVAL = T.let(:needs_approval, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        RETURNED = T.let(:returned, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        REVERSED = T.let(:reversed, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
        SENT = T.let(:sent, ModernTreasury::Models::PaymentOrder::Status::TaggedSymbol)
      end

      # The account to which the originating of this payment should be attributed to.
      #   Can be a `virtual_account` or `internal_account`.
      module UltimateOriginatingAccount
        extend ModernTreasury::Union

        Variants =
          type_template(:out) { {fixed: T.any(ModernTreasury::Models::VirtualAccount, ModernTreasury::Models::InternalAccount)} }
      end

      module UltimateOriginatingAccountType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol) }

        INTERNAL_ACCOUNT =
          T.let(
            :internal_account,
            ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol
          )
        VIRTUAL_ACCOUNT =
          T.let(
            :virtual_account,
            ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType::TaggedSymbol
          )
      end
    end
  end
end
