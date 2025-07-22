# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPaymentCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The lowest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      # The highest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_upper_bound

      # The ID of the counterparty you expect for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      # Must conform to ISO 4217. Defaults to the currency of the internal account.
      sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
      attr_accessor :currency

      # The earliest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_lower_bound

      # The latest date the payment may come in. Format: yyyy-mm-dd
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_upper_bound

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentCreateParams::Direction::OrSymbol
          )
        )
      end
      attr_accessor :direction

      # An optional user-defined 180 character unique identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The ID of the Internal Account for the expected payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_account_id

      # Specifies a ledger transaction object that will be created with the expected
      # payment. If the ledger transaction cannot be created, then the expected payment
      # creation will fail. The resulting ledger transaction will mirror the status of
      # the expected payment.
      sig { returns(T.nilable(ModernTreasury::LedgerTransactionCreateRequest)) }
      attr_reader :ledger_transaction

      sig do
        params(
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash
        ).void
      end
      attr_writer :ledger_transaction

      # Either ledger_transaction or ledger_transaction_id can be provided. Only a
      # pending ledger transaction can be attached upon expected payment creation. Once
      # the expected payment is created, the status of the ledger transaction tracks the
      # expected payment automatically.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::ExpectedPaymentCreateParams::LineItem]
          )
        )
      end
      attr_reader :line_items

      sig do
        params(
          line_items:
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::LineItem::OrHash
            ]
        ).void
      end
      attr_writer :line_items

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The reconciliation filters you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_filters

      # The reconciliation groups you have for this payment.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :reconciliation_groups

      # An array of reconciliation rule variables for this payment.
      sig { returns(T.nilable(T::Array[ModernTreasury::ReconciliationRule])) }
      attr_accessor :reconciliation_rule_variables

      # For `ach`, this field will be passed through on an addenda record. For `wire`
      # payments the field will be passed through as the "Originator to Beneficiary
      # Information", also known as OBI or Fedwire tag 6000.
      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      # The statement description you expect to see on the transaction. For ACH
      # payments, this will be the full line item passed from the bank. For wire
      # payments, this will be the OBI field on the wire. For check payments, this will
      # be the memo field.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)) }
      attr_accessor :type

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
          external_id: T.nilable(String),
          internal_account_id: T.nilable(String),
          ledger_transaction:
            ModernTreasury::LedgerTransactionCreateRequest::OrHash,
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
        ).returns(T.attached_class)
      end
      def self.new(
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
        # An optional user-defined 180 character unique identifier.
        external_id: nil,
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

      sig do
        override.returns(
          {
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
            external_id: T.nilable(String),
            internal_account_id: T.nilable(String),
            ledger_transaction: ModernTreasury::LedgerTransactionCreateRequest,
            ledger_transaction_id: String,
            line_items:
              T::Array[ModernTreasury::ExpectedPaymentCreateParams::LineItem],
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables:
              T.nilable(T::Array[ModernTreasury::ReconciliationRule]),
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPaymentCreateParams::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentCreateParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class LineItem < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::ExpectedPaymentCreateParams::LineItem,
              ModernTreasury::Internal::AnyHash
            )
          end

        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        sig { returns(Integer) }
        attr_accessor :amount

        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        sig { returns(T.nilable(String)) }
        attr_accessor :accounting_category_id

        # A free-form description of the line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Value in specified currency's smallest unit. e.g. $10 would be represented
          # as 1000.
          amount:,
          # The ID of one of your accounting categories. Note that these will only be
          # accessible if your accounting system has been connected.
          accounting_category_id: nil,
          # A free-form description of the line item.
          description: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil
        )
        end

        sig do
          override.returns(
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
    end
  end
end
