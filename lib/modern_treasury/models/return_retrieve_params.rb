# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Returns#retrieve
    class ReturnRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
