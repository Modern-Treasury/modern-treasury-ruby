# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalCreateParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::PaymentOrders::ReversalCreateParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        # `incorrect_receiving_account`, `date_earlier_than_intended`,
        # `date_later_than_intended`.
        sig do
          returns(
            ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol
          )
        end
        attr_accessor :reason

        # Specifies a ledger transaction object that will be created with the reversal. If
        # the ledger transaction cannot be created, then the reversal creation will fail.
        # The resulting ledger transaction will mirror the status of the reversal.
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

        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            reason:
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
            ledger_transaction:
              ModernTreasury::LedgerTransactionCreateRequest::OrHash,
            metadata: T::Hash[Symbol, String],
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
          # `incorrect_receiving_account`, `date_earlier_than_intended`,
          # `date_later_than_intended`.
          reason:,
          # Specifies a ledger transaction object that will be created with the reversal. If
          # the ledger transaction cannot be created, then the reversal creation will fail.
          # The resulting ledger transaction will mirror the status of the reversal.
          ledger_transaction: nil,
          # Additional data represented as key-value pairs. Both the key and value must be
          # strings.
          metadata: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              reason:
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::OrSymbol,
              ledger_transaction:
                ModernTreasury::LedgerTransactionCreateRequest,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The reason for the reversal. Must be one of `duplicate`, `incorrect_amount`,
        # `incorrect_receiving_account`, `date_earlier_than_intended`,
        # `date_later_than_intended`.
        module Reason
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DUPLICATE =
            T.let(
              :duplicate,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          INCORRECT_AMOUNT =
            T.let(
              :incorrect_amount,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          INCORRECT_RECEIVING_ACCOUNT =
            T.let(
              :incorrect_receiving_account,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          DATE_EARLIER_THAN_INTENDED =
            T.let(
              :date_earlier_than_intended,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )
          DATE_LATER_THAN_INTENDED =
            T.let(
              :date_later_than_intended,
              ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::PaymentOrders::ReversalCreateParams::Reason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
