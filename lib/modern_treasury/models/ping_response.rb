# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Client#ping
    class PingResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute ping
      #
      #   @return [String]
      required :ping, String

      # @!method initialize(ping:)
      #   @param ping [String]
    end
  end
end
