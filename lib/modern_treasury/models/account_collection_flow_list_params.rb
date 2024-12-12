# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowListParams < ModernTreasury::BaseModel
      # @!attribute [rw] after_cursor
      #   @return [String]
      optional :after_cursor, String

      # @!attribute [rw] client_token
      #   @return [String]
      optional :client_token, String

      # @!attribute [rw] counterparty_id
      #   @return [String]
      optional :counterparty_id, String

      # @!attribute [rw] external_account_id
      #   @return [String]
      optional :external_account_id, String

      # @!attribute [rw] per_page
      #   @return [Integer]
      optional :per_page, Integer

      # @!attribute [rw] status
      #   @return [String]
      optional :status, String
    end
  end
end
