# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaperItems
      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
