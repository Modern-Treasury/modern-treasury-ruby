# frozen_string_literal: true

module ModernTreasury
  module Models
    # @deprecated
    class Accounting < ModernTreasury::Internal::Type::BaseModel
      # @!attribute account_id
      #   @deprecated
      #
      #   The ID of one of your accounting categories. Note that these will only be
      #   accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute class_id
      #   @deprecated
      #
      #   The ID of one of the class objects in your accounting system. Class objects
      #   track segments of your business independent of client or project. Note that
      #   these will only be accessible if your accounting system has been connected.
      #
      #   @return [String, nil]
      optional :class_id, String, nil?: true

      # @!method initialize(account_id: nil, class_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Accounting} for more details.
      #
      #   @param account_id [String, nil] The ID of one of your accounting categories. Note that these will only be access
      #
      #   @param class_id [String, nil] The ID of one of the class objects in your accounting system. Class objects trac
    end
  end
end
