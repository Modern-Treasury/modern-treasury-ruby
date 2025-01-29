# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            counterparty_id: String,
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String)
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        counterparty_id: nil,
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      sig { returns(ModernTreasury::Models::VirtualAccountUpdateParams::Shape) }
      def to_h; end
    end
  end
end
