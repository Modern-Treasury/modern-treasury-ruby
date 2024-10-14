# frozen_string_literal: true

module ModernTreasury
  module Models
    class PingResponse < BaseModel
      # @!attribute [rw] ping
      #   @return [String]
      required :ping, String

      # Create a new instance of PingResponse from a Hash of raw data.
      #
      # @overload initialize(ping: nil)
      # @param ping [String]
      def initialize(data = {})
        super
      end
    end
  end
end
