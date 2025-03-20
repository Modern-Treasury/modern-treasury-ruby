# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!parse
      #   # @param accounts_type [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType]
      #   # @param account_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(accounts_type:, account_id:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      module AccountsType
        extend ModernTreasury::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
