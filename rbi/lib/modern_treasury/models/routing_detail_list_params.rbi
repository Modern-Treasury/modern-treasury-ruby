# typed: strong

module ModernTreasury
  module Models
    class RoutingDetailListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def accounts_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def accounts_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig do
        params(
          accounts_type: Symbol,
          after_cursor: T.nilable(String),
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              accounts_type: Symbol,
              after_cursor: T.nilable(String),
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
