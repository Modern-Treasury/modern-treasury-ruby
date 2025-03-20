# typed: strong

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Specify `counterparty_id` if you wish to see returns that occurred with a
      #   specific counterparty.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # Specify `internal_account_id` if you wish to see returns to/from a specific
      #   account.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # The ID of a valid returnable. Must be accompanied by `returnable_type`.
      sig { returns(T.nilable(String)) }
      def returnable_id
      end

      sig { params(_: String).returns(String) }
      def returnable_id=(_)
      end

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)) }
      def returnable_type
      end

      sig do
        params(_: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
          .returns(ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
      end
      def returnable_type=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        counterparty_id: nil,
        internal_account_id: nil,
        per_page: nil,
        returnable_id: nil,
        returnable_type: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              counterparty_id: String,
              internal_account_id: String,
              per_page: Integer,
              returnable_id: String,
              returnable_type: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      module ReturnableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol) }

        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
        PAYMENT_ORDER = T.let(:payment_order, ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
        REVERSAL = T.let(:reversal, ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)
      end
    end
  end
end
