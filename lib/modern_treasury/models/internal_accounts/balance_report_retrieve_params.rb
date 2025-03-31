# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportRetrieveParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::Type::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute internal_account_id
        #
        #   @return [String]
        required :internal_account_id, String

        # @!parse
        #   # @param internal_account_id [String]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(internal_account_id:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
