# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountCollectionFlows#list
    class AccountCollectionFlowListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute client_token
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!attribute counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!attribute external_account_id
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(after_cursor: nil, client_token: nil, counterparty_id: nil, external_account_id: nil, per_page: nil, status: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param client_token [String]
      #   @param counterparty_id [String]
      #   @param external_account_id [String]
      #   @param per_page [Integer]
      #   @param status [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
