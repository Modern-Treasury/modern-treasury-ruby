# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # ping_response => {
    #   ping: String
    # }
    # ```
    class PingResponse < ModernTreasury::BaseModel
      # @!attribute ping
      #
      #   @return [String]
      required :ping, String

      # @!parse
      #   # @param ping [String]
      #   #
      #   def initialize(ping:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
