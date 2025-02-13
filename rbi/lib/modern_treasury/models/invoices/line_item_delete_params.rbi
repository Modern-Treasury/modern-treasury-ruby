# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        def invoice_id
        end

        sig { params(_: String).returns(String) }
        def invoice_id=(_)
        end

        sig do
          params(
            invoice_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(invoice_id:, request_options: {})
        end

        sig { override.returns({invoice_id: String, request_options: ModernTreasury::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
