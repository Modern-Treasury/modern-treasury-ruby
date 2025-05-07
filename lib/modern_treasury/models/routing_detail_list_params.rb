# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::RoutingDetails#list
    class RoutingDetailListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::AccountsType }

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!method initialize(accounts_type:, after_cursor: nil, per_page: nil, request_options: {})
      #   @param accounts_type [Symbol, ModernTreasury::AccountsType]
      #   @param after_cursor [String, nil]
      #   @param per_page [Integer]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
