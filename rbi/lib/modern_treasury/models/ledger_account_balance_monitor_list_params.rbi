# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountBalanceMonitorListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            ledger_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[String]) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        ledger_account_id: nil,
        metadata: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig { returns(ModernTreasury::Models::LedgerAccountBalanceMonitorListParams::Shape) }
      def to_h; end
    end
  end
end
