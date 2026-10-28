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
              ModernTreasury::PaymentOrderAsyncCreateRequest,
              ModernTreasury::ExpectedPaymentCreateRequest,
              ModernTreasury::LedgerTransactionCreateRequest,
              ModernTreasury::LedgerAccountCreateRequest,
              ModernTreasury::TransactionCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerAccountUpdateRequestWithID
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
                ModernTreasury::PaymentOrderAsyncCreateRequest::OrHash,
                ModernTreasury::ExpectedPaymentCreateRequest::OrHash,
                ModernTreasury::LedgerTransactionCreateRequest::OrHash,
                ModernTreasury::LedgerAccountCreateRequest::OrHash,
                ModernTreasury::TransactionCreateRequest::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID::OrHash,
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerAccountUpdateRequestWithID::OrHash
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
                  ModernTreasury::PaymentOrderAsyncCreateRequest,
                  ModernTreasury::ExpectedPaymentCreateRequest,
                  ModernTreasury::LedgerTransactionCreateRequest,
                  ModernTreasury::LedgerAccountCreateRequest,
                  ModernTreasury::TransactionCreateRequest,
                  ModernTreasury::BulkRequestCreateParams::Resource::ID,
                  ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID,
                  ModernTreasury::BulkRequestCreateParams::Resource::LedgerAccountUpdateRequestWithID
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

      # At least one of "amount" or "amount_string" is required.
      module Resource
        extend ModernTreasury::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ModernTreasury::PaymentOrderAsyncCreateRequest,
              ModernTreasury::ExpectedPaymentCreateRequest,
              ModernTreasury::LedgerTransactionCreateRequest,
              ModernTreasury::LedgerAccountCreateRequest,
              ModernTreasury::TransactionCreateRequest,
              ModernTreasury::BulkRequestCreateParams::Resource::ID,
              ModernTreasury::BulkRequestCreateParams::Resource::PaymentOrderUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::ExpectedPaymentUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::TransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerTransactionUpdateRequestWithID,
              ModernTreasury::BulkRequestCreateParams::Resource::LedgerAccountUpdateRequestWithID
            )
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

        class PaymentOrderUpdateRequestWithID < ModernTreasury::Models::PaymentOrderUpdateRequest
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class ExpectedPaymentUpdateRequestWithID < ModernTreasury::Models::ExpectedPaymentUpdateRequest
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class TransactionUpdateRequestWithID < ModernTreasury::Models::TransactionUpdateRequest
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class LedgerTransactionUpdateRequestWithID < ModernTreasury::Models::LedgerTransactionUpdateRequest
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class LedgerAccountUpdateRequestWithID < ModernTreasury::Models::LedgerAccountUpdateRequest
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::BulkRequestCreateParams::Resource::LedgerAccountUpdateRequestWithID,
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
