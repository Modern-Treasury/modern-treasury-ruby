# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition) }
      attr_accessor :alert_condition

      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
          ledger_account_id: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        alert_condition:,
        ledger_account_id:,
        description: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
            ledger_account_id: String,
            description: String,
            metadata: T::Hash[Symbol,
                              String],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash; end

      class AlertCondition < ModernTreasury::BaseModel
        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(Integer) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: Integer).void }
        def initialize(field:, operator:, value:); end

        sig { override.returns({field: String, operator: String, value: Integer}) }
        def to_hash; end
      end
    end
  end
end
