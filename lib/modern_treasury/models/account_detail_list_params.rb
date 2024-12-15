# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailListParams < ModernTreasury::BaseModel
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
    end
  end
end
