# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # Describes the condition that must be satisfied for the monitor to be triggered.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition) }
      attr_reader :alert_condition

      sig do
        params(
          alert_condition: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
            ModernTreasury::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :alert_condition

      # The ledger account associated with this balance monitor.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      # An optional, free-form description for internal use.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          alert_condition: T.any(
            ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
            ModernTreasury::Internal::AnyHash
          ),
          ledger_account_id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(alert_condition:, ledger_account_id:, description: nil, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
              ledger_account_id: String,
              description: String,
              metadata: T::Hash[Symbol, String],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AlertCondition < ModernTreasury::Internal::Type::BaseModel
        # One of `available_balance_amount`, `pending_balance_amount`,
        #   `posted_balance_amount`, `ledger_account_lock_version`.
        sig { returns(String) }
        attr_accessor :field

        # A logical operator to compare the `field` against the `value`. One of
        #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   `greater_than`.
        sig { returns(String) }
        attr_accessor :operator

        # The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   when comparing the `field` to this integer value using the `operator` is
        #   logically true.
        sig { returns(Integer) }
        attr_accessor :value

        # Describes the condition that must be satisfied for the monitor to be triggered.
        sig { params(field: String, operator: String, value: Integer).returns(T.attached_class) }
        def self.new(field:, operator:, value:)
        end

        sig { override.returns({field: String, operator: String, value: Integer}) }
        def to_hash
        end
      end
    end
  end
end
