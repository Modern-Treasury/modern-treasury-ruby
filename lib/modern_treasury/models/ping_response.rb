# frozen_string_literal: true

module ModernTreasury
  module Models
    class PingResponse < BaseModel
      # @!attribute [rw] ping
      #   @return [String]
      required :ping, String
    end
  end
end
