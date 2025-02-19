# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_token
      end

      sig { params(_: String).returns(String) }
      def client_token=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def originating_account_id
      end

      sig { params(_: String).returns(String) }
      def originating_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_order_id
      end

      sig { params(_: String).returns(String) }
      def payment_order_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiving_account_id
      end

      sig { params(_: String).returns(String) }
      def receiving_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          client_token: String,
          counterparty_id: String,
          originating_account_id: String,
          payment_order_id: String,
          per_page: Integer,
          receiving_account_id: String,
          status: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        after_cursor: nil,
        client_token: nil,
        counterparty_id: nil,
        originating_account_id: nil,
        payment_order_id: nil,
        per_page: nil,
        receiving_account_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              client_token: String,
              counterparty_id: String,
              originating_account_id: String,
              payment_order_id: String,
              per_page: Integer,
              receiving_account_id: String,
              status: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
