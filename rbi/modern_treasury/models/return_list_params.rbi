# typed: strong

module ModernTreasury
  module Models
    class ReturnListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ReturnListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Specify `counterparty_id` if you wish to see returns that occurred with a
      # specific counterparty.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Specify `internal_account_id` if you wish to see returns to/from a specific
      # account.
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
      # Must be accompanied by `returnable_id`.
      sig do
        returns(
          T.nilable(ModernTreasury::ReturnListParams::ReturnableType::OrSymbol)
        )
      end
      attr_reader :returnable_type

      sig do
        params(
          returnable_type:
            ModernTreasury::ReturnListParams::ReturnableType::OrSymbol
        ).void
      end
      attr_writer :returnable_type

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type:
            ModernTreasury::ReturnListParams::ReturnableType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Specify `counterparty_id` if you wish to see returns that occurred with a
        # specific counterparty.
        counterparty_id: nil,
        # Specify `internal_account_id` if you wish to see returns to/from a specific
        # account.
        internal_account_id: nil,
        per_page: nil,
        # The ID of a valid returnable. Must be accompanied by `returnable_type`.
        returnable_id: nil,
        # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
        # Must be accompanied by `returnable_id`.
        returnable_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            counterparty_id: String,
            internal_account_id: String,
            per_page: Integer,
            returnable_id: String,
            returnable_type:
              ModernTreasury::ReturnListParams::ReturnableType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      # Must be accompanied by `returnable_id`.
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ReturnListParams::ReturnableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING_PAYMENT_DETAIL =
          T.let(
            :incoming_payment_detail,
            ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
          )
        PAPER_ITEM =
          T.let(
            :paper_item,
            ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
          )
        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ReturnListParams::ReturnableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
