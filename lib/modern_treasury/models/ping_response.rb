# frozen_string_literal: true

module ModernTreasury
  module Models
    class PingResponse < ModernTreasury::BaseModel
      # @!attribute ping
      #
      #   @return [String]
      required :ping, String

      # @!parse
      #   # @param ping [String]
      #   #
      #   def initialize(ping:) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
