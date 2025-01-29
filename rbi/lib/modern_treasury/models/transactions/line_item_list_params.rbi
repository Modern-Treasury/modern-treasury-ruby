# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              id: T::Hash[Symbol, String],
              after_cursor: T.nilable(String),
              per_page: Integer,
              transaction_id: String,
              type: T.nilable(Symbol)
            },
            ModernTreasury::RequestParameters::Shape
          )
        end

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

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :type

        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(Symbol),
            request_options: ModernTreasury::RequestOpts
          ).void
        end
        def initialize(
          id: nil,
          after_cursor: nil,
          per_page: nil,
          transaction_id: nil,
          type: nil,
          request_options: {}
        )
        end

        sig { returns(ModernTreasury::Models::Transactions::LineItemListParams::Shape) }
        def to_h; end

        class Type < ModernTreasury::Enum
          abstract!

          ORIGINATING = T.let(:originating, T.nilable(Symbol))
          RECEIVING = T.let(:receiving, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
