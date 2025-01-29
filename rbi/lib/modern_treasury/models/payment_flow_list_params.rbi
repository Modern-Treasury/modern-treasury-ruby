# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            client_token: String,
            counterparty_id: String,
            originating_account_id: String,
            payment_order_id: String,
            per_page: Integer,
            receiving_account_id: String,
            status: String
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :originating_account_id

      sig { params(originating_account_id: String).void }
      attr_writer :originating_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :payment_order_id

      sig { params(payment_order_id: String).void }
      attr_writer :payment_order_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :receiving_account_id

      sig { params(receiving_account_id: String).void }
      attr_writer :receiving_account_id

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

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
          request_options: ModernTreasury::RequestOpts
        ).void
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
      ); end

      sig { returns(ModernTreasury::Models::PaymentFlowListParams::Shape) }
      def to_h; end
    end
  end
end
