# typed: strong

module ModernTreasury
  module Models
    class ExpectedPaymentUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExpectedPaymentUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The lowest amount this expected payment may be equal to. Value in specified
      # currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_lower_bound

      # The amount reconciled for this expected payment. Value in specified currency's
      # smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_reconciled

      # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      # amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
          )
        )
      end
      attr_accessor :amount_reconciled_direction

      # The amount that remains unreconciled for this expected payment. Value in
      # specified currency's smallest unit. e.g. $10 would be represented as 1000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_unreconciled

      # One of credit or debit. Indicates whether amount_unreconciled is a credit or
      # debit amount.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
          )
        )
      end
      attr_accessor :amount_unreconciled_direction

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
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::OrSymbol
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

      # The Expected Payment's status can be updated from partially_reconciled to
      # reconciled.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_accessor :status

      # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
      # sepa, signet, wire.
      sig { returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          amount_lower_bound: T.nilable(Integer),
          amount_reconciled: T.nilable(Integer),
          amount_reconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
            ),
          amount_unreconciled: T.nilable(Integer),
          amount_unreconciled_direction:
            T.nilable(
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
            ),
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
          external_id: T.nilable(String),
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
        ).returns(T.attached_class)
      end
      def self.new(
        # The lowest amount this expected payment may be equal to. Value in specified
        # currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_lower_bound: nil,
        # The amount reconciled for this expected payment. Value in specified currency's
        # smallest unit. e.g. $10 would be represented as 1000.
        amount_reconciled: nil,
        # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
        # amount.
        amount_reconciled_direction: nil,
        # The amount that remains unreconciled for this expected payment. Value in
        # specified currency's smallest unit. e.g. $10 would be represented as 1000.
        amount_unreconciled: nil,
        # One of credit or debit. Indicates whether amount_unreconciled is a credit or
        # debit amount.
        amount_unreconciled_direction: nil,
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

      sig do
        override.returns(
          {
            amount_lower_bound: T.nilable(Integer),
            amount_reconciled: T.nilable(Integer),
            amount_reconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::OrSymbol
              ),
            amount_unreconciled: T.nilable(Integer),
            amount_unreconciled_direction:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::OrSymbol
              ),
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
            external_id: T.nilable(String),
            internal_account_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            reconciliation_filters: T.nilable(T.anything),
            reconciliation_groups: T.nilable(T.anything),
            reconciliation_rule_variables:
              T.nilable(T::Array[ModernTreasury::ReconciliationRule]),
            remittance_information: T.nilable(String),
            statement_descriptor: T.nilable(String),
            status:
              T.nilable(
                ModernTreasury::ExpectedPaymentUpdateParams::Status::OrSymbol
              ),
            type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of credit or debit. Indicates whether amount_reconciled is a credit or debit
      # amount.
      module AmountReconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::AmountReconciledDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of credit or debit. Indicates whether amount_unreconciled is a credit or
      # debit amount.
      module AmountUnreconciledDirection
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::AmountUnreconciledDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of credit or debit. When you are receiving money, use credit. When you are
      # being charged, use debit.
      module Direction
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExpectedPaymentUpdateParams::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The Expected Payment's status can be updated from partially_reconciled to
      # reconciled.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ExpectedPaymentUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECONCILED =
          T.let(
            :reconciled,
            ModernTreasury::ExpectedPaymentUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExpectedPaymentUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
