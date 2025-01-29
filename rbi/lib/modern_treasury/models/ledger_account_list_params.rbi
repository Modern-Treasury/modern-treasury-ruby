# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            id: T::Array[String],
            after_cursor: T.nilable(String),
            available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
            balances: ModernTreasury::Models::LedgerAccountListParams::Balances,
            created_at: T::Hash[Symbol, Time],
            currency: String,
            ledger_account_category_id: String,
            ledger_id: String,
            metadata: T::Hash[Symbol, String],
            name: T::Array[String],
            pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
            per_page: Integer,
            posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
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

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount)) }
      attr_reader :available_balance_amount

      sig do
        params(available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount).void
      end
      attr_writer :available_balance_amount

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::Balances)) }
      attr_reader :balances

      sig { params(balances: ModernTreasury::Models::LedgerAccountListParams::Balances).void }
      attr_writer :balances

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :created_at

      sig { params(created_at: T::Hash[Symbol, Time]).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_category_id

      sig { params(ledger_account_category_id: String).void }
      attr_writer :ledger_account_category_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_id

      sig { params(ledger_id: String).void }
      attr_writer :ledger_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T::Array[String]) }
      attr_reader :name

      sig { params(name: T::Array[String]).void }
      attr_writer :name

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount)) }
      attr_reader :pending_balance_amount

      sig do
        params(pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount).void
      end
      attr_writer :pending_balance_amount

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount)) }
      attr_reader :posted_balance_amount

      sig do
        params(posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount).void
      end
      attr_writer :posted_balance_amount

      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          available_balance_amount: ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount,
          balances: ModernTreasury::Models::LedgerAccountListParams::Balances,
          created_at: T::Hash[Symbol, Time],
          currency: String,
          ledger_account_category_id: String,
          ledger_id: String,
          metadata: T::Hash[Symbol, String],
          name: T::Array[String],
          pending_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount,
          per_page: Integer,
          posted_balance_amount: ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount,
          updated_at: T::Hash[Symbol, Time],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        id: nil,
        after_cursor: nil,
        available_balance_amount: nil,
        balances: nil,
        created_at: nil,
        currency: nil,
        ledger_account_category_id: nil,
        ledger_id: nil,
        metadata: nil,
        name: nil,
        pending_balance_amount: nil,
        per_page: nil,
        posted_balance_amount: nil,
        updated_at: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::LedgerAccountListParams::Shape) }
      def to_h; end

      class AvailableBalanceAmount < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer}
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

        sig { returns(ModernTreasury::Models::LedgerAccountListParams::AvailableBalanceAmount::Shape) }
        def to_h; end
      end

      class Balances < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {
            as_of_date: Date,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          }
        end

        sig { returns(T.nilable(Date)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Date).void }
        attr_writer :as_of_date

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_lower_bound

        sig { params(effective_at_lower_bound: Time).void }
        attr_writer :effective_at_lower_bound

        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at_upper_bound

        sig { params(effective_at_upper_bound: Time).void }
        attr_writer :effective_at_upper_bound

        sig do
          params(
            as_of_date: Date,
            effective_at: Time,
            effective_at_lower_bound: Time,
            effective_at_upper_bound: Time
          ).void
        end
        def initialize(
          as_of_date: nil,
          effective_at: nil,
          effective_at_lower_bound: nil,
          effective_at_upper_bound: nil
        )
        end

        sig { returns(ModernTreasury::Models::LedgerAccountListParams::Balances::Shape) }
        def to_h; end
      end

      class PendingBalanceAmount < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer}
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

        sig { returns(ModernTreasury::Models::LedgerAccountListParams::PendingBalanceAmount::Shape) }
        def to_h; end
      end

      class PostedBalanceAmount < ModernTreasury::BaseModel
        Shape = T.type_alias do
          {eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer}
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :eq

        sig { params(eq: Integer).void }
        attr_writer :eq

        sig { returns(T.nilable(Integer)) }
        attr_reader :gt

        sig { params(gt: Integer).void }
        attr_writer :gt

        sig { returns(T.nilable(Integer)) }
        attr_reader :gte

        sig { params(gte: Integer).void }
        attr_writer :gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :lt

        sig { params(lt: Integer).void }
        attr_writer :lt

        sig { returns(T.nilable(Integer)) }
        attr_reader :lte

        sig { params(lte: Integer).void }
        attr_writer :lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :not_eq

        sig { params(not_eq: Integer).void }
        attr_writer :not_eq

        sig do
          params(eq: Integer, gt: Integer, gte: Integer, lt: Integer, lte: Integer, not_eq: Integer).void
        end
        def initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil, not_eq: nil); end

        sig { returns(ModernTreasury::Models::LedgerAccountListParams::PostedBalanceAmount::Shape) }
        def to_h; end
      end
    end
  end
end
