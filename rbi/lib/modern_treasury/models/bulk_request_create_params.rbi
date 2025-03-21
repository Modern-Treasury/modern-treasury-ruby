# typed: strong

module ModernTreasury
  module Models
    class BulkRequestCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # One of create, or update.
      sig { returns(ModernTreasury::Models::BulkRequestCreateParams::ActionType::OrSymbol) }
      def action_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequestCreateParams::ActionType::OrSymbol)
          .returns(ModernTreasury::Models::BulkRequestCreateParams::ActionType::OrSymbol)
      end
      def action_type=(_)
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      sig { returns(ModernTreasury::Models::BulkRequestCreateParams::ResourceType::OrSymbol) }
      def resource_type
      end

      sig do
        params(_: ModernTreasury::Models::BulkRequestCreateParams::ResourceType::OrSymbol)
          .returns(ModernTreasury::Models::BulkRequestCreateParams::ResourceType::OrSymbol)
      end
      def resource_type=(_)
      end

      # An array of objects where each object contains the input params for a single
      #   `action_type` request on a `resource_type` resource
      sig do
        returns(
          T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ]
        )
      end
      def resources
      end

      sig do
        params(
          _: T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
            )
            ]
          )
      end
      def resources=(_)
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
          action_type: ModernTreasury::Models::BulkRequestCreateParams::ActionType::OrSymbol,
          resource_type: ModernTreasury::Models::BulkRequestCreateParams::ResourceType::OrSymbol,
          resources: T::Array[
          T.any(
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
            ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
          )
          ],
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(action_type:, resource_type:, resources:, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              action_type: ModernTreasury::Models::BulkRequestCreateParams::ActionType::OrSymbol,
              resource_type: ModernTreasury::Models::BulkRequestCreateParams::ResourceType::OrSymbol,
              resources: T::Array[
              T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
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
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequestCreateParams::ActionType::TaggedSymbol) }

        CREATE = T.let(:create, ModernTreasury::Models::BulkRequestCreateParams::ActionType::TaggedSymbol)
        UPDATE = T.let(:update, ModernTreasury::Models::BulkRequestCreateParams::ActionType::TaggedSymbol)
        DELETE = T.let(:delete, ModernTreasury::Models::BulkRequestCreateParams::ActionType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestCreateParams::ActionType::TaggedSymbol]) }
          def values
          end
        end
      end

      # One of payment_order, expected_payment, or ledger_transaction.
      module ResourceType
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol) }

        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol)
        LEDGER_TRANSACTION =
          T.let(:ledger_transaction, ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol)
        TRANSACTION =
          T.let(:transaction, ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol)
        EXPECTED_PAYMENT =
          T.let(:expected_payment, ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::BulkRequestCreateParams::ResourceType::TaggedSymbol]) }
          def values
          end
        end
      end

      module Resource
        extend ModernTreasury::Union

        Variants =
          type_template(:out) do
            {
              fixed: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID
              )
            }
          end

        class PaymentOrderAsyncCreateRequest < ModernTreasury::BaseModel
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
          sig do
            returns(
              ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol
            )
          end
          def direction
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol
              )
          end
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
          sig { returns(ModernTreasury::Models::PaymentOrderType::OrSymbol) }
          def type
          end

          sig do
            params(_: ModernTreasury::Models::PaymentOrderType::OrSymbol)
              .returns(ModernTreasury::Models::PaymentOrderType::OrSymbol)
          end
          def type=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting
              )
            )
          end
          def accounting
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                  ModernTreasury::Util::AnyHash
                )
              )
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
              )
            )
          end
          def charge_bearer
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
                )
              )
          end
          def charge_bearer=(_)
          end

          # Defaults to the currency of the originating account.
          sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
          def currency
          end

          sig { params(_: ModernTreasury::Models::Currency::OrSymbol).returns(ModernTreasury::Models::Currency::OrSymbol) }
          def currency=(_)
          end

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol
              )
            )
          end
          def fallback_type
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol
              )
          end
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
              )
            )
          end
          def foreign_exchange_indicator
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
                )
              )
          end
          def foreign_exchange_indicator=(_)
          end

          # Specifies a ledger transaction object that will be created with the payment
          #   order. If the ledger transaction cannot be created, then the payment order
          #   creation will fail. The resulting ledger transaction will mirror the status of
          #   the payment order.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction
              )
            )
          end
          def ledger_transaction
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
                  ModernTreasury::Util::AnyHash
                )
              )
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
          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem]
              )
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol
              )
            )
          end
          def priority
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol
              )
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

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount
              )
            )
          end
          def receiving_account
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                  ModernTreasury::Util::AnyHash
                )
              )
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
          sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)) }
          def subtype
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol))
          end
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
              direction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol,
              originating_account_id: String,
              type: ModernTreasury::Models::PaymentOrderType::OrSymbol,
              accounting: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                ModernTreasury::Util::AnyHash
              ),
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              charge_bearer: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
              ),
              currency: ModernTreasury::Models::Currency::OrSymbol,
              description: T.nilable(String),
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
              ),
              ledger_transaction: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
                ModernTreasury::Util::AnyHash
              ),
              ledger_transaction_id: String,
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_party_name: T.nilable(String),
              priority: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                ModernTreasury::Util::AnyHash
              ),
              receiving_account_id: String,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol),
              transaction_monitoring_enabled: T::Boolean,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String)
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
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  direction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::OrSymbol,
                  originating_account_id: String,
                  type: ModernTreasury::Models::PaymentOrderType::OrSymbol,
                  accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Accounting,
                  accounting_category_id: T.nilable(String),
                  accounting_ledger_class_id: T.nilable(String),
                  charge_bearer: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::OrSymbol
                  ),
                  currency: ModernTreasury::Models::Currency::OrSymbol,
                  description: T.nilable(String),
                  effective_date: Date,
                  expires_at: T.nilable(Time),
                  fallback_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::OrSymbol,
                  foreign_exchange_contract: T.nilable(String),
                  foreign_exchange_indicator: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::OrSymbol
                  ),
                  ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction,
                  ledger_transaction_id: String,
                  line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LineItem],
                  metadata: T::Hash[Symbol, String],
                  nsf_protected: T::Boolean,
                  originating_party_name: T.nilable(String),
                  priority: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::OrSymbol,
                  process_after: T.nilable(Time),
                  purpose: T.nilable(String),
                  receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount,
                  receiving_account_id: String,
                  remittance_information: T.nilable(String),
                  send_remittance_advice: T.nilable(T::Boolean),
                  statement_descriptor: T.nilable(String),
                  subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol),
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
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          module Direction
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
                )
              end

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Direction::TaggedSymbol
                    ]
                  )
              end
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

            sig do
              params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class)
            end
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

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
                )
              end

            SHARED =
              T.let(
                :shared,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )
            SENDER =
              T.let(
                :sender,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )
            RECEIVER =
              T.let(
                :receiver,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ChargeBearer::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # A payment type to fallback to if the original type is not valid for the
          #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   (type=rtp and fallback_type=ach)
          module FallbackType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::TaggedSymbol
                )
              end

            ACH =
              T.let(
                :ach,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::FallbackType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # Indicates the type of FX transfer to initiate, can be either
          #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   currency matches the originating account currency.
          module ForeignExchangeIndicator
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
                )
              end

            FIXED_TO_VARIABLE =
              T.let(
                :fixed_to_variable,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
              )
            VARIABLE_TO_FIXED =
              T.let(
                :variable_to_fixed,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ForeignExchangeIndicator::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          class LedgerTransaction < ModernTreasury::BaseModel
            # An array of ledger entry objects.
            sig do
              returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
            end
            def ledger_entries
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                  ]
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
                )
              )
            end
            def ledgerable_type
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
                )
            end
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::OrSymbol
                )
              )
            end
            def status
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::OrSymbol
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::OrSymbol
                )
            end
            def status=(_)
            end

            # Specifies a ledger transaction object that will be created with the payment
            #   order. If the ledger transaction cannot be created, then the payment order
            #   creation will fail. The resulting ledger transaction will mirror the status of
            #   the payment order.
            sig do
              params(
                ledger_entries: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                ],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String],
                status: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::OrSymbol
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
                    ledger_entries: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerEntry
                    ],
                    description: T.nilable(String),
                    effective_at: Time,
                    effective_date: Date,
                    external_id: String,
                    ledgerable_id: String,
                    ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::OrSymbol,
                    metadata: T::Hash[Symbol, String],
                    status: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::OrSymbol
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
              sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
              def direction
              end

              sig do
                params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                  .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
              end
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

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
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

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def pending_balance_amount=(_)
              end

              # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   account’s posted balance. If any of these conditions would be false after the
              #   transaction is created, the entire call will fail with error code 422.
              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def posted_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
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
                  direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
                      direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
            module LedgerableType
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                  )
                end

              EXPECTED_PAYMENT =
                T.let(
                  :expected_payment,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              INCOMING_PAYMENT_DETAIL =
                T.let(
                  :incoming_payment_detail,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              PAPER_ITEM =
                T.let(
                  :paper_item,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              PAYMENT_ORDER =
                T.let(
                  :payment_order,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              RETURN =
                T.let(
                  :return,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              REVERSAL =
                T.let(
                  :reversal,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # To post a ledger transaction at creation, use `posted`.
            module Status
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::TaggedSymbol
                  )
                end

              ARCHIVED =
                T.let(
                  :archived,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )
              POSTED =
                T.let(
                  :posted,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::LedgerTransaction::Status::TaggedSymbol
                      ]
                    )
                end
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
          module Priority
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
                )
              end

            HIGH =
              T.let(
                :high,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
              )
            NORMAL =
              T.let(
                :normal,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::Priority::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          class ReceivingAccount < ModernTreasury::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            def account_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                  ]
                )
            end
            def account_details=(_)
            end

            # Can be `checking`, `savings` or `other`.
            sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
            def account_type
            end

            sig do
              params(_: ModernTreasury::Models::ExternalAccountType::OrSymbol)
                .returns(ModernTreasury::Models::ExternalAccountType::OrSymbol)
            end
            def account_type=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                  ]
                )
              )
            end
            def contact_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                  ]
                )
            end
            def contact_details=(_)
            end

            # Specifies a ledger account object that will be created with the external
            #   account. The resulting ledger account is linked to the external account for
            #   auto-ledgering Payment objects. See
            #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   for more details.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount
                )
              )
            end
            def ledger_account
            end

            sig do
              params(
                _: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                  ModernTreasury::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                    ModernTreasury::Util::AnyHash
                  )
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress
                )
              )
            end
            def party_address
            end

            sig do
              params(
                _: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                  ModernTreasury::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                    ModernTreasury::Util::AnyHash
                  )
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                )
              )
            end
            def party_type
            end

            sig do
              params(
                _: T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                )
              )
                .returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                  )
                )
            end
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            def routing_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                  ]
                )
            end
            def routing_details=(_)
            end

            # Either `receiving_account` or `receiving_account_id` must be present. When using
            #   `receiving_account_id`, you may pass the id of an external account or an
            #   internal account.
            sig do
              params(
                account_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                ],
                account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
                contact_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                ],
                ledger_account: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                  ModernTreasury::Util::AnyHash
                ),
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                  ModernTreasury::Util::AnyHash
                ),
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                ),
                plaid_processor_token: String,
                routing_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                ]
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
                    account_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail
                    ],
                    account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
                    contact_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail
                    ],
                    ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount,
                    metadata: T::Hash[Symbol, String],
                    name: T.nilable(String),
                    party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyAddress,
                    party_identifier: String,
                    party_name: String,
                    party_type: T.nilable(
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::OrSymbol
                    ),
                    plaid_processor_token: String,
                    routing_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail
                    ]
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

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
                )
              end
              def account_number_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
              end
              def account_number_type=(_)
              end

              sig do
                params(
                  account_number: String,
                  account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(account_number:, account_number_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      account_number: String,
                      account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module AccountNumberType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                    )
                  end

                AU_NUMBER =
                  T.let(
                    :au_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                CLABE =
                  T.let(
                    :clabe,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                HK_NUMBER =
                  T.let(
                    :hk_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                IBAN =
                  T.let(
                    :iban,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ID_NUMBER =
                  T.let(
                    :id_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                NZ_NUMBER =
                  T.let(
                    :nz_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                PAN =
                  T.let(
                    :pan,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SG_NUMBER =
                  T.let(
                    :sg_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                WALLET_ADDRESS =
                  T.let(
                    :wallet_address,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                        ]
                      )
                  end
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

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                  )
                )
              end
              def contact_identifier_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                  )
              end
              def contact_identifier_type=(_)
              end

              sig do
                params(
                  contact_identifier: String,
                  contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(contact_identifier: nil, contact_identifier_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      contact_identifier: String,
                      contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module ContactIdentifierType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                    )
                  end

                EMAIL =
                  T.let(
                    :email,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )
                PHONE_NUMBER =
                  T.let(
                    :phone_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )
                WEBSITE =
                  T.let(
                    :website,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                        ]
                      )
                  end
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
              sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
              def normal_balance
              end

              sig do
                params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                  .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
              end
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
              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                  )
                )
              end
              def ledgerable_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                  )
              end
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
                  normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol,
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
                      normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                      currency_exponent: T.nilable(Integer),
                      description: T.nilable(String),
                      ledger_account_category_ids: T::Array[String],
                      ledgerable_id: String,
                      ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol,
                      metadata: T::Hash[Symbol, String]
                    }
                  )
              end
              def to_hash
              end

              # If the ledger account links to another object in Modern Treasury, the type will
              #   be populated here, otherwise null. The value is one of internal_account or
              #   external_account.
              module LedgerableType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                    )
                  end

                COUNTERPARTY =
                  T.let(
                    :counterparty,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                EXTERNAL_ACCOUNT =
                  T.let(
                    :external_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                INTERNAL_ACCOUNT =
                  T.let(
                    :internal_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                VIRTUAL_ACCOUNT =
                  T.let(
                    :virtual_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                        ]
                      )
                  end
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
            module PartyType
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                  )
                end

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::PartyType::TaggedSymbol
                      ]
                    )
                end
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

              sig do
                returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
              end
              def routing_number_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                  )
              end
              def routing_number_type=(_)
              end

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
                )
              end
              def payment_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
              end
              def payment_type=(_)
              end

              sig do
                params(
                  routing_number: String,
                  routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                  payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(routing_number:, routing_number_type:, payment_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      routing_number: String,
                      routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                      payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module RoutingNumberType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                    )
                  end

                ABA =
                  T.let(
                    :aba,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                AU_BSB =
                  T.let(
                    :au_bsb,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                BR_CODIGO =
                  T.let(
                    :br_codigo,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CA_CPA =
                  T.let(
                    :ca_cpa,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CHIPS =
                  T.let(
                    :chips,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CNAPS =
                  T.let(
                    :cnaps,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                DK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :dk_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                GB_SORT_CODE =
                  T.let(
                    :gb_sort_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hk_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HU_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hu_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ID_SKNBI_CODE =
                  T.let(
                    :id_sknbi_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IN_IFSC =
                  T.let(
                    :in_ifsc,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                JP_ZENGIN_CODE =
                  T.let(
                    :jp_zengin_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MY_BRANCH_CODE =
                  T.let(
                    :my_branch_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MX_BANK_IDENTIFIER =
                  T.let(
                    :mx_bank_identifier,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                NZ_NATIONAL_CLEARING_CODE =
                  T.let(
                    :nz_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                PL_NATIONAL_CLEARING_CODE =
                  T.let(
                    :pl_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SE_BANKGIRO_CLEARING_CODE =
                  T.let(
                    :se_bankgiro_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SG_INTERBANK_CLEARING_CODE =
                  T.let(
                    :sg_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SWIFT =
                  T.let(
                    :swift,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ZA_NATIONAL_CLEARING_CODE =
                  T.let(
                    :za_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end

              module PaymentType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                    )
                  end

                ACH =
                  T.let(
                    :ach,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                AU_BECS =
                  T.let(
                    :au_becs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BACS =
                  T.let(
                    :bacs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BOOK =
                  T.let(
                    :book,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CARD =
                  T.let(
                    :card,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHATS =
                  T.let(
                    :chats,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHECK =
                  T.let(
                    :check,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CROSS_BORDER =
                  T.let(
                    :cross_border,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                DK_NETS =
                  T.let(
                    :dk_nets,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                EFT =
                  T.let(
                    :eft,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                HU_ICS =
                  T.let(
                    :hu_ics,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                INTERAC =
                  T.let(
                    :interac,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MASAV =
                  T.let(
                    :masav,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MX_CCEN =
                  T.let(
                    :mx_ccen,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NEFT =
                  T.let(
                    :neft,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NICS =
                  T.let(
                    :nics,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NZ_BECS =
                  T.let(
                    :nz_becs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PL_ELIXIR =
                  T.let(
                    :pl_elixir,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PROVXCHANGE =
                  T.let(
                    :provxchange,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RO_SENT =
                  T.let(
                    :ro_sent,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RTP =
                  T.let(
                    :rtp,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SE_BANKGIROT =
                  T.let(
                    :se_bankgirot,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEN =
                  T.let(
                    :sen,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEPA =
                  T.let(
                    :sepa,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SG_GIRO =
                  T.let(
                    :sg_giro,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIC =
                  T.let(
                    :sic,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIGNET =
                  T.let(
                    :signet,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SKNBI =
                  T.let(
                    :sknbi,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                WIRE =
                  T.let(
                    :wire,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ZENGIN =
                  T.let(
                    :zengin,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end
          end
        end

        class ExpectedPaymentCreateRequest < ModernTreasury::BaseModel
          # The lowest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          sig { returns(T.nilable(Integer)) }
          def amount_lower_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_lower_bound=(_)
          end

          # The highest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          sig { returns(T.nilable(Integer)) }
          def amount_upper_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_upper_bound=(_)
          end

          # The ID of the counterparty you expect for this payment.
          sig { returns(T.nilable(String)) }
          def counterparty_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def counterparty_id=(_)
          end

          # Must conform to ISO 4217. Defaults to the currency of the internal account.
          sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
          def currency
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::Currency::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol))
          end
          def currency=(_)
          end

          # The earliest date the payment may come in. Format: yyyy-mm-dd
          sig { returns(T.nilable(Date)) }
          def date_lower_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_lower_bound=(_)
          end

          # The latest date the payment may come in. Format: yyyy-mm-dd
          sig { returns(T.nilable(Date)) }
          def date_upper_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_upper_bound=(_)
          end

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
              )
            )
          end
          def direction
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
                )
              )
          end
          def direction=(_)
          end

          # The ID of the Internal Account for the expected payment.
          sig { returns(T.nilable(String)) }
          def internal_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def internal_account_id=(_)
          end

          # Specifies a ledger transaction object that will be created with the expected
          #   payment. If the ledger transaction cannot be created, then the expected payment
          #   creation will fail. The resulting ledger transaction will mirror the status of
          #   the expected payment.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction
              )
            )
          end
          def ledger_transaction
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
                  ModernTreasury::Util::AnyHash
                )
              )
          end
          def ledger_transaction=(_)
          end

          # Either ledger_transaction or ledger_transaction_id can be provided. Only a
          #   pending ledger transaction can be attached upon expected payment creation. Once
          #   the expected payment is created, the status of the ledger transaction tracks the
          #   expected payment automatically.
          sig { returns(T.nilable(String)) }
          def ledger_transaction_id
          end

          sig { params(_: String).returns(String) }
          def ledger_transaction_id=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem]
              )
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

          # The reconciliation filters you have for this payment.
          sig { returns(T.nilable(T.anything)) }
          def reconciliation_filters
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_filters=(_)
          end

          # The reconciliation groups you have for this payment.
          sig { returns(T.nilable(T.anything)) }
          def reconciliation_groups
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_groups=(_)
          end

          # An array of reconciliation rule variables for this payment.
          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          def reconciliation_rule_variables
          end

          sig do
            params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
              .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          end
          def reconciliation_rule_variables=(_)
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

          # The statement description you expect to see on the transaction. For ACH
          #   payments, this will be the full line item passed from the bank. For wire
          #   payments, this will be the OBI field on the wire. For check payments, this will
          #   be the memo field.
          sig { returns(T.nilable(String)) }
          def statement_descriptor
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_)
          end

          # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   sepa, signet, wire.
          sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
          end
          def type=(_)
          end

          sig do
            params(
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
              ),
              internal_account_id: T.nilable(String),
              ledger_transaction: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
                ModernTreasury::Util::AnyHash
              ),
              ledger_transaction_id: String,
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem],
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount_lower_bound: nil,
            amount_upper_bound: nil,
            counterparty_id: nil,
            currency: nil,
            date_lower_bound: nil,
            date_upper_bound: nil,
            description: nil,
            direction: nil,
            internal_account_id: nil,
            ledger_transaction: nil,
            ledger_transaction_id: nil,
            line_items: nil,
            metadata: nil,
            reconciliation_filters: nil,
            reconciliation_groups: nil,
            reconciliation_rule_variables: nil,
            remittance_information: nil,
            statement_descriptor: nil,
            type: nil
          )
          end

          sig do
            override
              .returns(
                {
                  amount_lower_bound: T.nilable(Integer),
                  amount_upper_bound: T.nilable(Integer),
                  counterparty_id: T.nilable(String),
                  currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
                  date_lower_bound: T.nilable(Date),
                  date_upper_bound: T.nilable(Date),
                  description: T.nilable(String),
                  direction: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::OrSymbol
                  ),
                  internal_account_id: T.nilable(String),
                  ledger_transaction: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction,
                  ledger_transaction_id: String,
                  line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LineItem],
                  metadata: T::Hash[Symbol, String],
                  reconciliation_filters: T.nilable(T.anything),
                  reconciliation_groups: T.nilable(T.anything),
                  reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
                  remittance_information: T.nilable(String),
                  statement_descriptor: T.nilable(String),
                  type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
                }
              )
          end
          def to_hash
          end

          # One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          module Direction
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
                )
              end

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::Direction::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          class LedgerTransaction < ModernTreasury::BaseModel
            # An array of ledger entry objects.
            sig do
              returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
            end
            def ledger_entries
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                  ]
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
                )
              )
            end
            def ledgerable_type
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::OrSymbol
                )
            end
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::OrSymbol
                )
              )
            end
            def status
            end

            sig do
              params(
                _: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::OrSymbol
              )
                .returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::OrSymbol
                )
            end
            def status=(_)
            end

            # Specifies a ledger transaction object that will be created with the expected
            #   payment. If the ledger transaction cannot be created, then the expected payment
            #   creation will fail. The resulting ledger transaction will mirror the status of
            #   the expected payment.
            sig do
              params(
                ledger_entries: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                ],
                description: T.nilable(String),
                effective_at: Time,
                effective_date: Date,
                external_id: String,
                ledgerable_id: String,
                ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::OrSymbol,
                metadata: T::Hash[Symbol, String],
                status: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::OrSymbol
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
                    ledger_entries: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerEntry
                    ],
                    description: T.nilable(String),
                    effective_at: Time,
                    effective_date: Date,
                    external_id: String,
                    ledgerable_id: String,
                    ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::OrSymbol,
                    metadata: T::Hash[Symbol, String],
                    status: ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::OrSymbol
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
              sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
              def direction
              end

              sig do
                params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                  .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
              end
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

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
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

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
              def pending_balance_amount=(_)
              end

              # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
              #   account’s posted balance. If any of these conditions would be false after the
              #   transaction is created, the entire call will fail with error code 422.
              sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
              def posted_balance_amount
              end

              sig do
                params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
              end
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
                  direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
                      direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
            module LedgerableType
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                  )
                end

              EXPECTED_PAYMENT =
                T.let(
                  :expected_payment,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              INCOMING_PAYMENT_DETAIL =
                T.let(
                  :incoming_payment_detail,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              PAPER_ITEM =
                T.let(
                  :paper_item,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              PAYMENT_ORDER =
                T.let(
                  :payment_order,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              RETURN =
                T.let(
                  :return,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )
              REVERSAL =
                T.let(
                  :reversal,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::LedgerableType::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # To post a ledger transaction at creation, use `posted`.
            module Status
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::TaggedSymbol
                  )
                end

              ARCHIVED =
                T.let(
                  :archived,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )
              POSTED =
                T.let(
                  :posted,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest::LedgerTransaction::Status::TaggedSymbol
                      ]
                    )
                end
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
        end

        class LedgerTransactionCreateRequest < ModernTreasury::BaseModel
          # An array of ledger entry objects.
          sig do
            returns(
              T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
            )
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry]
              )
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::OrSymbol
              )
            )
          end
          def ledgerable_type
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::OrSymbol
              )
          end
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::OrSymbol
              )
            )
          end
          def status
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::OrSymbol
              )
          end
          def status=(_)
          end

          sig do
            params(
              ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry],
              description: T.nilable(String),
              effective_at: Time,
              effective_date: Date,
              external_id: String,
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::OrSymbol
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
                  ledger_entries: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerEntry],
                  description: T.nilable(String),
                  effective_at: Time,
                  effective_date: Date,
                  external_id: String,
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::OrSymbol,
                  metadata: T::Hash[Symbol, String],
                  status: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::OrSymbol
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
            sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
            def direction
            end

            sig do
              params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
            end
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

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
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

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def pending_balance_amount=(_)
            end

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   account’s posted balance. If any of these conditions would be false after the
            #   transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def posted_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
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
                direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
                    direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
          module LedgerableType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
                )
              end

            EXPECTED_PAYMENT =
              T.let(
                :expected_payment,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )
            INCOMING_PAYMENT_DETAIL =
              T.let(
                :incoming_payment_detail,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )
            PAPER_ITEM =
              T.let(
                :paper_item,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )
            PAYMENT_ORDER =
              T.let(
                :payment_order,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )
            RETURN =
              T.let(
                :return,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )
            REVERSAL =
              T.let(
                :reversal,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::LedgerableType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # To post a ledger transaction at creation, use `posted`.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::TaggedSymbol
                )
              end

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::TaggedSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest::Status::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end

        class TransactionCreateRequest < ModernTreasury::BaseModel
          # Value in specified currency's smallest unit. e.g. $10 would be represented
          #   as 1000.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The date on which the transaction occurred.
          sig { returns(T.nilable(Date)) }
          def as_of_date
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def as_of_date=(_)
          end

          # Either `credit` or `debit`.
          sig { returns(String) }
          def direction
          end

          sig { params(_: String).returns(String) }
          def direction=(_)
          end

          # The ID of the relevant Internal Account.
          sig { returns(String) }
          def internal_account_id
          end

          sig { params(_: String).returns(String) }
          def internal_account_id=(_)
          end

          # When applicable, the bank-given code that determines the transaction's category.
          #   For most banks this is the BAI2/BTRS transaction code.
          sig { returns(T.nilable(String)) }
          def vendor_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_code=(_)
          end

          # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
          #   `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
          #   `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
          #   `swift`, `us_bank`, or others.
          sig { returns(T.nilable(String)) }
          def vendor_code_type
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_code_type=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # This field will be `true` if the transaction has posted to the account.
          sig { returns(T.nilable(T::Boolean)) }
          def posted
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def posted=(_)
          end

          # The type of the transaction. Examples could be
          #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
              )
            )
          end
          def type
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
                )
              )
          end
          def type=(_)
          end

          # The transaction detail text that often appears in on your bank statement and in
          #   your banking portal.
          sig { returns(T.nilable(String)) }
          def vendor_description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def vendor_description=(_)
          end

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
              type: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
              ),
              vendor_description: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            as_of_date:,
            direction:,
            internal_account_id:,
            vendor_code:,
            vendor_code_type:,
            metadata: nil,
            posted: nil,
            type: nil,
            vendor_description: nil
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  as_of_date: T.nilable(Date),
                  direction: String,
                  internal_account_id: String,
                  vendor_code: T.nilable(String),
                  vendor_code_type: T.nilable(String),
                  metadata: T::Hash[Symbol, String],
                  posted: T::Boolean,
                  type: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::OrSymbol
                  ),
                  vendor_description: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The type of the transaction. Examples could be
          #   `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
          module Type
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
                )
              end

            ACH =
              T.let(
                :ach,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            AU_BECS =
              T.let(
                :au_becs,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            BACS =
              T.let(
                :bacs,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            BOOK =
              T.let(
                :book,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CARD =
              T.let(
                :card,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CHATS =
              T.let(
                :chats,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CHECK =
              T.let(
                :check,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            CROSS_BORDER =
              T.let(
                :cross_border,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            DK_NETS =
              T.let(
                :dk_nets,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            EFT =
              T.let(
                :eft,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            HU_ICS =
              T.let(
                :hu_ics,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            INTERAC =
              T.let(
                :interac,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            MASAV =
              T.let(
                :masav,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            MX_CCEN =
              T.let(
                :mx_ccen,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NEFT =
              T.let(
                :neft,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NICS =
              T.let(
                :nics,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            NZ_BECS =
              T.let(
                :nz_becs,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            PL_ELIXIR =
              T.let(
                :pl_elixir,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            PROVXCHANGE =
              T.let(
                :provxchange,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            RO_SENT =
              T.let(
                :ro_sent,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SE_BANKGIROT =
              T.let(
                :se_bankgirot,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SEN =
              T.let(
                :sen,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SEPA =
              T.let(
                :sepa,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SG_GIRO =
              T.let(
                :sg_giro,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SIC =
              T.let(
                :sic,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SIGNET =
              T.let(
                :signet,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            SKNBI =
              T.let(
                :sknbi,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            WIRE =
              T.let(
                :wire,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            ZENGIN =
              T.let(
                :zengin,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest::Type::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class ID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class PaymentOrderUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting
              )
            )
          end
          def accounting
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                  ModernTreasury::Util::AnyHash
                )
              )
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
          sig { returns(T.nilable(Integer)) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The party that will pay the fees for the payment order. Only applies to wire
          #   payment orders. Can be one of shared, sender, or receiver, which correspond
          #   respectively with the SWIFT 71A values `SHA`, `OUR`, `BEN`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
              )
            )
          end
          def charge_bearer
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
                )
              )
          end
          def charge_bearer=(_)
          end

          # Required when receiving_account_id is passed the ID of an external account.
          sig { returns(T.nilable(String)) }
          def counterparty_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def counterparty_id=(_)
          end

          # Defaults to the currency of the originating account.
          sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
          def currency
          end

          sig { params(_: ModernTreasury::Models::Currency::OrSymbol).returns(ModernTreasury::Models::Currency::OrSymbol) }
          def currency=(_)
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol
              )
            )
          end
          def direction
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol
              )
          end
          def direction=(_)
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol
              )
            )
          end
          def fallback_type
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol
              )
          end
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
              )
            )
          end
          def foreign_exchange_indicator
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
                )
              )
          end
          def foreign_exchange_indicator=(_)
          end

          # An array of line items that must sum up to the amount of the payment order.
          sig do
            returns(
              T.nilable(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
              )
            )
          end
          def line_items
          end

          sig do
            params(
              _: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
            )
              .returns(
                T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem]
              )
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

          # The ID of one of your organization's internal accounts.
          sig { returns(T.nilable(String)) }
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol
              )
            )
          end
          def priority
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol
              )
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

          # Either `receiving_account` or `receiving_account_id` must be present. When using
          #   `receiving_account_id`, you may pass the id of an external account or an
          #   internal account.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount
              )
            )
          end
          def receiving_account
          end

          sig do
            params(
              _: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                ModernTreasury::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                  ModernTreasury::Util::AnyHash
                )
              )
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

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          #   use `approved`. To undo approval on a denied or approved payment order, use
          #   `needs_approval`.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          def status
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol
              )
          end
          def status=(_)
          end

          # An additional layer of classification for the type of payment order you are
          #   doing. This field is only used for `ach` payment orders currently. For `ach`
          #   payment orders, the `subtype` represents the SEC code. We currently support
          #   `CCD`, `PPD`, `IAT`, `CTX`, `WEB`, `CIE`, and `TEL`.
          sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol)) }
          def subtype
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol))
          end
          def subtype=(_)
          end

          # One of `ach`, `se_bankgirot`, `eft`, `wire`, `check`, `sen`, `book`, `rtp`,
          #   `sepa`, `bacs`, `au_becs`, `interac`, `neft`, `nics`,
          #   `nz_national_clearing_code`, `sic`, `signet`, `provexchange`, `zengin`.
          sig { returns(T.nilable(ModernTreasury::Models::PaymentOrderType::OrSymbol)) }
          def type
          end

          sig do
            params(_: ModernTreasury::Models::PaymentOrderType::OrSymbol)
              .returns(ModernTreasury::Models::PaymentOrderType::OrSymbol)
          end
          def type=(_)
          end

          # This represents the identifier by which the person is known to the receiver when
          #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          def ultimate_originating_party_identifier
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ultimate_originating_party_identifier=(_)
          end

          # This represents the name of the person that the payment is on behalf of when
          #   using the CIE subtype for ACH payments. Only the first 15 characters of this
          #   string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          def ultimate_originating_party_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ultimate_originating_party_name=(_)
          end

          # This represents the name of the merchant that the payment is being sent to when
          #   using the CIE subtype for ACH payments. Only the first 22 characters of this
          #   string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          def ultimate_receiving_party_identifier
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ultimate_receiving_party_identifier=(_)
          end

          # This represents the identifier by which the merchant is known to the person
          #   initiating an ACH payment with CIE subtype. Only the first 15 characters of this
          #   string will be used. Any additional characters will be truncated.
          sig { returns(T.nilable(String)) }
          def ultimate_receiving_party_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ultimate_receiving_party_name=(_)
          end

          sig do
            params(
              id: String,
              accounting: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                ModernTreasury::Util::AnyHash
              ),
              accounting_category_id: T.nilable(String),
              accounting_ledger_class_id: T.nilable(String),
              amount: Integer,
              charge_bearer: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
              ),
              counterparty_id: T.nilable(String),
              currency: ModernTreasury::Models::Currency::OrSymbol,
              description: T.nilable(String),
              direction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol,
              effective_date: Date,
              expires_at: T.nilable(Time),
              fallback_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol,
              foreign_exchange_contract: T.nilable(String),
              foreign_exchange_indicator: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
              ),
              line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem],
              metadata: T::Hash[Symbol, String],
              nsf_protected: T::Boolean,
              originating_account_id: String,
              originating_party_name: T.nilable(String),
              priority: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol,
              process_after: T.nilable(Time),
              purpose: T.nilable(String),
              receiving_account: T.any(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                ModernTreasury::Util::AnyHash
              ),
              receiving_account_id: String,
              remittance_information: T.nilable(String),
              send_remittance_advice: T.nilable(T::Boolean),
              statement_descriptor: T.nilable(String),
              status: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol,
              subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol),
              type: ModernTreasury::Models::PaymentOrderType::OrSymbol,
              ultimate_originating_party_identifier: T.nilable(String),
              ultimate_originating_party_name: T.nilable(String),
              ultimate_receiving_party_identifier: T.nilable(String),
              ultimate_receiving_party_name: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id: nil,
            accounting: nil,
            accounting_category_id: nil,
            accounting_ledger_class_id: nil,
            amount: nil,
            charge_bearer: nil,
            counterparty_id: nil,
            currency: nil,
            description: nil,
            direction: nil,
            effective_date: nil,
            expires_at: nil,
            fallback_type: nil,
            foreign_exchange_contract: nil,
            foreign_exchange_indicator: nil,
            line_items: nil,
            metadata: nil,
            nsf_protected: nil,
            originating_account_id: nil,
            originating_party_name: nil,
            priority: nil,
            process_after: nil,
            purpose: nil,
            receiving_account: nil,
            receiving_account_id: nil,
            remittance_information: nil,
            send_remittance_advice: nil,
            statement_descriptor: nil,
            status: nil,
            subtype: nil,
            type: nil,
            ultimate_originating_party_identifier: nil,
            ultimate_originating_party_name: nil,
            ultimate_receiving_party_identifier: nil,
            ultimate_receiving_party_name: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  accounting: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Accounting,
                  accounting_category_id: T.nilable(String),
                  accounting_ledger_class_id: T.nilable(String),
                  amount: Integer,
                  charge_bearer: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::OrSymbol
                  ),
                  counterparty_id: T.nilable(String),
                  currency: ModernTreasury::Models::Currency::OrSymbol,
                  description: T.nilable(String),
                  direction: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::OrSymbol,
                  effective_date: Date,
                  expires_at: T.nilable(Time),
                  fallback_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::OrSymbol,
                  foreign_exchange_contract: T.nilable(String),
                  foreign_exchange_indicator: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::OrSymbol
                  ),
                  line_items: T::Array[ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::LineItem],
                  metadata: T::Hash[Symbol, String],
                  nsf_protected: T::Boolean,
                  originating_account_id: String,
                  originating_party_name: T.nilable(String),
                  priority: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::OrSymbol,
                  process_after: T.nilable(Time),
                  purpose: T.nilable(String),
                  receiving_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount,
                  receiving_account_id: String,
                  remittance_information: T.nilable(String),
                  send_remittance_advice: T.nilable(T::Boolean),
                  statement_descriptor: T.nilable(String),
                  status: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::OrSymbol,
                  subtype: T.nilable(ModernTreasury::Models::PaymentOrderSubtype::OrSymbol),
                  type: ModernTreasury::Models::PaymentOrderType::OrSymbol,
                  ultimate_originating_party_identifier: T.nilable(String),
                  ultimate_originating_party_name: T.nilable(String),
                  ultimate_receiving_party_identifier: T.nilable(String),
                  ultimate_receiving_party_name: T.nilable(String)
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

            sig do
              params(account_id: T.nilable(String), class_id: T.nilable(String)).returns(T.attached_class)
            end
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

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
                )
              end

            SHARED =
              T.let(
                :shared,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )
            SENDER =
              T.let(
                :sender,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )
            RECEIVER =
              T.let(
                :receiver,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ChargeBearer::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # One of `credit`, `debit`. Describes the direction money is flowing in the
          #   transaction. A `credit` moves money from your account to someone else's. A
          #   `debit` pulls money from someone else's account to your own. Note that wire,
          #   rtp, and check payments will always be `credit`.
          module Direction
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
                )
              end

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Direction::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # A payment type to fallback to if the original type is not valid for the
          #   receiving account. Currently, this only supports falling back from RTP to ACH
          #   (type=rtp and fallback_type=ach)
          module FallbackType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::TaggedSymbol
                )
              end

            ACH =
              T.let(
                :ach,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::FallbackType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # Indicates the type of FX transfer to initiate, can be either
          #   `variable_to_fixed`, `fixed_to_variable`, or `null` if the payment order
          #   currency matches the originating account currency.
          module ForeignExchangeIndicator
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
                )
              end

            FIXED_TO_VARIABLE =
              T.let(
                :fixed_to_variable,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
              )
            VARIABLE_TO_FIXED =
              T.let(
                :variable_to_fixed,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ForeignExchangeIndicator::TaggedSymbol
                    ]
                  )
              end
              def values
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
          module Priority
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
                )
              end

            HIGH =
              T.let(
                :high,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
              )
            NORMAL =
              T.let(
                :normal,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Priority::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          class ReceivingAccount < ModernTreasury::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                  ]
                )
              )
            end
            def account_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                  ]
                )
            end
            def account_details=(_)
            end

            # Can be `checking`, `savings` or `other`.
            sig { returns(T.nilable(ModernTreasury::Models::ExternalAccountType::OrSymbol)) }
            def account_type
            end

            sig do
              params(_: ModernTreasury::Models::ExternalAccountType::OrSymbol)
                .returns(ModernTreasury::Models::ExternalAccountType::OrSymbol)
            end
            def account_type=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                  ]
                )
              )
            end
            def contact_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                  ]
                )
            end
            def contact_details=(_)
            end

            # Specifies a ledger account object that will be created with the external
            #   account. The resulting ledger account is linked to the external account for
            #   auto-ledgering Payment objects. See
            #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
            #   for more details.
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount
                )
              )
            end
            def ledger_account
            end

            sig do
              params(
                _: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                  ModernTreasury::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                    ModernTreasury::Util::AnyHash
                  )
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress
                )
              )
            end
            def party_address
            end

            sig do
              params(
                _: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                  ModernTreasury::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                    ModernTreasury::Util::AnyHash
                  )
                )
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
            sig do
              returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                )
              )
            end
            def party_type
            end

            sig do
              params(
                _: T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                )
              )
                .returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                  )
                )
            end
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
                T.nilable(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                  ]
                )
              )
            end
            def routing_details
            end

            sig do
              params(
                _: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                ]
              )
                .returns(
                  T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                  ]
                )
            end
            def routing_details=(_)
            end

            # Either `receiving_account` or `receiving_account_id` must be present. When using
            #   `receiving_account_id`, you may pass the id of an external account or an
            #   internal account.
            sig do
              params(
                account_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                ],
                account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
                contact_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                ],
                ledger_account: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                  ModernTreasury::Util::AnyHash
                ),
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                party_address: T.any(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                  ModernTreasury::Util::AnyHash
                ),
                party_identifier: String,
                party_name: String,
                party_type: T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                ),
                plaid_processor_token: String,
                routing_details: T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                ]
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
                    account_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail
                    ],
                    account_type: ModernTreasury::Models::ExternalAccountType::OrSymbol,
                    contact_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail
                    ],
                    ledger_account: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount,
                    metadata: T::Hash[Symbol, String],
                    name: T.nilable(String),
                    party_address: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyAddress,
                    party_identifier: String,
                    party_name: String,
                    party_type: T.nilable(
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::OrSymbol
                    ),
                    plaid_processor_token: String,
                    routing_details: T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail
                    ]
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

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
                )
              end
              def account_number_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                  )
              end
              def account_number_type=(_)
              end

              sig do
                params(
                  account_number: String,
                  account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(account_number:, account_number_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      account_number: String,
                      account_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module AccountNumberType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                    )
                  end

                AU_NUMBER =
                  T.let(
                    :au_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                CLABE =
                  T.let(
                    :clabe,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                HK_NUMBER =
                  T.let(
                    :hk_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                IBAN =
                  T.let(
                    :iban,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                ID_NUMBER =
                  T.let(
                    :id_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                NZ_NUMBER =
                  T.let(
                    :nz_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                PAN =
                  T.let(
                    :pan,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                SG_NUMBER =
                  T.let(
                    :sg_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )
                WALLET_ADDRESS =
                  T.let(
                    :wallet_address,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::AccountDetail::AccountNumberType::TaggedSymbol
                        ]
                      )
                  end
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

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                  )
                )
              end
              def contact_identifier_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                  )
              end
              def contact_identifier_type=(_)
              end

              sig do
                params(
                  contact_identifier: String,
                  contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(contact_identifier: nil, contact_identifier_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      contact_identifier: String,
                      contact_identifier_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module ContactIdentifierType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                    )
                  end

                EMAIL =
                  T.let(
                    :email,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )
                PHONE_NUMBER =
                  T.let(
                    :phone_number,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )
                WEBSITE =
                  T.let(
                    :website,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::ContactDetail::ContactIdentifierType::TaggedSymbol
                        ]
                      )
                  end
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
              sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
              def normal_balance
              end

              sig do
                params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                  .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
              end
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
              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                  )
                )
              end
              def ledgerable_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol
                  )
              end
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
                  normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                  currency_exponent: T.nilable(Integer),
                  description: T.nilable(String),
                  ledger_account_category_ids: T::Array[String],
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol,
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
                      normal_balance: ModernTreasury::Models::TransactionDirection::OrSymbol,
                      currency_exponent: T.nilable(Integer),
                      description: T.nilable(String),
                      ledger_account_category_ids: T::Array[String],
                      ledgerable_id: String,
                      ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::OrSymbol,
                      metadata: T::Hash[Symbol, String]
                    }
                  )
              end
              def to_hash
              end

              # If the ledger account links to another object in Modern Treasury, the type will
              #   be populated here, otherwise null. The value is one of internal_account or
              #   external_account.
              module LedgerableType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                    )
                  end

                COUNTERPARTY =
                  T.let(
                    :counterparty,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                EXTERNAL_ACCOUNT =
                  T.let(
                    :external_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                INTERNAL_ACCOUNT =
                  T.let(
                    :internal_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )
                VIRTUAL_ACCOUNT =
                  T.let(
                    :virtual_account,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::LedgerAccount::LedgerableType::TaggedSymbol
                        ]
                      )
                  end
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
            module PartyType
              extend ModernTreasury::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                  )
                end

              BUSINESS =
                T.let(
                  :business,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                )
              INDIVIDUAL =
                T.let(
                  :individual,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::PartyType::TaggedSymbol
                      ]
                    )
                end
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

              sig do
                returns(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
              end
              def routing_number_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol
                  )
              end
              def routing_number_type=(_)
              end

              sig do
                returns(
                  T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
                )
              end
              def payment_type
              end

              sig do
                params(
                  _: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                )
                  .returns(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                  )
              end
              def payment_type=(_)
              end

              sig do
                params(
                  routing_number: String,
                  routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                  payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(routing_number:, routing_number_type:, payment_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      routing_number: String,
                      routing_number_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::OrSymbol,
                      payment_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              module RoutingNumberType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                    )
                  end

                ABA =
                  T.let(
                    :aba,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                AU_BSB =
                  T.let(
                    :au_bsb,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                BR_CODIGO =
                  T.let(
                    :br_codigo,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CA_CPA =
                  T.let(
                    :ca_cpa,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CHIPS =
                  T.let(
                    :chips,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                CNAPS =
                  T.let(
                    :cnaps,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                DK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :dk_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                GB_SORT_CODE =
                  T.let(
                    :gb_sort_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HK_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hk_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                HU_INTERBANK_CLEARING_CODE =
                  T.let(
                    :hu_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ID_SKNBI_CODE =
                  T.let(
                    :id_sknbi_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                IN_IFSC =
                  T.let(
                    :in_ifsc,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                JP_ZENGIN_CODE =
                  T.let(
                    :jp_zengin_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MY_BRANCH_CODE =
                  T.let(
                    :my_branch_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                MX_BANK_IDENTIFIER =
                  T.let(
                    :mx_bank_identifier,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                NZ_NATIONAL_CLEARING_CODE =
                  T.let(
                    :nz_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                PL_NATIONAL_CLEARING_CODE =
                  T.let(
                    :pl_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SE_BANKGIRO_CLEARING_CODE =
                  T.let(
                    :se_bankgiro_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SG_INTERBANK_CLEARING_CODE =
                  T.let(
                    :sg_interbank_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                SWIFT =
                  T.let(
                    :swift,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )
                ZA_NATIONAL_CLEARING_CODE =
                  T.let(
                    :za_national_clearing_code,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::RoutingNumberType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end

              module PaymentType
                extend ModernTreasury::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                    )
                  end

                ACH =
                  T.let(
                    :ach,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                AU_BECS =
                  T.let(
                    :au_becs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BACS =
                  T.let(
                    :bacs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                BOOK =
                  T.let(
                    :book,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CARD =
                  T.let(
                    :card,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHATS =
                  T.let(
                    :chats,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CHECK =
                  T.let(
                    :check,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                CROSS_BORDER =
                  T.let(
                    :cross_border,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                DK_NETS =
                  T.let(
                    :dk_nets,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                EFT =
                  T.let(
                    :eft,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                HU_ICS =
                  T.let(
                    :hu_ics,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                INTERAC =
                  T.let(
                    :interac,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MASAV =
                  T.let(
                    :masav,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                MX_CCEN =
                  T.let(
                    :mx_ccen,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NEFT =
                  T.let(
                    :neft,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NICS =
                  T.let(
                    :nics,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                NZ_BECS =
                  T.let(
                    :nz_becs,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PL_ELIXIR =
                  T.let(
                    :pl_elixir,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                PROVXCHANGE =
                  T.let(
                    :provxchange,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RO_SENT =
                  T.let(
                    :ro_sent,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                RTP =
                  T.let(
                    :rtp,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SE_BANKGIROT =
                  T.let(
                    :se_bankgirot,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEN =
                  T.let(
                    :sen,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SEPA =
                  T.let(
                    :sepa,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SG_GIRO =
                  T.let(
                    :sg_giro,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIC =
                  T.let(
                    :sic,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SIGNET =
                  T.let(
                    :signet,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                SKNBI =
                  T.let(
                    :sknbi,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                WIRE =
                  T.let(
                    :wire,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )
                ZENGIN =
                  T.let(
                    :zengin,
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::ReceivingAccount::RoutingDetail::PaymentType::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end
          end

          # To cancel a payment order, use `cancelled`. To redraft a returned payment order,
          #   use `approved`. To undo approval on a denied or approved payment order, use
          #   `needs_approval`.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
                )
              end

            APPROVED =
              T.let(
                :approved,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            DENIED =
              T.let(
                :denied,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            NEEDS_APPROVAL =
              T.let(
                :needs_approval,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            RETURNED =
              T.let(
                :returned,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )
            SENT =
              T.let(
                :sent,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::Status::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The lowest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          sig { returns(T.nilable(Integer)) }
          def amount_lower_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_lower_bound=(_)
          end

          # The highest amount this expected payment may be equal to. Value in specified
          #   currency's smallest unit. e.g. $10 would be represented as 1000.
          sig { returns(T.nilable(Integer)) }
          def amount_upper_bound
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_upper_bound=(_)
          end

          # The ID of the counterparty you expect for this payment.
          sig { returns(T.nilable(String)) }
          def counterparty_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def counterparty_id=(_)
          end

          # Must conform to ISO 4217. Defaults to the currency of the internal account.
          sig { returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol)) }
          def currency
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::Currency::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::Currency::OrSymbol))
          end
          def currency=(_)
          end

          # The earliest date the payment may come in. Format: yyyy-mm-dd
          sig { returns(T.nilable(Date)) }
          def date_lower_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_lower_bound=(_)
          end

          # The latest date the payment may come in. Format: yyyy-mm-dd
          sig { returns(T.nilable(Date)) }
          def date_upper_bound
          end

          sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
          def date_upper_bound=(_)
          end

          # An optional description for internal use.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
              )
            )
          end
          def direction
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
                )
              )
          end
          def direction=(_)
          end

          # The ID of the Internal Account for the expected payment.
          sig { returns(T.nilable(String)) }
          def internal_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def internal_account_id=(_)
          end

          # Additional data represented as key-value pairs. Both the key and value must be
          #   strings.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          # The reconciliation filters you have for this payment.
          sig { returns(T.nilable(T.anything)) }
          def reconciliation_filters
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_filters=(_)
          end

          # The reconciliation groups you have for this payment.
          sig { returns(T.nilable(T.anything)) }
          def reconciliation_groups
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def reconciliation_groups=(_)
          end

          # An array of reconciliation rule variables for this payment.
          sig { returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule])) }
          def reconciliation_rule_variables
          end

          sig do
            params(_: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
              .returns(T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]))
          end
          def reconciliation_rule_variables=(_)
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

          # The statement description you expect to see on the transaction. For ACH
          #   payments, this will be the full line item passed from the bank. For wire
          #   payments, this will be the OBI field on the wire. For check payments, this will
          #   be the memo field.
          sig { returns(T.nilable(String)) }
          def statement_descriptor
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_)
          end

          # The Expected Payment's status can be updated from partially_reconciled to
          #   reconciled.
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          def status
          end

          sig do
            params(
              _: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
              )
            )
              .returns(
                T.nilable(
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
                )
              )
          end
          def status=(_)
          end

          # One of: ach, au_becs, bacs, book, check, eft, interac, provxchange, rtp, sen,
          #   sepa, signet, wire.
          sig { returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
              .returns(T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol))
          end
          def type=(_)
          end

          sig do
            params(
              id: String,
              amount_lower_bound: T.nilable(Integer),
              amount_upper_bound: T.nilable(Integer),
              counterparty_id: T.nilable(String),
              currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
              date_lower_bound: T.nilable(Date),
              date_upper_bound: T.nilable(Date),
              description: T.nilable(String),
              direction: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
              ),
              internal_account_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              reconciliation_filters: T.nilable(T.anything),
              reconciliation_groups: T.nilable(T.anything),
              reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
              remittance_information: T.nilable(String),
              statement_descriptor: T.nilable(String),
              status: T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
              ),
              type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id: nil,
            amount_lower_bound: nil,
            amount_upper_bound: nil,
            counterparty_id: nil,
            currency: nil,
            date_lower_bound: nil,
            date_upper_bound: nil,
            description: nil,
            direction: nil,
            internal_account_id: nil,
            metadata: nil,
            reconciliation_filters: nil,
            reconciliation_groups: nil,
            reconciliation_rule_variables: nil,
            remittance_information: nil,
            statement_descriptor: nil,
            status: nil,
            type: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount_lower_bound: T.nilable(Integer),
                  amount_upper_bound: T.nilable(Integer),
                  counterparty_id: T.nilable(String),
                  currency: T.nilable(ModernTreasury::Models::Currency::OrSymbol),
                  date_lower_bound: T.nilable(Date),
                  date_upper_bound: T.nilable(Date),
                  description: T.nilable(String),
                  direction: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::OrSymbol
                  ),
                  internal_account_id: T.nilable(String),
                  metadata: T::Hash[Symbol, String],
                  reconciliation_filters: T.nilable(T.anything),
                  reconciliation_groups: T.nilable(T.anything),
                  reconciliation_rule_variables: T.nilable(T::Array[ModernTreasury::Models::ReconciliationRule]),
                  remittance_information: T.nilable(String),
                  statement_descriptor: T.nilable(String),
                  status: T.nilable(
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::OrSymbol
                  ),
                  type: T.nilable(ModernTreasury::Models::ExpectedPaymentType::OrSymbol)
                }
              )
          end
          def to_hash
          end

          # One of credit or debit. When you are receiving money, use credit. When you are
          #   being charged, use debit.
          module Direction
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
                )
              end

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Direction::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # The Expected Payment's status can be updated from partially_reconciled to
          #   reconciled.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::TaggedSymbol
                )
              end

            RECONCILED =
              T.let(
                :reconciled,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::Status::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Additional data in the form of key-value pairs. Pairs can be removed by passing
          #   an empty string or `null` as the value.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def metadata
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def metadata=(_)
          end

          sig { params(id: String, metadata: T::Hash[Symbol, String]).returns(T.attached_class) }
          def self.new(id: nil, metadata: nil)
          end

          sig { override.returns({id: String, metadata: T::Hash[Symbol, String]}) }
          def to_hash
          end
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
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

          # An array of ledger entry objects.
          sig do
            returns(
              T.nilable(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                ]
              )
            )
          end
          def ledger_entries
          end

          sig do
            params(
              _: T::Array[
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
              ]
            )
              .returns(
                T::Array[
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                ]
              )
          end
          def ledger_entries=(_)
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol
              )
            )
          end
          def ledgerable_type
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol
              )
          end
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
          sig do
            returns(
              T.nilable(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
              )
            )
          end
          def status
          end

          sig do
            params(
              _: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
            )
              .returns(
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
              )
          end
          def status=(_)
          end

          sig do
            params(
              id: String,
              description: T.nilable(String),
              effective_at: Time,
              ledger_entries: T::Array[
              ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
              ],
              ledgerable_id: String,
              ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol,
              metadata: T::Hash[Symbol, String],
              status: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id: nil,
            description: nil,
            effective_at: nil,
            ledger_entries: nil,
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
                  id: String,
                  description: T.nilable(String),
                  effective_at: Time,
                  ledger_entries: T::Array[
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerEntry
                  ],
                  ledgerable_id: String,
                  ledgerable_type: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::OrSymbol,
                  metadata: T::Hash[Symbol, String],
                  status: ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::OrSymbol
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
            sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
            def direction
            end

            sig do
              params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
                .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
            end
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

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
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

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
            def pending_balance_amount=(_)
            end

            # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to lock on the
            #   account’s posted balance. If any of these conditions would be false after the
            #   transaction is created, the entire call will fail with error code 422.
            sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
            def posted_balance_amount
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer]))
            end
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
                direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
                    direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
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
          module LedgerableType
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
                )
              end

            EXPECTED_PAYMENT =
              T.let(
                :expected_payment,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            INCOMING_PAYMENT_DETAIL =
              T.let(
                :incoming_payment_detail,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            PAPER_ITEM =
              T.let(
                :paper_item,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            PAYMENT_ORDER =
              T.let(
                :payment_order,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            RETURN =
              T.let(
                :return,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )
            REVERSAL =
              T.let(
                :reversal,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::LedgerableType::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end

          # To post a ledger transaction at creation, use `posted`.
          module Status
            extend ModernTreasury::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
                )
              end

            ARCHIVED =
              T.let(
                :archived,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )
            POSTED =
              T.let(
                :posted,
                ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::Status::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderAsyncCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionCreateRequest, ModernTreasury::Models::BulkRequestCreateParams::Resource::ID, ModernTreasury::Models::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID, ModernTreasury::Models::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID]
              )
          end
          def variants
          end
        end
      end
    end
  end
end
