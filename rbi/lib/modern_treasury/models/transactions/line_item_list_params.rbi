# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def id
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def id=(_)
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

        sig { returns(T.nilable(String)) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { returns(T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol)) }
        def type
        end

        sig do
          params(_: T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol))
            .returns(T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol))
        end
        def type=(_)
        end

        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol),
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(id: nil, after_cursor: nil, per_page: nil, transaction_id: nil, type: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                id: T::Hash[Symbol, String],
                after_cursor: T.nilable(String),
                per_page: Integer,
                transaction_id: String,
                type: T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol),
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end

        module Type
          extend ModernTreasury::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, ModernTreasury::Models::Transactions::LineItemListParams::Type::TaggedSymbol) }

          ORIGINATING =
            T.let(:originating, ModernTreasury::Models::Transactions::LineItemListParams::Type::TaggedSymbol)
          RECEIVING =
            T.let(:receiving, ModernTreasury::Models::Transactions::LineItemListParams::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[ModernTreasury::Models::Transactions::LineItemListParams::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
