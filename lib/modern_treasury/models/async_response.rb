# frozen_string_literal: true

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!parse
      #   # @param id [String]
      #   # @param object [String]
      #   #
      #   def initialize(id:, object:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
