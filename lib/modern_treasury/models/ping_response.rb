# frozen_string_literal: true

module ModernTreasury
  module Models
    class PingResponse < BaseModel
      # @!attribute [rw] ping
      #   @return [String]
      required :ping, String

      # @!parse
      #   # Create a new instance of PingResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :ping
      #   def initialize(data = {}) = super
    end
  end
end
