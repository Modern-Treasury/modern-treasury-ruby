# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :id

        sig { params(id: T::Hash[Symbol, String]).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id

        sig { params(transaction_id: String).void }
        attr_writer :transaction_id

        sig { returns(T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol)) }
        attr_accessor :type

        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(ModernTreasury::Models::Transactions::LineItemListParams::Type::OrSymbol),
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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

          sig { override.returns(T::Array[ModernTreasury::Models::Transactions::LineItemListParams::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
