# typed: strong

module ModernTreasury
  module Models
    module PaymentOrders
      class ReversalListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

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

        sig do
          params(
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(after_cursor: nil, per_page: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                after_cursor: T.nilable(String),
                per_page: Integer,
                request_options: ModernTreasury::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
