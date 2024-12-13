# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowListParams < ModernTreasury::BaseModel
      # @!attribute after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute client_token
      #   @return [String]
      optional :client_token, String

      # @!attribute counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute external_account_id
      #   @return [String]
      optional :external_account_id, String

      # @!attribute per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute status
      #   @return [String]
      optional :status, String
    end
  end
end
