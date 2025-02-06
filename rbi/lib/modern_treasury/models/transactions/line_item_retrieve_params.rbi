# typed: strong

module ModernTreasury
  module Models
    module Transactions
      class LineItemRetrieveParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig do
          params(request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])).void
        end
        def initialize(request_options: {}); end

        sig { override.returns({request_options: ModernTreasury::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
