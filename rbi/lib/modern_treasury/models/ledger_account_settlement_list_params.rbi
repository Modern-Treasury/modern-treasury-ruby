# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            created_at: T::Hash[Symbol, Time],
            ledger_id: String,
            ledger_transaction_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            settled_ledger_account_id: String,
            settlement_entry_direction: String,
            updated_at: T::Hash[Symbol, Time]
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

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :created_at

      sig { params(created_at: T::Hash[Symbol, Time]).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_transaction_id

      sig { params(ledger_transaction_id: String).void }
      attr_writer :ledger_transaction_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :settled_ledger_account_id

      sig { params(settled_ledger_account_id: String).void }
      attr_writer :settled_ledger_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :settlement_entry_direction

      sig { params(settlement_entry_direction: String).void }
      attr_writer :settlement_entry_direction

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          ledger_id: String,
          ledger_transaction_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          settled_ledger_account_id: String,
          settlement_entry_direction: String,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        created_at: nil,
        ledger_id: nil,
        ledger_transaction_id: nil,
        metadata: nil,
        per_page: nil,
        settled_ledger_account_id: nil,
        settlement_entry_direction: nil,
        updated_at: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountSettlementListParams::Shape) }
      def to_h; end
    end
  end
end
