# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetailListParams < ModernTreasury::BaseModel
      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountsType }

      # @!attribute after_cursor
      #
      #   @return [String]
      optional :after_cursor, String

      # @!attribute per_page
      #
      #   @return [Integer]
      optional :per_page, Integer

      # @!parse
      #   # @param accounts_type [String]
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer, nil]
      #   #
      #   def initialize(accounts_type:, after_cursor: nil, per_page: nil) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
