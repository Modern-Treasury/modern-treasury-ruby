# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def base_currency
      end

      sig { params(_: String).returns(String) }
      def base_currency=(_)
      end

      sig { returns(T.nilable(Date)) }
      def effective_at_end
      end

      sig { params(_: Date).returns(Date) }
      def effective_at_end=(_)
      end

      sig { returns(T.nilable(Date)) }
      def effective_at_start
      end

      sig { params(_: Date).returns(Date) }
      def effective_at_start=(_)
      end

      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(String)) }
      def target_currency
      end

      sig { params(_: String).returns(String) }
      def target_currency=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          base_currency: String,
          effective_at_end: Date,
          effective_at_start: Date,
          expires_at: Time,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          target_currency: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        after_cursor: nil,
        base_currency: nil,
        effective_at_end: nil,
        effective_at_start: nil,
        expires_at: nil,
        internal_account_id: nil,
        metadata: nil,
        per_page: nil,
        target_currency: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              base_currency: String,
              effective_at_end: Date,
              effective_at_start: Date,
              expires_at: Time,
              internal_account_id: String,
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              target_currency: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
