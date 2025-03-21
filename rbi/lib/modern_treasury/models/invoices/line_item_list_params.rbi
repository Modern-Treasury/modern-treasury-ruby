# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemListParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

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
