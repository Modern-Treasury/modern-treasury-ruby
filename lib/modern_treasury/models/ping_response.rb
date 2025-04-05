# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Client#ping
    class PingResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute ping
      #
      #   @return [String]
      required :ping, String

      # @!parse
      #   # @param ping [String]
      #   #
      #   def initialize(ping:, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void
    end
  end
end
