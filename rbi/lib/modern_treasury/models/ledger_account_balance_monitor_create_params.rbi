# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            alert_condition: ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition,
            ledger_account_id: String,
            description: String,
            metadata: T::Hash[Symbol, String]
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

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
          request_options: ModernTreasury::RequestOpts
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

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::Shape) }
      def to_h; end

      class AlertCondition < ModernTreasury::BaseModel
        Shape = T.type_alias { {field: String, operator: String, value: Integer} }

        sig { returns(String) }
        attr_accessor :field

        sig { returns(String) }
        attr_accessor :operator

        sig { returns(Integer) }
        attr_accessor :value

        sig { params(field: String, operator: String, value: Integer).void }
        def initialize(field:, operator:, value:); end

        sig do
          returns(ModernTreasury::Models::LedgerAccountBalanceMonitorCreateParams::AlertCondition::Shape)
        end
        def to_h; end
      end
    end
  end
end
