# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::RoutingDetails#retrieve
    class RoutingDetailRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!parse
      #   # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #   # @param account_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(accounts_type:, account_id:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
