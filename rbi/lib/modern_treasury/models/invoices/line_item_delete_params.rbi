# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::Type::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :invoice_id

        sig do
          params(
            invoice_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(invoice_id:, request_options: {})
        end

        sig { override.returns({invoice_id: String, request_options: ModernTreasury::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
