# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Holds
      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
