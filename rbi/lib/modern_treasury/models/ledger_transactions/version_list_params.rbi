# typed: strong

module ModernTreasury
  module Models
    module LedgerTransactions
      class VersionListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              after_cursor: T.nilable(String),
              created_at: T::Hash[Symbol, Time],
              ledger_account_statement_id: String,
              ledger_transaction_id: String,
              per_page: Integer,
              version: T::Hash[Symbol, Integer]
            },
            ModernTreasury::RequestParameters::Shape
          )
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        sig { returns(T.nilable(T::Hash[Symbol, Time])) }
        attr_reader :created_at

        sig { params(created_at: T::Hash[Symbol, Time]).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :ledger_account_statement_id

        sig { params(ledger_account_statement_id: String).void }
        attr_writer :ledger_account_statement_id

        sig { returns(T.nilable(String)) }
        attr_reader :ledger_transaction_id

        sig { params(ledger_transaction_id: String).void }
        attr_writer :ledger_transaction_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :version

        sig { params(version: T::Hash[Symbol, Integer]).void }
        attr_writer :version

        sig do
          params(
            after_cursor: T.nilable(String),
            created_at: T::Hash[Symbol, Time],
            ledger_account_statement_id: String,
            ledger_transaction_id: String,
            per_page: Integer,
            version: T::Hash[Symbol, Integer],
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(
          after_cursor: nil,
          created_at: nil,
          ledger_account_statement_id: nil,
          ledger_transaction_id: nil,
          per_page: nil,
          version: nil,
          request_options: {}
        ); end

        sig { returns(ModernTreasury::Models::LedgerTransactions::VersionListParams::Shape) }
        def to_h; end
      end
    end
  end
end
