# frozen_string_literal: true

module ModernTreasury
  module Models
    class AsyncResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # Create a new instance of AsyncResponse from a Hash of raw data.
      #
      # @overload initialize(id: nil, object: nil)
      # @param id [String]
      # @param object [String]
      def initialize(data = {})
        super
      end
    end
  end
end
