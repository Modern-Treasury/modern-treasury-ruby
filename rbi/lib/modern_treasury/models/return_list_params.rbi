# typed: strong

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            internal_account_id: String,
            per_page: Integer,
            returnable_id: String,
            returnable_type: Symbol
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :returnable_id

      sig { params(returnable_id: String).void }
      attr_writer :returnable_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :returnable_type

      sig { params(returnable_type: Symbol).void }
      attr_writer :returnable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        counterparty_id: nil,
        internal_account_id: nil,
        per_page: nil,
        returnable_id: nil,
        returnable_type: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::ReturnListParams::Shape) }
      def to_h; end

      class ReturnableType < ModernTreasury::Enum
        abstract!

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
        PAPER_ITEM = :paper_item
        PAYMENT_ORDER = :payment_order
        RETURN = :return
        REVERSAL = :reversal

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
