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

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig do
          params(
            id: T::Hash[Symbol, String],
            after_cursor: T.nilable(String),
            per_page: Integer,
            transaction_id: String,
            type: T.nilable(Symbol),
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
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

        sig do
          override
            .returns(
              {
                id: T::Hash[Symbol, String],
                after_cursor: T.nilable(String),
                per_page: Integer,
                transaction_id: String,
                type: T.nilable(Symbol),
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Type < ModernTreasury::Enum
          abstract!

          ORIGINATING = T.let(:originating, T.nilable(Symbol))
          RECEIVING = T.let(:receiving, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
