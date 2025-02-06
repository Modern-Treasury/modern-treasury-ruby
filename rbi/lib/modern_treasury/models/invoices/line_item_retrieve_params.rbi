# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemRetrieveParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :invoice_id

        sig do
          params(
            invoice_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(invoice_id:, request_options: {}); end

        sig { override.returns({invoice_id: String, request_options: ModernTreasury::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
