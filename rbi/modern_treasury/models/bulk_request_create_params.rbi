# typed: strong

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::BulkRequestCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # One of create, or update.
      sig do
        returns(ModernTreasury::BulkRequestCreateParams::ActionType::OrSymbol)
      end
      attr_accessor :action_type

      # One of payment_order, expected_payment, or ledger_transaction.
      sig do
        returns(ModernTreasury::BulkRequestCreateParams::ResourceType::OrSymbol)
      end
      attr_accessor :resource_type

      # An array of objects where each object contains the input params for a single
      # `action_type` request on a `resource_type` resource
      sig do
        returns(
          T::Array[
            T.any(
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
              ModernTreasury::LedgerTransactionCreateRequest,
              ModernTreasury::LedgerAccountCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
            )
          ]
        )
      end
      attr_accessor :resources

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          action_type:
            ModernTreasury::BulkRequestCreateParams::ActionType::OrSymbol,
          resource_type:
            ModernTreasury::BulkRequestCreateParams::ResourceType::OrSymbol,
          resources:
            T::Array[
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::OrHash,
                ModernTreasury::LedgerTransactionCreateRequest::OrHash,
                ModernTreasury::LedgerAccountCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::OrHash
              )
            ],
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One of create, or update.
        action_type:,
        # One of payment_order, expected_payment, or ledger_transaction.
        resource_type:,
        # An array of objects where each object contains the input params for a single
        # `action_type` request on a `resource_type` resource
        resources:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            action_type:
              ModernTreasury::BulkRequestCreateParams::ActionType::OrSymbol,
            resource_type:
              ModernTreasury::BulkRequestCreateParams::ResourceType::OrSymbol,
            resources:
              T::Array[
                T.any(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
                  ModernTreasury::LedgerTransactionCreateRequest,
                  ModernTreasury::LedgerAccountCreateRequest,
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest,
                  ModernTreasury::BulkRequestCreateParams::Resource::ID,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
                )
              ],
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of create, or update.
      module ActionType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequestCreateParams::ActionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :create,
            ModernTreasury::BulkRequestCreateParams::ActionType::TaggedSymbol
          )
        UPDATE =
          T.let(
            :update,
            ModernTreasury::BulkRequestCreateParams::ActionType::TaggedSymbol
          )
        DELETE =
          T.let(
            :delete,
            ModernTreasury::BulkRequestCreateParams::ActionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestCreateParams::ActionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::BulkRequestCreateParams::ResourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        LEDGER_ACCOUNT =
          T.let(
            :ledger_account,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        LEDGER_TRANSACTION =
          T.let(
            :ledger_transaction,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        EXPECTED_PAYMENT =
          T.let(
            :expected_payment,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        TRANSACTION =
          T.let(
            :transaction,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        TRANSACTION_LINE_ITEM =
          T.let(
            :transaction_line_item,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )
        ENTITY_LINK =
          T.let(
            :entity_link,
            ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestCreateParams::ResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Resource
        extend ModernTreasury::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
              ModernTreasury::LedgerTransactionCreateRequest,
              ModernTreasury::LedgerAccountCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
            )
          end

        class PaymentOrderAsyncCreateRequest < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
                ModernTreasury::Internal::AnyHash
              )
            end

          # Value in specified currency's smallest unit. e.g. $10 would be represented as
          # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          sig { returns(Integer) }
          attr_accessor :amount

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          sig do
            returns(
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol
            )
          end
          attr_accessor :direction

          # The ID of one of your organization's internal accounts.
          sig { returns(String) }
          attr_accessor :originating_account_id

          # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          sig { returns(ModernTreasury::PaymentOrderType::OrSymbol) }
          attr_accessor :type

          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
              )
            )
          end
          attr_reader :accounting

          sig do
            params(
              accounting:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting::OrHash
            ).void
          end
          attr_writer :accounting

          # The ID of one of your accounting categories. Note that these will only be
          # accessible if your accounting system has been connected.
          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_category_id

          # The ID of one of your accounting ledger classes. Note that these will only be
          # accessible if your accounting system has been connected.
          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_ledger_class_id

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
              )
            )
          end
          attr_accessor :charge_bearer

          # Defaults to the currency of the originating account.
          sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
          attr_reader :currency

          sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
          attr_writer :currency

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Date transactions are to be posted to the participants' account. Defaults to the
          # current business day or the next business day if the current day is a bank
          # holiday or weekend. Format: yyyy-mm-dd.
          sig { returns(T.nilable(Date)) }
          attr_reader :effective_date

          sig { params(effective_date: Date).void }
          attr_writer :effective_date

          # RFP payments require an expires_at. This value must be past the effective_date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :expires_at

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol
              )
            )
          end
          attr_reader :fallback_type

          sig do
            params(
              fallback_type:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol
            ).void
          end
          attr_writer :fallback_type

          # If present, indicates a specific foreign exchange contract number that has been
          # generated by your financial institution.
          sig { returns(T.nilable(String)) }
          attr_accessor :foreign_exchange_contract

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
              )
            )
          end
          attr_accessor :foreign_exchange_indicator

          # Specifies a ledger transaction object that will be created with the payment
          # order. If the ledger transaction cannot be created, then the payment order
          # creation will fail. The resulting ledger transaction will mirror the status of
          # the payment order.
          sig do
            returns(T.nilable(ModernTreasury::LedgerTransactionCreateRequest))
          end
          attr_reader :ledger_transaction

          sig do
            params(
              ledger_transaction:
                ModernTreasury::LedgerTransactionCreateRequest::OrHash
            ).void
          end
          attr_writer :ledger_transaction

          # Either ledger_transaction or ledger_transaction_id can be provided. Only a
          # pending ledger transaction can be attached upon payment order creation. Once the
          # payment order is created, the status of the ledger transaction tracks the
          # payment order automatically.
          sig { returns(T.nilable(String)) }
          attr_reader :ledger_transaction_id

          sig { params(ledger_transaction_id: String).void }
          attr_writer :ledger_transaction_id

          # An array of line items that must sum up to the amount of the payment order.
          sig do
            returns(
              T.nilable(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem
                ]
              )
            )
          end
          attr_reader :line_items

          sig do
            params(
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem::OrHash
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

          # A boolean to determine if NSF Protection is enabled for this payment order. Note
          # that this setting must also be turned on in your organization settings page.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :nsf_protected

          sig { params(nsf_protected: T::Boolean).void }
          attr_writer :nsf_protected

          # If present, this will replace your default company name on receiver's bank
          # statement. This field can only be used for ACH payments currently. For ACH, only
          # the first 16 characters of this string will be used. Any additional characters
          # will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :originating_party_name

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol
              )
            )
          end
          attr_reader :priority

          sig do
            params(
              priority:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol
            ).void
          end
          attr_writer :priority

          # If present, Modern Treasury will not process the payment until after this time.
          # If `process_after` is past the cutoff for `effective_date`, `process_after` will
          # take precedence and `effective_date` will automatically update to reflect the
          # earliest possible sending date after `process_after`. Format is ISO8601
          # timestamp.
          sig { returns(T.nilable(Time)) }
          attr_accessor :process_after

          # For `wire`, this is usually the purpose which is transmitted via the
          # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          # digit CPA Code that will be attached to the payment.
          sig { returns(T.nilable(String)) }
          attr_accessor :purpose

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          # `receiving_account_id`, you may pass the id of an external account or an
          # internal account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
              )
            )
          end
          attr_reader :receiving_account

          sig do
            params(
              receiving_account:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::OrHash
            ).void
          end
          attr_writer :receiving_account

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          # `receiving_account_id`, you may pass the id of an external account or an
          # internal account.
          sig { returns(T.nilable(String)) }
          attr_reader :receiving_account_id

          sig { params(receiving_account_id: String).void }
          attr_writer :receiving_account_id

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::OrSymbol
              )
            )
          end
          attr_reader :reconciliation_status

          sig do
            params(
              reconciliation_status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::OrSymbol
            ).void
          end
          attr_writer :reconciliation_status

          # For `ach`, this field will be passed through on an addenda record. For `wire`
          # payments the field will be passed through as the "Originator to Beneficiary
          # Information", also known as OBI or Fedwire tag 6000.
          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          # Send an email to the counterparty when the payment order is sent to the bank. If
          # `null`, `send_remittance_advice` on the Counterparty is used.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :send_remittance_advice

          # An optional descriptor which will appear in the receiver's statement. For
          # `check` payments this field will be used as the memo line. For `ach` the maximum
          # length is 10 characters. Note that for ACH payments, the name on your bank
          # account will be included automatically by the bank, so you can use the
          # characters for other useful information. For `eft` the maximum length is 15
          # characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor

          # An additional layer of classification for the type of payment order you are
          # doing. This field is only used for `ach` payment orders currently. For `ach`
          # payment orders, the `subtype` represents the SEC code. We currently support
          # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          sig do
            returns(T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol))
          end
          attr_accessor :subtype

          # A flag that determines whether a payment order should go through transaction
          # monitoring.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :transaction_monitoring_enabled

          sig { params(transaction_monitoring_enabled: T::Boolean).void }
          attr_writer :transaction_monitoring_enabled

          # Identifier of the ultimate originator of the payment order.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_originating_party_identifier

          # Name of the ultimate originator of the payment order.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_originating_party_name

          # Identifier of the ultimate funds recipient.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_receiving_party_identifier

          # Name of the ultimate funds recipient.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_receiving_party_name

          sig do
            params(
              amount: Integer,
              direction:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol,
              originating_account_id: String,
              type: ModernTreasury::PaymentOrderType::OrSymbol,
              accounting:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting::OrHash,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              charge_bearer:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
                ),
              currency: ModernTreasury::Currency::OrSymbol,
              description: T.nilable(String),
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
                ),
              ledger_transaction:
                ModernTreasury::LedgerTransactionCreateRequest::OrHash,
              ledger_transaction_id: String,
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem::OrHash
                ],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_party_name: T.nilable(String),
              priority:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::OrHash,
              receiving_account_id: String,
              reconciliation_status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::OrSymbol,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              subtype: T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
              transaction_monitoring_enabled: T::Boolean,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Value in specified currency's smallest unit. e.g. $10 would be represented as
            # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
            amount:,
            # One of `credit`, `debit`. Describes the direction money is flowing in the
            # transaction. A `credit` moves money from your account to someone else's. A
            # `debit` pulls money from someone else's account to your own. Note that wire,
            # rtp, and check payments will always be `credit`.
            direction:,
            # The ID of one of your organization's internal accounts.
            originating_account_id:,
            # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
            # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
            # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
            type:,
            accounting: nil,
            # The ID of one of your accounting categories. Note that these will only be
            # accessible if your accounting system has been connected.
            accounting_category_id: nil,
            # The ID of one of your accounting ledger classes. Note that these will only be
            # accessible if your accounting system has been connected.
            accounting_ledger_class_id: nil,
            # The party that will pay the fees for the payment order. See
            # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
            # differences between the options.
            charge_bearer: nil,
            # Defaults to the currency of the originating account.
            currency: nil,
            # An optional description for internal use.
            description: nil,
            # Date transactions are to be posted to the participants' account. Defaults to the
            # current business day or the next business day if the current day is a bank
            # holiday or weekend. Format: yyyy-mm-dd.
            effective_date: nil,
            # RFP payments require an expires_at. This value must be past the effective_date.
            expires_at: nil,
            # A payment type to fallback to if the original type is not valid for the
            # receiving account. Currently, this only supports falling back from RTP to ACH
            # (type=rtp and fallback_type=ach)
            fallback_type: nil,
            # If present, indicates a specific foreign exchange contract number that has been
            # generated by your financial institution.
            foreign_exchange_contract: nil,
            # Indicates the type of FX transfer to initiate, can be either
            # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
            # currency matches the originating account currency.
            foreign_exchange_indicator: nil,
            # Specifies a ledger transaction object that will be created with the payment
            # order. If the ledger transaction cannot be created, then the payment order
            # creation will fail. The resulting ledger transaction will mirror the status of
            # the payment order.
            ledger_transaction: nil,
            # Either ledger_transaction or ledger_transaction_id can be provided. Only a
            # pending ledger transaction can be attached upon payment order creation. Once the
            # payment order is created, the status of the ledger transaction tracks the
            # payment order automatically.
            ledger_transaction_id: nil,
            # An array of line items that must sum up to the amount of the payment order.
            line_items: nil,
            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            metadata: nil,
            # A boolean to determine if NSF Protection is enabled for this payment order. Note
            # that this setting must also be turned on in your organization settings page.
            nsf_protected: nil,
            # If present, this will replace your default company name on receiver's bank
            # statement. This field can only be used for ACH payments currently. For ACH, only
            # the first 16 characters of this string will be used. Any additional characters
            # will be truncated.
            originating_party_name: nil,
            # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
            # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
            # an overnight check rather than standard mail.
            priority: nil,
            # If present, Modern Treasury will not process the payment until after this time.
            # If `process_after` is past the cutoff for `effective_date`, `process_after` will
            # take precedence and `effective_date` will automatically update to reflect the
            # earliest possible sending date after `process_after`. Format is ISO8601
            # timestamp.
            process_after: nil,
            # For `wire`, this is usually the purpose which is transmitted via the
            # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
            # digit CPA Code that will be attached to the payment.
            purpose: nil,
            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            receiving_account: nil,
            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            receiving_account_id: nil,
            # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
            reconciliation_status: nil,
            # For `ach`, this field will be passed through on an addenda record. For `wire`
            # payments the field will be passed through as the "Originator to Beneficiary
            # Information", also known as OBI or Fedwire tag 6000.
            remittance_information: nil,
            # Send an email to the counterparty when the payment order is sent to the bank. If
            # `null`, `send_remittance_advice` on the Counterparty is used.
            send_remittance_advice: nil,
            # An optional descriptor which will appear in the receiver's statement. For
            # `check` payments this field will be used as the memo line. For `ach` the maximum
            # length is 10 characters. Note that for ACH payments, the name on your bank
            # account will be included automatically by the bank, so you can use the
            # characters for other useful information. For `eft` the maximum length is 15
            # characters.
            statement_descriptor: nil,
            # An additional layer of classification for the type of payment order you are
            # doing. This field is only used for `ach` payment orders currently. For `ach`
            # payment orders, the `subtype` represents the SEC code. We currently support
            # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
            subtype: nil,
            # A flag that determines whether a payment order should go through transaction
            # monitoring.
            transaction_monitoring_enabled: nil,
            # Identifier of the ultimate originator of the payment order.
            ultimate_originating_party_identifier: nil,
            # Name of the ultimate originator of the payment order.
            ultimate_originating_party_name: nil,
            # Identifier of the ultimate funds recipient.
            ultimate_receiving_party_identifier: nil,
            # Name of the ultimate funds recipient.
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                direction:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol,
                originating_account_id: String,
                type: ModernTreasury::PaymentOrderType::OrSymbol,
                accounting:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                accounting_category_id: T.nilable(String),
                accounting_ledger_class_id: T.nilable(String),
                charge_bearer:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
                  ),
                currency: ModernTreasury::Currency::OrSymbol,
                description: T.nilable(String),
                effective_date: Date,
                expires_at: T.nilable(Time),
                fallback_type:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol,
                foreign_exchange_contract: T.nilable(String),
                foreign_exchange_indicator:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
                  ),
                ledger_transaction:
                  ModernTreasury::LedgerTransactionCreateRequest,
                ledger_transaction_id: String,
                line_items:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem
                  ],
                metadata: T::Hash[Symbol, String],
                nsf_protected: T::Boolean,
                originating_party_name: T.nilable(String),
                priority:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol,
                process_after: T.nilable(Time),
                purpose: T.nilable(String),
                receiving_account:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                receiving_account_id: String,
                reconciliation_status:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::OrSymbol,
                remittance_information: T.nilable(String),
                send_remittance_advice: T.nilable(T::Boolean),
                statement_descriptor: T.nilable(String),
                subtype:
                  T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
                transaction_monitoring_enabled: T::Boolean,
                ultimate_originating_party_identifier: T.nilable(String),
                ultimate_originating_party_name: T.nilable(String),
                ultimate_receiving_party_identifier: T.nilable(String),
                ultimate_receiving_party_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Accounting < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                  ModernTreasury::Internal::AnyHash
                )
              end

            # The ID of one of your accounting categories. Note that these will only be
            # accessible if your accounting system has been connected.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_id

            # The ID of one of the class objects in your accounting system. Class objects
            # track segments of your business independent of client or project. Note that
            # these will only be accessible if your accounting system has been connected.
            sig { returns(T.nilable(String)) }
            attr_accessor :class_id

            sig do
              params(
                account_id: T.nilable(String),
                class_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The ID of one of your accounting categories. Note that these will only be
              # accessible if your accounting system has been connected.
              account_id: nil,
              # The ID of one of the class objects in your accounting system. Class objects
              # track segments of your business independent of client or project. Note that
              # these will only be accessible if your accounting system has been connected.
              class_id: nil
            )
            end

            sig do
              override.returns(
                { account_id: T.nilable(String), class_id: T.nilable(String) }
              )
            end
            def to_hash
            end
          end

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          module ChargeBearer
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SHARED =
              T.let(
                :shared,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )
            SENDER =
              T.let(
                :sender,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )
            RECEIVER =
              T.let(
                :receiver,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          module FallbackType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH =
              T.let(
                :ach,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          module ForeignExchangeIndicator
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED_TO_VARIABLE =
              T.let(
                :fixed_to_variable,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
              )
            VARIABLE_TO_FIXED =
              T.let(
                :variable_to_fixed,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem,
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

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          module Priority
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HIGH =
              T.let(
                :high,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
              )
            NORMAL =
              T.let(
                :normal,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ReceivingAccount < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                  ModernTreasury::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            attr_reader :account_details

            sig do
              params(
                account_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::OrHash
                  ]
              ).void
            end
            attr_writer :account_details

            # Can be `checking`, `savings` or `other`.
            sig do
              returns(T.nilable(ModernTreasury::ExternalAccountType::OrSymbol))
            end
            attr_reader :account_type

            sig do
              params(
                account_type: ModernTreasury::ExternalAccountType::OrSymbol
              ).void
            end
            attr_writer :account_type

            sig do
              returns(
                T.nilable(T::Array[ModernTreasury::ContactDetailCreateRequest])
              )
            end
            attr_reader :contact_details

            sig do
              params(
                contact_details:
                  T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash]
              ).void
            end
            attr_writer :contact_details

            # An optional user-defined 180 character unique identifier.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_id

            # Specifies a ledger account object that will be created with the external
            # account. The resulting ledger account is linked to the external account for
            # auto-ledgering Payment objects. See
            # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            # for more details.
            sig do
              returns(T.nilable(ModernTreasury::LedgerAccountCreateRequest))
            end
            attr_reader :ledger_account

            sig do
              params(
                ledger_account:
                  ModernTreasury::LedgerAccountCreateRequest::OrHash
              ).void
            end
            attr_writer :ledger_account

            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # A nickname for the external account. This is only for internal usage and won't
            # affect any payments
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Required if receiving wire payments.
            sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
            attr_reader :party_address

            sig do
              params(party_address: ModernTreasury::AddressRequest::OrHash).void
            end
            attr_writer :party_address

            sig { returns(T.nilable(String)) }
            attr_reader :party_identifier

            sig { params(party_identifier: String).void }
            attr_writer :party_identifier

            # If this value isn't provided, it will be inherited from the counterparty's name.
            sig { returns(T.nilable(String)) }
            attr_reader :party_name

            sig { params(party_name: String).void }
            attr_writer :party_name

            # Either `individual` or `business`.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                )
              )
            end
            attr_accessor :party_type

            # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            # you can pass the processor token in this field.
            sig { returns(T.nilable(String)) }
            attr_reader :plaid_processor_token

            sig { params(plaid_processor_token: String).void }
            attr_writer :plaid_processor_token

            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            attr_reader :routing_details

            sig do
              params(
                routing_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::OrHash
                  ]
              ).void
            end
            attr_writer :routing_details

            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            sig do
              params(
                account_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::OrHash
                  ],
                account_type: ModernTreasury::ExternalAccountType::OrSymbol,
                contact_details:
                  T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash],
                external_id: T.nilable(String),
                ledger_account:
                  ModernTreasury::LedgerAccountCreateRequest::OrHash,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::AddressRequest::OrHash,
                party_identifier: String,
                party_name: String,
                party_type:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                  ),
                plaid_processor_token: String,
                routing_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              account_details: nil,
              # Can be `checking`, `savings` or `other`.
              account_type: nil,
              contact_details: nil,
              # An optional user-defined 180 character unique identifier.
              external_id: nil,
              # Specifies a ledger account object that will be created with the external
              # account. The resulting ledger account is linked to the external account for
              # auto-ledgering Payment objects. See
              # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
              # for more details.
              ledger_account: nil,
              # Additional data represented as key-value pairs. Both the key and value must be
              # strings.
              metadata: nil,
              # A nickname for the external account. This is only for internal usage and won't
              # affect any payments
              name: nil,
              # Required if receiving wire payments.
              party_address: nil,
              party_identifier: nil,
              # If this value isn't provided, it will be inherited from the counterparty's name.
              party_name: nil,
              # Either `individual` or `business`.
              party_type: nil,
              # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
              # you can pass the processor token in this field.
              plaid_processor_token: nil,
              routing_details: nil
            )
            end

            sig do
              override.returns(
                {
                  account_details:
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                    ],
                  account_type: ModernTreasury::ExternalAccountType::OrSymbol,
                  contact_details:
                    T::Array[ModernTreasury::ContactDetailCreateRequest],
                  external_id: T.nilable(String),
                  ledger_account: ModernTreasury::LedgerAccountCreateRequest,
                  metadata: T::Hash[Symbol, String],
                  name: T.nilable(String),
                  party_address: ModernTreasury::AddressRequest,
                  party_identifier: String,
                  party_name: String,
                  party_type:
                    T.nilable(
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                    ),
                  plaid_processor_token: String,
                  routing_details:
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                    ]
                }
              )
            end
            def to_hash
            end

            class AccountDetail < ModernTreasury::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail,
                    ModernTreasury::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :account_number

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
                )
              end
              attr_reader :account_number_type

              sig do
                params(
                  account_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                ).void
              end
              attr_writer :account_number_type

              sig do
                params(
                  account_number: String,
                  account_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(account_number:, account_number_type: nil)
              end

              sig do
                override.returns(
                  {
                    account_number: String,
                    account_number_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module AccountNumberType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AU_NUMBER =
                  T.let(
                    :au_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                BASE_ADDRESS =
                  T.let(
                    :base_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                CLABE =
                  T.let(
                    :clabe,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ETHEREUM_ADDRESS =
                  T.let(
                    :ethereum_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                HK_NUMBER =
                  T.let(
                    :hk_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                IBAN =
                  T.let(
                    :iban,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ID_NUMBER =
                  T.let(
                    :id_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                NZ_NUMBER =
                  T.let(
                    :nz_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                PAN =
                  T.let(
                    :pan,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                POLYGON_ADDRESS =
                  T.let(
                    :polygon_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SG_NUMBER =
                  T.let(
                    :sg_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SOLANA_ADDRESS =
                  T.let(
                    :solana_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                WALLET_ADDRESS =
                  T.let(
                    :wallet_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Either `individual` or `business`.
            module PartyType
              extend ModernTreasury::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail,
                    ModernTreasury::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :routing_number

              sig do
                returns(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
              end
              attr_accessor :routing_number_type

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
                )
              end
              attr_reader :payment_type

              sig do
                params(
                  payment_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                ).void
              end
              attr_writer :payment_type

              sig do
                params(
                  routing_number: String,
                  routing_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                  payment_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                routing_number:,
                routing_number_type:,
                payment_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    routing_number: String,
                    routing_number_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                    payment_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoutingNumberType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ABA =
                  T.let(
                    :aba,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                AU_BSB =
                  T.let(
                    :au_bsb,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                BR_CODIGO =
                  T.let(
                    :br_codigo,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CA_CPA =
                  T.let(
                    :ca_cpa,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CHIPS =
                  T.let(
                    :chips,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CNAPS =
                  T.let(
                    :cnaps,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                DK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :dk_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                GB_SORT_CODE =
                  T.let(
                    :gb_sort_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hk_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HU_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hu_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ID_SKNBI_CODE =
                  T.let(
                    :id_sknbi_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IL_BANK_CODE =
                  T.let(
                    :il_bank_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IN_IFSC =
                  T.let(
                    :in_ifsc,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                JP_ZENGIN_CODE =
                  T.let(
                    :jp_zengin_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MY_BRANCH_CODE =
                  T.let(
                    :my_branch_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MX_BANK_IDENTIFIER =
                  T.let(
                    :mx_bank_identifier,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                NZ_NATIONAL_CLEARING_CODE =
                  T.let(
                    :nz_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                PL_NATIONAL_CLEARING_CODE =
                  T.let(
                    :pl_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SE_BANKGIRO_CLEARING_CODE =
                  T.let(
                    :se_bankgiro_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SG_INTERBANK_CLEARING_CODE =
                  T.let(
                    :sg_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SWIFT =
                  T.let(
                    :swift,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ZA_NATIONAL_CLEARING_CODE =
                  T.let(
                    :za_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module PaymentType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACH =
                  T.let(
                    :ach,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                AU_BECS =
                  T.let(
                    :au_becs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BACS =
                  T.let(
                    :bacs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BASE =
                  T.let(
                    :base,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BOOK =
                  T.let(
                    :book,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CARD =
                  T.let(
                    :card,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHATS =
                  T.let(
                    :chats,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHECK =
                  T.let(
                    :check,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CROSS_BORDER =
                  T.let(
                    :cross_border,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                DK_NETS =
                  T.let(
                    :dk_nets,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                EFT =
                  T.let(
                    :eft,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ETHEREUM =
                  T.let(
                    :ethereum,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                GB_FPS =
                  T.let(
                    :gb_fps,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                HU_ICS =
                  T.let(
                    :hu_ics,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                INTERAC =
                  T.let(
                    :interac,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MASAV =
                  T.let(
                    :masav,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MX_CCEN =
                  T.let(
                    :mx_ccen,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NEFT =
                  T.let(
                    :neft,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NICS =
                  T.let(
                    :nics,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NZ_BECS =
                  T.let(
                    :nz_becs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PL_ELIXIR =
                  T.let(
                    :pl_elixir,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                POLYGON =
                  T.let(
                    :polygon,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PROVXCHANGE =
                  T.let(
                    :provxchange,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RO_SENT =
                  T.let(
                    :ro_sent,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RTP =
                  T.let(
                    :rtp,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SE_BANKGIROT =
                  T.let(
                    :se_bankgirot,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEN =
                  T.let(
                    :sen,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEPA =
                  T.let(
                    :sepa,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SG_GIRO =
                  T.let(
                    :sg_giro,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIC =
                  T.let(
                    :sic,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIGNET =
                  T.let(
                    :signet,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SKNBI =
                  T.let(
                    :sknbi,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SOLANA =
                  T.let(
                    :solana,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                WIRE =
                  T.let(
                    :wire,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ZENGIN =
                  T.let(
                    :zengin,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          module ReconciliationStatus
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNRECONCILED =
              T.let(
                :unreconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::TaggedSymbol
              )
            TENTATIVELY_RECONCILED =
              T.let(
                :tentatively_reconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::TaggedSymbol
              )
            RECONCILED =
              T.let(
                :reconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReconciliationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ExpectedPaymentCreateRequest < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::OrSymbol
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::OrSymbol
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
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
          sig do
            returns(T.nilable(ModernTreasury::LedgerTransactionCreateRequest))
          end
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
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem
                ]
              )
            )
          end
          attr_reader :line_items

          sig do
            params(
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem::OrHash
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
          sig do
            returns(T.nilable(T::Array[ModernTreasury::ReconciliationRule]))
          end
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
          sig do
            returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol))
          end
          attr_accessor :type

          sig do
            params(
              amount_lower_bound: T.nilable(Integer),
              amount_reconciled: T.nilable(Integer),
              amount_reconciled_direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::OrSymbol
                ),
              amount_unreconciled: T.nilable(Integer),
              amount_unreconciled_direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::OrSymbol
                ),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(ModernTreasury::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
                ),
              external_id: T.nilable(String),
              internal_account_id: T.nilable(String),
              ledger_transaction:
                ModernTreasury::LedgerTransactionCreateRequest::OrHash,
              ledger_transaction_id: String,
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem::OrHash
                ],
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables:
                T.nilable(T::Array[ModernTreasury::ReconciliationRule::OrHash]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)
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
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount_lower_bound: T.nilable(Integer),
                amount_reconciled: T.nilable(Integer),
                amount_reconciled_direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::OrSymbol
                  ),
                amount_unreconciled: T.nilable(Integer),
                amount_unreconciled_direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::OrSymbol
                  ),
                amount_upper_bound: T.nilable(Integer),
                counterparty_id: T.nilable(String),
                currency: T.nilable(ModernTreasury::Currency::OrSymbol),
                date_lower_bound: T.nilable(Date),
                date_upper_bound: T.nilable(Date),
                description: T.nilable(String),
                direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
                  ),
                external_id: T.nilable(String),
                internal_account_id: T.nilable(String),
                ledger_transaction:
                  ModernTreasury::LedgerTransactionCreateRequest,
                ledger_transaction_id: String,
                line_items:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem
                  ],
                metadata: T::Hash[Symbol, String],
                reconciliation_filters: T.nilable(T.anything),
                reconciliation_groups: T.nilable(T.anything),
                reconciliation_rule_variables:
                  T.nilable(T::Array[ModernTreasury::ReconciliationRule]),
                remittance_information: T.nilable(String),
                statement_descriptor: T.nilable(String),
                type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountReconciledDirection::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::AmountUnreconciledDirection::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem,
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

        class TransactionCreateRequest < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest,
                ModernTreasury::Internal::AnyHash
              )
            end

          # Value in specified currency's smallest unit. e.g. $10 would be represented
          # as 1000.
          sig { returns(Integer) }
          attr_accessor :amount

          # The date on which the transaction occurred.
          sig { returns(T.nilable(Date)) }
          attr_accessor :as_of_date

          # Either `credit` or `debit`.
          sig { returns(String) }
          attr_accessor :direction

          # The ID of the relevant Internal Account.
          sig { returns(String) }
          attr_accessor :internal_account_id

          # When applicable, the bank-given code that determines the transaction's category.
          # For most banks this is the BAI2/BTRS transaction code.
          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code

          # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          # `swift`, `us_bank`, or others.
          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_code_type

          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # This field will be `true` if the transaction has posted to the account.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :posted

          sig { params(posted: T::Boolean).void }
          attr_writer :posted

          # The type of the transaction. Examples could be
          # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
              )
            )
          end
          attr_accessor :type

          # An identifier given to this transaction by the bank, often `null`.
          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_customer_id

          # The transaction detail text that often appears in on your bank statement and in
          # your banking portal.
          sig { returns(T.nilable(String)) }
          attr_accessor :vendor_description

          sig do
            params(
              amount: Integer,
              as_of_date: T.nilable(Date),
              direction: String,
              internal_account_id: String,
              vendor_code: T.nilable(String),
              vendor_code_type: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              posted: T::Boolean,
              type:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
                ),
              vendor_customer_id: T.nilable(String),
              vendor_description: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Value in specified currency's smallest unit. e.g. $10 would be represented
            # as 1000.
            amount:,
            # The date on which the transaction occurred.
            as_of_date:,
            # Either `credit` or `debit`.
            direction:,
            # The ID of the relevant Internal Account.
            internal_account_id:,
            # When applicable, the bank-given code that determines the transaction's category.
            # For most banks this is the BAI2/BTRS transaction code.
            vendor_code:,
            # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
            # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
            # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
            # `swift`, `us_bank`, or others.
            vendor_code_type:,
            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            metadata: nil,
            # This field will be `true` if the transaction has posted to the account.
            posted: nil,
            # The type of the transaction. Examples could be
            # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
            type: nil,
            # An identifier given to this transaction by the bank, often `null`.
            vendor_customer_id: nil,
            # The transaction detail text that often appears in on your bank statement and in
            # your banking portal.
            vendor_description: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                as_of_date: T.nilable(Date),
                direction: String,
                internal_account_id: String,
                vendor_code: T.nilable(String),
                vendor_code_type: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                posted: T::Boolean,
                type:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
                  ),
                vendor_customer_id: T.nilable(String),
                vendor_description: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The type of the transaction. Examples could be
          # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          module Type
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH =
              T.let(
                :ach,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            AU_BECS =
              T.let(
                :au_becs,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            BACS =
              T.let(
                :bacs,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            BASE =
              T.let(
                :base,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            BOOK =
              T.let(
                :book,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CARD =
              T.let(
                :card,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CHATS =
              T.let(
                :chats,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CHECK =
              T.let(
                :check,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CROSS_BORDER =
              T.let(
                :cross_border,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            DK_NETS =
              T.let(
                :dk_nets,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            EFT =
              T.let(
                :eft,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            ETHEREUM =
              T.let(
                :ethereum,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            GB_FPS =
              T.let(
                :gb_fps,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            HU_ICS =
              T.let(
                :hu_ics,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            INTERAC =
              T.let(
                :interac,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            MASAV =
              T.let(
                :masav,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            MX_CCEN =
              T.let(
                :mx_ccen,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NEFT =
              T.let(
                :neft,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NICS =
              T.let(
                :nics,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NZ_BECS =
              T.let(
                :nz_becs,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            PL_ELIXIR =
              T.let(
                :pl_elixir,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            POLYGON =
              T.let(
                :polygon,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            PROVXCHANGE =
              T.let(
                :provxchange,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            RO_SENT =
              T.let(
                :ro_sent,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SE_BANKGIROT =
              T.let(
                :se_bankgirot,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SEN =
              T.let(
                :sen,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SEPA =
              T.let(
                :sepa,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SG_GIRO =
              T.let(
                :sg_giro,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SIC =
              T.let(
                :sic,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SIGNET =
              T.let(
                :signet,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SKNBI =
              T.let(
                :sknbi,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SOLANA =
              T.let(
                :solana,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            WIRE =
              T.let(
                :wire,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            ZENGIN =
              T.let(
                :zengin,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ID < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::ID,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
              )
            )
          end
          attr_reader :accounting

          sig do
            params(
              accounting:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting::OrHash
            ).void
          end
          attr_writer :accounting

          # The ID of one of your accounting categories. Note that these will only be
          # accessible if your accounting system has been connected.
          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_category_id

          # The ID of one of your accounting ledger classes. Note that these will only be
          # accessible if your accounting system has been connected.
          sig { returns(T.nilable(String)) }
          attr_accessor :accounting_ledger_class_id

          # Value in specified currency's smallest unit. e.g. $10 would be represented as
          # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount

          sig { params(amount: Integer).void }
          attr_writer :amount

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
              )
            )
          end
          attr_accessor :charge_bearer

          # Required when receiving_account_id is passed the ID of an external account.
          sig { returns(T.nilable(String)) }
          attr_accessor :counterparty_id

          # Defaults to the currency of the originating account.
          sig { returns(T.nilable(ModernTreasury::Currency::OrSymbol)) }
          attr_reader :currency

          sig { params(currency: ModernTreasury::Currency::OrSymbol).void }
          attr_writer :currency

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol
            ).void
          end
          attr_writer :direction

          # Date transactions are to be posted to the participants' account. Defaults to the
          # current business day or the next business day if the current day is a bank
          # holiday or weekend. Format: yyyy-mm-dd.
          sig { returns(T.nilable(Date)) }
          attr_reader :effective_date

          sig { params(effective_date: Date).void }
          attr_writer :effective_date

          # RFP payments require an expires_at. This value must be past the effective_date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :expires_at

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol
              )
            )
          end
          attr_reader :fallback_type

          sig do
            params(
              fallback_type:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol
            ).void
          end
          attr_writer :fallback_type

          # If present, indicates a specific foreign exchange contract number that has been
          # generated by your financial institution.
          sig { returns(T.nilable(String)) }
          attr_accessor :foreign_exchange_contract

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
              )
            )
          end
          attr_accessor :foreign_exchange_indicator

          # An array of line items that must sum up to the amount of the payment order.
          sig do
            returns(
              T.nilable(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem
                ]
              )
            )
          end
          attr_reader :line_items

          sig do
            params(
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem::OrHash
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

          # A boolean to determine if NSF Protection is enabled for this payment order. Note
          # that this setting must also be turned on in your organization settings page.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :nsf_protected

          sig { params(nsf_protected: T::Boolean).void }
          attr_writer :nsf_protected

          # The ID of one of your organization's internal accounts.
          sig { returns(T.nilable(String)) }
          attr_reader :originating_account_id

          sig { params(originating_account_id: String).void }
          attr_writer :originating_account_id

          # If present, this will replace your default company name on receiver's bank
          # statement. This field can only be used for ACH payments currently. For ACH, only
          # the first 16 characters of this string will be used. Any additional characters
          # will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :originating_party_name

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol
              )
            )
          end
          attr_reader :priority

          sig do
            params(
              priority:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol
            ).void
          end
          attr_writer :priority

          # If present, Modern Treasury will not process the payment until after this time.
          # If `process_after` is past the cutoff for `effective_date`, `process_after` will
          # take precedence and `effective_date` will automatically update to reflect the
          # earliest possible sending date after `process_after`. Format is ISO8601
          # timestamp.
          sig { returns(T.nilable(Time)) }
          attr_accessor :process_after

          # For `wire`, this is usually the purpose which is transmitted via the
          # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
          # digit CPA Code that will be attached to the payment.
          sig { returns(T.nilable(String)) }
          attr_accessor :purpose

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          # `receiving_account_id`, you may pass the id of an external account or an
          # internal account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
              )
            )
          end
          attr_reader :receiving_account

          sig do
            params(
              receiving_account:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::OrHash
            ).void
          end
          attr_writer :receiving_account

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          # `receiving_account_id`, you may pass the id of an external account or an
          # internal account.
          sig { returns(T.nilable(String)) }
          attr_reader :receiving_account_id

          sig { params(receiving_account_id: String).void }
          attr_writer :receiving_account_id

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::OrSymbol
              )
            )
          end
          attr_reader :reconciliation_status

          sig do
            params(
              reconciliation_status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::OrSymbol
            ).void
          end
          attr_writer :reconciliation_status

          # For `ach`, this field will be passed through on an addenda record. For `wire`
          # payments the field will be passed through as the "Originator to Beneficiary
          # Information", also known as OBI or Fedwire tag 6000.
          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          # Send an email to the counterparty when the payment order is sent to the bank. If
          # `null`, `send_remittance_advice` on the Counterparty is used.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :send_remittance_advice

          # An optional descriptor which will appear in the receiver's statement. For
          # `check` payments this field will be used as the memo line. For `ach` the maximum
          # length is 10 characters. Note that for ACH payments, the name on your bank
          # account will be included automatically by the bank, so you can use the
          # characters for other useful information. For `eft` the maximum length is 15
          # characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          # use `approved`. To undo approval on a denied or approved payment order, use
          # `needs_approval`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # An additional layer of classification for the type of payment order you are
          # doing. This field is only used for `ach` payment orders currently. For `ach`
          # payment orders, the `subtype` represents the SEC code. We currently support
          # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          sig do
            returns(T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol))
          end
          attr_accessor :subtype

          # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          sig { returns(T.nilable(ModernTreasury::PaymentOrderType::OrSymbol)) }
          attr_reader :type

          sig { params(type: ModernTreasury::PaymentOrderType::OrSymbol).void }
          attr_writer :type

          # This represents the identifier by which the person is known to the receiver when
          # using the CIE subtype for ACH payments. Only the first 22 characters of this
          # string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_originating_party_identifier

          # This represents the name of the person that the payment is on behalf of when
          # using the CIE subtype for ACH payments. Only the first 15 characters of this
          # string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_originating_party_name

          # This represents the name of the merchant that the payment is being sent to when
          # using the CIE subtype for ACH payments. Only the first 22 characters of this
          # string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_receiving_party_identifier

          # This represents the identifier by which the merchant is known to the person
          # initiating an ACH payment with CIE subtype. Only the first 15 characters of this
          # string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          attr_accessor :ultimate_receiving_party_name

          sig do
            params(
              id: String,
              accounting:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting::OrHash,
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              amount: Integer,
              charge_bearer:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
                ),
              counterparty_id: T.nilable(String),
              currency: ModernTreasury::Currency::OrSymbol,
              description: T.nilable(String),
              direction:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol,
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
                ),
              line_items:
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem::OrHash
                ],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::OrHash,
              receiving_account_id: String,
              reconciliation_status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::OrSymbol,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              status:
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol,
              subtype: T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
              type: ModernTreasury::PaymentOrderType::OrSymbol,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            accounting: nil,
            # The ID of one of your accounting categories. Note that these will only be
            # accessible if your accounting system has been connected.
            accounting_category_id: nil,
            # The ID of one of your accounting ledger classes. Note that these will only be
            # accessible if your accounting system has been connected.
            accounting_ledger_class_id: nil,
            # Value in specified currency's smallest unit. e.g. $10 would be represented as
            # 1000 (cents). For RTP, the maximum amount allowed by the network is $100,000.
            amount: nil,
            # The party that will pay the fees for the payment order. See
            # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
            # differences between the options.
            charge_bearer: nil,
            # Required when receiving_account_id is passed the ID of an external account.
            counterparty_id: nil,
            # Defaults to the currency of the originating account.
            currency: nil,
            # An optional description for internal use.
            description: nil,
            # One of `credit`, `debit`. Describes the direction money is flowing in the
            # transaction. A `credit` moves money from your account to someone else's. A
            # `debit` pulls money from someone else's account to your own. Note that wire,
            # rtp, and check payments will always be `credit`.
            direction: nil,
            # Date transactions are to be posted to the participants' account. Defaults to the
            # current business day or the next business day if the current day is a bank
            # holiday or weekend. Format: yyyy-mm-dd.
            effective_date: nil,
            # RFP payments require an expires_at. This value must be past the effective_date.
            expires_at: nil,
            # A payment type to fallback to if the original type is not valid for the
            # receiving account. Currently, this only supports falling back from RTP to ACH
            # (type=rtp and fallback_type=ach)
            fallback_type: nil,
            # If present, indicates a specific foreign exchange contract number that has been
            # generated by your financial institution.
            foreign_exchange_contract: nil,
            # Indicates the type of FX transfer to initiate, can be either
            # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
            # currency matches the originating account currency.
            foreign_exchange_indicator: nil,
            # An array of line items that must sum up to the amount of the payment order.
            line_items: nil,
            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            metadata: nil,
            # A boolean to determine if NSF Protection is enabled for this payment order. Note
            # that this setting must also be turned on in your organization settings page.
            nsf_protected: nil,
            # The ID of one of your organization's internal accounts.
            originating_account_id: nil,
            # If present, this will replace your default company name on receiver's bank
            # statement. This field can only be used for ACH payments currently. For ACH, only
            # the first 16 characters of this string will be used. Any additional characters
            # will be truncated.
            originating_party_name: nil,
            # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
            # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
            # an overnight check rather than standard mail.
            priority: nil,
            # If present, Modern Treasury will not process the payment until after this time.
            # If `process_after` is past the cutoff for `effective_date`, `process_after` will
            # take precedence and `effective_date` will automatically update to reflect the
            # earliest possible sending date after `process_after`. Format is ISO8601
            # timestamp.
            process_after: nil,
            # For `wire`, this is usually the purpose which is transmitted via the
            # "InstrForDbtrAgt" field in the ISO20022 file. For `eft`, this field is the 3
            # digit CPA Code that will be attached to the payment.
            purpose: nil,
            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            receiving_account: nil,
            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            receiving_account_id: nil,
            # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
            reconciliation_status: nil,
            # For `ach`, this field will be passed through on an addenda record. For `wire`
            # payments the field will be passed through as the "Originator to Beneficiary
            # Information", also known as OBI or Fedwire tag 6000.
            remittance_information: nil,
            # Send an email to the counterparty when the payment order is sent to the bank. If
            # `null`, `send_remittance_advice` on the Counterparty is used.
            send_remittance_advice: nil,
            # An optional descriptor which will appear in the receiver's statement. For
            # `check` payments this field will be used as the memo line. For `ach` the maximum
            # length is 10 characters. Note that for ACH payments, the name on your bank
            # account will be included automatically by the bank, so you can use the
            # characters for other useful information. For `eft` the maximum length is 15
            # characters.
            statement_descriptor: nil,
            # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
            # use `approved`. To undo approval on a denied or approved payment order, use
            # `needs_approval`.
            status: nil,
            # An additional layer of classification for the type of payment order you are
            # doing. This field is only used for `ach` payment orders currently. For `ach`
            # payment orders, the `subtype` represents the SEC code. We currently support
            # `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
            subtype: nil,
            # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
            # `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
            # `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
            type: nil,
            # This represents the identifier by which the person is known to the receiver when
            # using the CIE subtype for ACH payments. Only the first 22 characters of this
            # string will be used. Any additional characters will be truncated.
            ultimate_originating_party_identifier: nil,
            # This represents the name of the person that the payment is on behalf of when
            # using the CIE subtype for ACH payments. Only the first 15 characters of this
            # string will be used. Any additional characters will be truncated.
            ultimate_originating_party_name: nil,
            # This represents the name of the merchant that the payment is being sent to when
            # using the CIE subtype for ACH payments. Only the first 22 characters of this
            # string will be used. Any additional characters will be truncated.
            ultimate_receiving_party_identifier: nil,
            # This represents the identifier by which the merchant is known to the person
            # initiating an ACH payment with CIE subtype. Only the first 15 characters of this
            # string will be used. Any additional characters will be truncated.
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                accounting:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                accounting_category_id: T.nilable(String),
                accounting_ledger_class_id: T.nilable(String),
                amount: Integer,
                charge_bearer:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
                  ),
                counterparty_id: T.nilable(String),
                currency: ModernTreasury::Currency::OrSymbol,
                description: T.nilable(String),
                direction:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol,
                effective_date: Date,
                expires_at: T.nilable(Time),
                fallback_type:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol,
                foreign_exchange_contract: T.nilable(String),
                foreign_exchange_indicator:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
                  ),
                line_items:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem
                  ],
                metadata: T::Hash[Symbol, String],
                nsf_protected: T::Boolean,
                originating_account_id: String,
                originating_party_name: T.nilable(String),
                priority:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol,
                process_after: T.nilable(Time),
                purpose: T.nilable(String),
                receiving_account:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                receiving_account_id: String,
                reconciliation_status:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::OrSymbol,
                remittance_information: T.nilable(String),
                send_remittance_advice: T.nilable(T::Boolean),
                statement_descriptor: T.nilable(String),
                status:
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol,
                subtype:
                  T.nilable(ModernTreasury::PaymentOrderSubtype::OrSymbol),
                type: ModernTreasury::PaymentOrderType::OrSymbol,
                ultimate_originating_party_identifier: T.nilable(String),
                ultimate_originating_party_name: T.nilable(String),
                ultimate_receiving_party_identifier: T.nilable(String),
                ultimate_receiving_party_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Accounting < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                  ModernTreasury::Internal::AnyHash
                )
              end

            # The ID of one of your accounting categories. Note that these will only be
            # accessible if your accounting system has been connected.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_id

            # The ID of one of the class objects in your accounting system. Class objects
            # track segments of your business independent of client or project. Note that
            # these will only be accessible if your accounting system has been connected.
            sig { returns(T.nilable(String)) }
            attr_accessor :class_id

            sig do
              params(
                account_id: T.nilable(String),
                class_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The ID of one of your accounting categories. Note that these will only be
              # accessible if your accounting system has been connected.
              account_id: nil,
              # The ID of one of the class objects in your accounting system. Class objects
              # track segments of your business independent of client or project. Note that
              # these will only be accessible if your accounting system has been connected.
              class_id: nil
            )
            end

            sig do
              override.returns(
                { account_id: T.nilable(String), class_id: T.nilable(String) }
              )
            end
            def to_hash
            end
          end

          # The party that will pay the fees for the payment order. See
          # https://docs.moderntreasury.com/payments/docs/charge-bearer to understand the
          # differences between the options.
          module ChargeBearer
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SHARED =
              T.let(
                :shared,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )
            SENDER =
              T.let(
                :sender,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )
            RECEIVER =
              T.let(
                :receiver,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          # transaction. A `credit` moves money from your account to someone else's. A
          # `debit` pulls money from someone else's account to your own. Note that wire,
          # rtp, and check payments will always be `credit`.
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # A payment type to fallback to if the original type is not valid for the
          # receiving account. Currently, this only supports falling back from RTP to ACH
          # (type=rtp and fallback_type=ach)
          module FallbackType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACH =
              T.let(
                :ach,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Indicates the type of FX transfer to initiate, can be either
          # `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          # currency matches the originating account currency.
          module ForeignExchangeIndicator
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED_TO_VARIABLE =
              T.let(
                :fixed_to_variable,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
              )
            VARIABLE_TO_FIXED =
              T.let(
                :variable_to_fixed,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem,
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

          # Either `normal` or `high`. For ACH and EFT payments, `high` represents a
          # same-day ACH or EFT transfer, respectively. For check payments, `high` can mean
          # an overnight check rather than standard mail.
          module Priority
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HIGH =
              T.let(
                :high,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
              )
            NORMAL =
              T.let(
                :normal,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ReceivingAccount < ModernTreasury::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                  ModernTreasury::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            attr_reader :account_details

            sig do
              params(
                account_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::OrHash
                  ]
              ).void
            end
            attr_writer :account_details

            # Can be `checking`, `savings` or `other`.
            sig do
              returns(T.nilable(ModernTreasury::ExternalAccountType::OrSymbol))
            end
            attr_reader :account_type

            sig do
              params(
                account_type: ModernTreasury::ExternalAccountType::OrSymbol
              ).void
            end
            attr_writer :account_type

            sig do
              returns(
                T.nilable(T::Array[ModernTreasury::ContactDetailCreateRequest])
              )
            end
            attr_reader :contact_details

            sig do
              params(
                contact_details:
                  T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash]
              ).void
            end
            attr_writer :contact_details

            # An optional user-defined 180 character unique identifier.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_id

            # Specifies a ledger account object that will be created with the external
            # account. The resulting ledger account is linked to the external account for
            # auto-ledgering Payment objects. See
            # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            # for more details.
            sig do
              returns(T.nilable(ModernTreasury::LedgerAccountCreateRequest))
            end
            attr_reader :ledger_account

            sig do
              params(
                ledger_account:
                  ModernTreasury::LedgerAccountCreateRequest::OrHash
              ).void
            end
            attr_writer :ledger_account

            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # A nickname for the external account. This is only for internal usage and won't
            # affect any payments
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Required if receiving wire payments.
            sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
            attr_reader :party_address

            sig do
              params(party_address: ModernTreasury::AddressRequest::OrHash).void
            end
            attr_writer :party_address

            sig { returns(T.nilable(String)) }
            attr_reader :party_identifier

            sig { params(party_identifier: String).void }
            attr_writer :party_identifier

            # If this value isn't provided, it will be inherited from the counterparty's name.
            sig { returns(T.nilable(String)) }
            attr_reader :party_name

            sig { params(party_name: String).void }
            attr_writer :party_name

            # Either `individual` or `business`.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                )
              )
            end
            attr_accessor :party_type

            # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
            # you can pass the processor token in this field.
            sig { returns(T.nilable(String)) }
            attr_reader :plaid_processor_token

            sig { params(plaid_processor_token: String).void }
            attr_writer :plaid_processor_token

            sig do
              returns(
                T.nilable(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            attr_reader :routing_details

            sig do
              params(
                routing_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::OrHash
                  ]
              ).void
            end
            attr_writer :routing_details

            # Either `receiving_account` or `receiving_account_id` must be present. When using
            # `receiving_account_id`, you may pass the id of an external account or an
            # internal account.
            sig do
              params(
                account_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::OrHash
                  ],
                account_type: ModernTreasury::ExternalAccountType::OrSymbol,
                contact_details:
                  T::Array[ModernTreasury::ContactDetailCreateRequest::OrHash],
                external_id: T.nilable(String),
                ledger_account:
                  ModernTreasury::LedgerAccountCreateRequest::OrHash,
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: ModernTreasury::AddressRequest::OrHash,
                party_identifier: String,
                party_name: String,
                party_type:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                  ),
                plaid_processor_token: String,
                routing_details:
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              account_details: nil,
              # Can be `checking`, `savings` or `other`.
              account_type: nil,
              contact_details: nil,
              # An optional user-defined 180 character unique identifier.
              external_id: nil,
              # Specifies a ledger account object that will be created with the external
              # account. The resulting ledger account is linked to the external account for
              # auto-ledgering Payment objects. See
              # https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
              # for more details.
              ledger_account: nil,
              # Additional data represented as key-value pairs. Both the key and value must be
              # strings.
              metadata: nil,
              # A nickname for the external account. This is only for internal usage and won't
              # affect any payments
              name: nil,
              # Required if receiving wire payments.
              party_address: nil,
              party_identifier: nil,
              # If this value isn't provided, it will be inherited from the counterparty's name.
              party_name: nil,
              # Either `individual` or `business`.
              party_type: nil,
              # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
              # you can pass the processor token in this field.
              plaid_processor_token: nil,
              routing_details: nil
            )
            end

            sig do
              override.returns(
                {
                  account_details:
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                    ],
                  account_type: ModernTreasury::ExternalAccountType::OrSymbol,
                  contact_details:
                    T::Array[ModernTreasury::ContactDetailCreateRequest],
                  external_id: T.nilable(String),
                  ledger_account: ModernTreasury::LedgerAccountCreateRequest,
                  metadata: T::Hash[Symbol, String],
                  name: T.nilable(String),
                  party_address: ModernTreasury::AddressRequest,
                  party_identifier: String,
                  party_name: String,
                  party_type:
                    T.nilable(
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                    ),
                  plaid_processor_token: String,
                  routing_details:
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                    ]
                }
              )
            end
            def to_hash
            end

            class AccountDetail < ModernTreasury::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail,
                    ModernTreasury::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :account_number

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
                )
              end
              attr_reader :account_number_type

              sig do
                params(
                  account_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                ).void
              end
              attr_writer :account_number_type

              sig do
                params(
                  account_number: String,
                  account_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(account_number:, account_number_type: nil)
              end

              sig do
                override.returns(
                  {
                    account_number: String,
                    account_number_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module AccountNumberType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AU_NUMBER =
                  T.let(
                    :au_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                BASE_ADDRESS =
                  T.let(
                    :base_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                CLABE =
                  T.let(
                    :clabe,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ETHEREUM_ADDRESS =
                  T.let(
                    :ethereum_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                HK_NUMBER =
                  T.let(
                    :hk_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                IBAN =
                  T.let(
                    :iban,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ID_NUMBER =
                  T.let(
                    :id_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                NZ_NUMBER =
                  T.let(
                    :nz_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                PAN =
                  T.let(
                    :pan,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                POLYGON_ADDRESS =
                  T.let(
                    :polygon_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SG_NUMBER =
                  T.let(
                    :sg_number,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SOLANA_ADDRESS =
                  T.let(
                    :solana_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                WALLET_ADDRESS =
                  T.let(
                    :wallet_address,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Either `individual` or `business`.
            module PartyType
              extend ModernTreasury::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail,
                    ModernTreasury::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :routing_number

              sig do
                returns(
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
              end
              attr_accessor :routing_number_type

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
                )
              end
              attr_reader :payment_type

              sig do
                params(
                  payment_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                ).void
              end
              attr_writer :payment_type

              sig do
                params(
                  routing_number: String,
                  routing_number_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                  payment_type:
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                routing_number:,
                routing_number_type:,
                payment_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    routing_number: String,
                    routing_number_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                    payment_type:
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoutingNumberType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ABA =
                  T.let(
                    :aba,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                AU_BSB =
                  T.let(
                    :au_bsb,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                BR_CODIGO =
                  T.let(
                    :br_codigo,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CA_CPA =
                  T.let(
                    :ca_cpa,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CHIPS =
                  T.let(
                    :chips,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CNAPS =
                  T.let(
                    :cnaps,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                DK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :dk_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                GB_SORT_CODE =
                  T.let(
                    :gb_sort_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hk_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HU_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hu_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ID_SKNBI_CODE =
                  T.let(
                    :id_sknbi_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IL_BANK_CODE =
                  T.let(
                    :il_bank_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IN_IFSC =
                  T.let(
                    :in_ifsc,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                JP_ZENGIN_CODE =
                  T.let(
                    :jp_zengin_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MY_BRANCH_CODE =
                  T.let(
                    :my_branch_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MX_BANK_IDENTIFIER =
                  T.let(
                    :mx_bank_identifier,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                NZ_NATIONAL_CLEARING_CODE =
                  T.let(
                    :nz_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                PL_NATIONAL_CLEARING_CODE =
                  T.let(
                    :pl_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SE_BANKGIRO_CLEARING_CODE =
                  T.let(
                    :se_bankgiro_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SG_INTERBANK_CLEARING_CODE =
                  T.let(
                    :sg_interbank_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SWIFT =
                  T.let(
                    :swift,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ZA_NATIONAL_CLEARING_CODE =
                  T.let(
                    :za_national_clearing_code,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module PaymentType
                extend ModernTreasury::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACH =
                  T.let(
                    :ach,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                AU_BECS =
                  T.let(
                    :au_becs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BACS =
                  T.let(
                    :bacs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BASE =
                  T.let(
                    :base,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BOOK =
                  T.let(
                    :book,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CARD =
                  T.let(
                    :card,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHATS =
                  T.let(
                    :chats,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHECK =
                  T.let(
                    :check,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CROSS_BORDER =
                  T.let(
                    :cross_border,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                DK_NETS =
                  T.let(
                    :dk_nets,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                EFT =
                  T.let(
                    :eft,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ETHEREUM =
                  T.let(
                    :ethereum,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                GB_FPS =
                  T.let(
                    :gb_fps,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                HU_ICS =
                  T.let(
                    :hu_ics,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                INTERAC =
                  T.let(
                    :interac,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MASAV =
                  T.let(
                    :masav,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MX_CCEN =
                  T.let(
                    :mx_ccen,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NEFT =
                  T.let(
                    :neft,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NICS =
                  T.let(
                    :nics,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NZ_BECS =
                  T.let(
                    :nz_becs,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PL_ELIXIR =
                  T.let(
                    :pl_elixir,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                POLYGON =
                  T.let(
                    :polygon,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PROVXCHANGE =
                  T.let(
                    :provxchange,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RO_SENT =
                  T.let(
                    :ro_sent,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RTP =
                  T.let(
                    :rtp,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SE_BANKGIROT =
                  T.let(
                    :se_bankgirot,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEN =
                  T.let(
                    :sen,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEPA =
                  T.let(
                    :sepa,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SG_GIRO =
                  T.let(
                    :sg_giro,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIC =
                  T.let(
                    :sic,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIGNET =
                  T.let(
                    :signet,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SKNBI =
                  T.let(
                    :sknbi,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SOLANA =
                  T.let(
                    :solana,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                WIRE =
                  T.let(
                    :wire,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ZENGIN =
                  T.let(
                    :zengin,
                    ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          # One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
          module ReconciliationStatus
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNRECONCILED =
              T.let(
                :unreconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::TaggedSymbol
              )
            TENTATIVELY_RECONCILED =
              T.let(
                :tentatively_reconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::TaggedSymbol
              )
            RECONCILED =
              T.let(
                :reconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReconciliationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          # use `approved`. To undo approval on a denied or approved payment order, use
          # `needs_approval`.
          module Status
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :approved,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            DENIED =
              T.let(
                :denied,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            HELD =
              T.let(
                :held,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            NEEDS_APPROVAL =
              T.let(
                :needs_approval,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            RETURNED =
              T.let(
                :returned,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            SENT =
              T.let(
                :sent,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            STOPPED =
              T.let(
                :stopped,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::OrSymbol
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::OrSymbol
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
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
          sig do
            returns(T.nilable(T::Array[ModernTreasury::ReconciliationRule]))
          end
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
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          attr_accessor :status

          # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          # sepa, signet, wire.
          sig do
            returns(T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol))
          end
          attr_accessor :type

          sig do
            params(
              id: String,
              amount_lower_bound: T.nilable(Integer),
              amount_reconciled: T.nilable(Integer),
              amount_reconciled_direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::OrSymbol
                ),
              amount_unreconciled: T.nilable(Integer),
              amount_unreconciled_direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::OrSymbol
                ),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(ModernTreasury::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction:
                T.nilable(
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
                ),
              type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
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
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_lower_bound: T.nilable(Integer),
                amount_reconciled: T.nilable(Integer),
                amount_reconciled_direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::OrSymbol
                  ),
                amount_unreconciled: T.nilable(Integer),
                amount_unreconciled_direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::OrSymbol
                  ),
                amount_upper_bound: T.nilable(Integer),
                counterparty_id: T.nilable(String),
                currency: T.nilable(ModernTreasury::Currency::OrSymbol),
                date_lower_bound: T.nilable(Date),
                date_upper_bound: T.nilable(Date),
                description: T.nilable(String),
                direction:
                  T.nilable(
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
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
                    ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
                  ),
                type: T.nilable(ModernTreasury::ExpectedPaymentType::OrSymbol)
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountReconciledDirection::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::AmountUnreconciledDirection::TaggedSymbol
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
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
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
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECONCILED =
              T.let(
                :reconciled,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Additional data in the form of key-value pairs. Pairs can be removed by passing
          # an empty string or `null` as the value.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig do
            params(id: String, metadata: T::Hash[Symbol, String]).returns(
              T.attached_class
            )
          end
          def self.new(
            id: nil,
            # Additional data in the form of key-value pairs. Pairs can be removed by passing
            # an empty string or `null` as the value.
            metadata: nil
          )
          end

          sig do
            override.returns({ id: String, metadata: T::Hash[Symbol, String] })
          end
          def to_hash
          end
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The timestamp (ISO8601 format) at which the ledger transaction happened for
          # reporting purposes.
          sig { returns(T.nilable(Time)) }
          attr_reader :effective_at

          sig { params(effective_at: Time).void }
          attr_writer :effective_at

          # An array of ledger entry objects.
          sig do
            returns(
              T.nilable(T::Array[ModernTreasury::LedgerEntryCreateRequest])
            )
          end
          attr_reader :ledger_entries

          sig do
            params(
              ledger_entries:
                T::Array[ModernTreasury::LedgerEntryCreateRequest::OrHash]
            ).void
          end
          attr_writer :ledger_entries

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the id will be populated here, otherwise null.
          sig { returns(T.nilable(String)) }
          attr_reader :ledgerable_id

          sig { params(ledgerable_id: String).void }
          attr_writer :ledgerable_id

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol
              )
            )
          end
          attr_reader :ledgerable_type

          sig do
            params(
              ledgerable_type:
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol
            ).void
          end
          attr_writer :ledgerable_type

          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # To post a ledger transaction at creation, use `posted`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries:
                T::Array[ModernTreasury::LedgerEntryCreateRequest::OrHash],
              ledgerable_id: String,
              ledgerable_type:
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status:
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            # An optional description for internal use.
            description: nil,
            # The timestamp (ISO8601 format) at which the ledger transaction happened for
            # reporting purposes.
            effective_at: nil,
            # An array of ledger entry objects.
            ledger_entries: nil,
            # If the ledger transaction can be reconciled to another object in Modern
            # Treasury, the id will be populated here, otherwise null.
            ledgerable_id: nil,
            # If the ledger transaction can be reconciled to another object in Modern
            # Treasury, the type will be populated here, otherwise null. This can be one of
            # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
            ledgerable_type: nil,
            # Additional data represented as key-value pairs. Both the key and value must be
            # strings.
            metadata: nil,
            # To post a ledger transaction at creation, use `posted`.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                description: T.nilable(String),
                effective_at: Time,
                ledger_entries:
                  T::Array[ModernTreasury::LedgerEntryCreateRequest],
                ledgerable_id: String,
                ledgerable_type:
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String],
                status:
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # If the ledger transaction can be reconciled to another object in Modern
          # Treasury, the type will be populated here, otherwise null. This can be one of
          # payment_order, incoming_payment_detail, expected_payment, return, or reversal.
          module LedgerableType
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXPECTED_PAYMENT =
              T.let(
                :expected_payment,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            INCOMING_PAYMENT_DETAIL =
              T.let(
                :incoming_payment_detail,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            PAYMENT_ORDER =
              T.let(
                :payment_order,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            RETURN =
              T.let(
                :return,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            REVERSAL =
              T.let(
                :reversal,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # To post a ledger transaction at creation, use `posted`.
          module Status
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              ModernTreasury::BulkRequestCreateParams::Resource::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
