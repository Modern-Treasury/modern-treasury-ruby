# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#list
    class AccountDetailListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   # @param accounts_type [Symbol, ModernTreasury::Models::AccountsType]
      #   # @param after_cursor [String, nil]
      #   # @param per_page [Integer]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(accounts_type:, after_cursor: nil, per_page: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
