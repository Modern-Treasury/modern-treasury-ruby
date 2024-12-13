# frozen_string_literal: true

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!parse
      #   # Create a new instance of AsyncResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :object
      #   def initialize(data = {}) = super
    end
  end
end
