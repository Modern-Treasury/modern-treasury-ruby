# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @see ModernTreasury::Resources::InternalAccounts::BalanceReports#delete
      class BalanceReportDeleteParams < ModernTreasury::Internal::Type::BaseModel
        # @!parse
        #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute internal_account_id
        #
        #   @return [String]
        required :internal_account_id, String

        # @!parse
        #   # @param internal_account_id [String]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(internal_account_id:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
      end
    end
  end
end
