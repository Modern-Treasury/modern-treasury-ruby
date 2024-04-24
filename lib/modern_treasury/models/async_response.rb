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
    end
  end
end
