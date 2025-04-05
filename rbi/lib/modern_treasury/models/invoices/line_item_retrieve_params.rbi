# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :invoice_id

        sig do
          params(
            invoice_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
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
