# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] client_token
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_token

      # @!attribute [r] counterparty_id
      #
      #   @return [String, nil]
      optional :counterparty_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :counterparty_id

      # @!attribute [r] external_account_id
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_account_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] status
      #
      #   @return [String, nil]
      optional :status, String

      # @!parse
      #   # @return [String]
      #   attr_writer :status

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param client_token [String]
      #   # @param counterparty_id [String]
      #   # @param external_account_id [String]
      #   # @param per_page [Integer]
      #   # @param status [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     client_token: nil,
      #     counterparty_id: nil,
      #     external_account_id: nil,
      #     per_page: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
