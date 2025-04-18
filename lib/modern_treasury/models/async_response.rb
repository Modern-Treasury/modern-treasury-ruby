# frozen_string_literal: true

module ModernTreasury
  module Models
    class AsyncResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!method initialize(id:, object:)
      #   @param id [String]
      #   @param object [String]
    end
  end
end
