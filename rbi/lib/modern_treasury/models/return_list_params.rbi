# typed: strong

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Specify `counterparty_id` if you wish to see returns that occurred with a
      #   specific counterparty.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Specify `internal_account_id` if you wish to see returns to/from a specific
      #   account.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # The ID of a valid returnable. Must be accompanied by `returnable_type`.
      sig { returns(T.nilable(String)) }
      attr_reader :returnable_id

      sig { params(returnable_id: String).void }
      attr_writer :returnable_id

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol)) }
      attr_reader :returnable_type

      sig { params(returnable_type: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol).void }
      attr_writer :returnable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol) }

        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol)
        PAPER_ITEM = T.let(:paper_item, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol)
        PAYMENT_ORDER =
          T.let(:payment_order, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol)
        RETURN = T.let(:return, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol)
        REVERSAL = T.let(:reversal, ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ReturnListParams::ReturnableType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
