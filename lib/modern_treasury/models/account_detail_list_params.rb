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
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!parse
      #   # @param accounts_type [String]
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer]
      #   #
      #   def initialize(accounts_type:, after_cursor: nil, per_page: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
