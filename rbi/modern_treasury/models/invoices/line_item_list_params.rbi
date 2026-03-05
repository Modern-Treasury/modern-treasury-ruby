# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemListParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::Invoices::LineItemListParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { returns(T.nilable(String)) }
        attr_accessor :after_cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :per_page

        sig { params(per_page: Integer).void }
        attr_writer :per_page

        sig do
          params(
            invoice_id: String,
            after_cursor: T.nilable(String),
            per_page: Integer,
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          invoice_id:,
          after_cursor: nil,
          per_page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              invoice_id: String,
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
