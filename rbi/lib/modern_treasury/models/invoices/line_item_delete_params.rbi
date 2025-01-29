# typed: strong

module ModernTreasury
  module Models
    module Invoices
      class LineItemDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias { T.all({invoice_id: String}, ModernTreasury::RequestParameters::Shape) }

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { params(invoice_id: String, request_options: ModernTreasury::RequestOpts).void }
        def initialize(invoice_id:, request_options: {}); end

        sig { returns(ModernTreasury::Models::Invoices::LineItemDeleteParams::Shape) }
        def to_h; end
      end
    end
  end
end
