# typed: strong

module ModernTreasury
  module Resources
    class ExpectedPayments
      # create expected payment
      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(ModernTreasury::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentCreateParams::Direction::OrSymbol
            ),
          internal_account_id: T.nilable(String),
          ledger_transaction:
            ModernTreasury::ExpectedPaymentCreateParams::LedgerTransaction::OrHash,
          ledger_transaction_id: String,
          line_items:
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::LineItem::OrHash
            ],
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables:
            T.nilable(T::Array[ModernTreasury::ReconciliationRule::OrHash]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ExpectedPayment)
      end
      def create(
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound: nil,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound: nil,
        # The ID of the counterparty you expect for this payment.
        counterparty_id: nil,
        # Must conform to ISO 4217. Defaults to the currency of the internal account.
        currency: nil,
        # The earliest date the payment may come in. Format: yyyy-mm-dd
        date_lower_bound: nil,
        # The latest date the payment may come in. Format: yyyy-mm-dd
        date_upper_bound: nil,
        # An optional description for internal use.
        description: nil,
        # One of credit or debit. When you are receiving money, use credit. When you are
        # being charged, use debit.
        direction: nil,
        # The ID of the Internal Account for the expected payment.
        internal_account_id: nil,
        # Specifies a ledger transaction object that will be created with the expected
        # payment. If the ledger transaction cannot be created, then the expected payment
        # creation will fail. The resulting ledger transaction will mirror the status of
        # the expected payment.
        ledger_transaction: nil,
        # Either ledger_transaction or ledger_transaction_id can be provided. Only a
        # pending ledger transaction can be attached upon expected payment creation. Once
        # the expected payment is created, the status of the ledger transaction tracks the
        # expected payment automatically.
        ledger_transaction_id: nil,
        line_items: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The reconciliation filters you have for this payment.
        reconciliation_filters: nil,
        # The reconciliation groups you have for this payment.
        reconciliation_groups: nil,
        # An array of reconciliation rule variables for this payment.
        reconciliation_rule_variables: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # The statement description you expect to see on the transaction. For ACH
        # payments, this will be the full line item passed from the bank. For wire
        # payments, this will be the OBI field on the wire. For check payments, this will
        # be the memo field.
        statement_descriptor: nil,
        # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
        # sepa, signet, wire.
        type: nil,
        request_options: {}
      )
      end

      # get expected payment
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ExpectedPayment)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # update expected payment
      sig do
        params(
          id: String,
          amount_lower_bound: T.nilable(Integer),
          amount_upper_bound: T.nilable(Integer),
          counterparty_id: T.nilable(String),
          currency: T.nilable(ModernTreasury::Currency::OrSymbol),
          date_lower_bound: T.nilable(Date),
          date_upper_bound: T.nilable(Date),
          description: T.nilable(String),
          direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::Direction::OrSymbol
            ),
          internal_account_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          reconciliation_filters: T.nilable(T.anything),
          reconciliation_groups: T.nilable(T.anything),
          reconciliation_rule_variables:
            T.nilable(T::Array[ModernTreasury::ReconciliationRule::OrHash]),
          remittance_information: T.nilable(String),
          statement_descriptor: T.nilable(String),
          status:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
            ),
          type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ExpectedPayment)
      end
      def update(
        # id
        id,
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound: nil,
        # The highest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_upper_bound: nil,
        # The ID of the counterparty you expect for this payment.
        counterparty_id: nil,
        # Must conform to ISO 4217. Defaults to the currency of the internal account.
        currency: nil,
        # The earliest date the payment may come in. Format: yyyy-mm-dd
        date_lower_bound: nil,
        # The latest date the payment may come in. Format: yyyy-mm-dd
        date_upper_bound: nil,
        # An optional description for internal use.
        description: nil,
        # One of credit or debit. When you are receiving money, use credit. When you are
        # being charged, use debit.
        direction: nil,
        # The ID of the Internal Account for the expected payment.
        internal_account_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # The reconciliation filters you have for this payment.
        reconciliation_filters: nil,
        # The reconciliation groups you have for this payment.
        reconciliation_groups: nil,
        # An array of reconciliation rule variables for this payment.
        reconciliation_rule_variables: nil,
        # For `ach`, this field will be passed through on an addenda record. For `wire`
        # payments the field will be passed through as the "Originator to Beneficiary
        # Information", also known as OBI or Fedwire tag 6000.
        remittance_information: nil,
        # The statement description you expect to see on the transaction. For ACH
        # payments, this will be the full line item passed from the bank. For wire
        # payments, this will be the OBI field on the wire. For check payments, this will
        # be the memo field.
        statement_descriptor: nil,
        # The Expected Payment's status can be updated from partially_reconciled to
        # reconciled.
        status: nil,
        # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
        # sepa, signet, wire.
        type: nil,
        request_options: {}
      )
      end

      # list expected_payments
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          status: ModernTreasury::ExpectedPaymentListParams::Status::OrSymbol,
          type: ModernTreasury::ExpectedPaymentListParams::Type::OrSymbol,
          updated_at_lower_bound: Time,
          updated_at_upper_bound: Time,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::ExpectedPayment]
        )
      end
      def list(
        after_cursor: nil,
        # Specify counterparty_id to see expected_payments for a specific account.
        counterparty_id: nil,
        # Used to return expected payments created after some datetime
        created_at_lower_bound: nil,
        # Used to return expected payments created before some datetime
        created_at_upper_bound: nil,
        # One of credit, debit
        direction: nil,
        # Specify internal_account_id to see expected_payments for a specific account.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # One of unreconciled, reconciled, or archived.
        status: nil,
        # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp,sen,
        # sepa, signet, wire
        type: nil,
        # Used to return expected payments updated after some datetime
        updated_at_lower_bound: nil,
        # Used to return expected payments updated before some datetime
        updated_at_upper_bound: nil,
        request_options: {}
      )
      end

      # delete expected payment
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::ExpectedPayment)
      end
      def delete(
        # id
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
