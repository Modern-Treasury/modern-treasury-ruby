# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntity < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] connection_id
      #   The ID of the connection.
      #   @return [String]
      optional :connection_id, String

      # @!attribute [rw] created_at
      #   @return [String]
      optional :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      optional :discarded_at, String

      # @!attribute [rw] legal_entity_id
      #   The ID of the legal entity.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      optional :object, String

      # @!attribute [rw] status
      #   The status of the connection legal entity.
      #   @return [Symbol]
      optional :status, ModernTreasury::Enum.new(:completed, :denied, :failed, :processing)

      # @!attribute [rw] updated_at
      #   @return [String]
      optional :updated_at, String
    end
  end
end
