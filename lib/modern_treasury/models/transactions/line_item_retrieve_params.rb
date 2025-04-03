# frozen_string_literal: true

module ModernTreasury
  module Models
    module Transactions
      # @see ModernTreasury::Resources::Transactions::LineItems#retrieve
      class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!parse
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
      end
    end
  end
end
