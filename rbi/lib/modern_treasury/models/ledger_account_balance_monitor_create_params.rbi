# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Describes the condition that must be satisfied for the monitor to be triggered.
      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition) }
      def alert_condition
      end

      sig do
        params(_: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition)
          .returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition)
      end
      def alert_condition=(_)
      end

      # The ledger account associated with this balance monitor.
      sig { returns(String) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      # An optional, free-form description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
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
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
          ledger_account_id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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

      class AlertCondition < ModernTreasury::BaseModel
        # One of `available_balance_amount`, `pending_balance_amount`,
        #   `posted_balance_amount`, `ledger_account_lock_version`.
        sig { returns(String) }
        def field
        end

        sig { params(_: String).returns(String) }
        def field=(_)
        end

        # A logical operator to compare the `field` against the `value`. One of
        #   `less_than`, `less_than_or_equals`, `equals`, `greater_than_or_equals`,
        #   `greater_than`.
        sig { returns(String) }
        def operator
        end

        sig { params(_: String).returns(String) }
        def operator=(_)
        end

        # The monitor's `current_ledger_account_balance_state.triggered` will be `true`
        #   when comparing the `field` to this integer value using the `operator` is
        #   logically true.
        sig { returns(Integer) }
        def value
        end

        sig { params(_: Integer).returns(Integer) }
        def value=(_)
        end

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
