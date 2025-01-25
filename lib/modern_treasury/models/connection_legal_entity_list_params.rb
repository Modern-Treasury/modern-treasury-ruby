# frozen_string_literal: true

module ModernTreasury
  module Models
    class ConnectionLegalEntityListParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] connection_id
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :connection_id

      # @!attribute [r] legal_entity_id
      #
      #   @return [String, nil]
      optional :legal_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :legal_entity_id

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] status
      #
      #   @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::ConnectionLegalEntityListParams::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::ConnectionLegalEntityListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param after_cursor [String, nil]
      #   # @param connection_id [String]
      #   # @param legal_entity_id [String]
      #   # @param per_page [Integer]
      #   # @param status [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after_cursor: nil,
      #     connection_id: nil,
      #     legal_entity_id: nil,
      #     per_page: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # case status
      # in :completed
      #   # ...
      # in :denied
      #   # ...
      # in :failed
      #   # ...
      # in :processing
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        COMPLETED = :completed
        DENIED = :denied
        FAILED = :failed
        PROCESSING = :processing

        finalize!
      end
    end
  end
end
