# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Holds#list
    class HoldListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute metadata
      #   For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #   Translation missing: en.openapi.descriptions.payment_order.query_params.status
      #
      #   @return [Symbol, ModernTreasury::Models::HoldListParams::Status, nil]
      optional :status, enum: -> { ModernTreasury::HoldListParams::Status }, nil?: true

      # @!attribute target_id
      #   Translation missing:
      #   en.openapi.descriptions.payment_order.query_params.target_id
      #
      #   @return [String, nil]
      optional :target_id, String, nil?: true

      # @!attribute target_type
      #   Translation missing:
      #   en.openapi.descriptions.payment_order.query_params.target_type
      #
      #   @return [Symbol, ModernTreasury::Models::HoldListParams::TargetType, nil]
      optional :target_type, enum: -> { ModernTreasury::HoldListParams::TargetType }, nil?: true

      # @!method initialize(after_cursor: nil, metadata: nil, per_page: nil, status: nil, target_id: nil, target_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::HoldListParams} for more details.
      #
      #   @param after_cursor [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      #   @param per_page [Integer]
      #
      #   @param status [Symbol, ModernTreasury::Models::HoldListParams::Status, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.status
      #
      #   @param target_id [String, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.target_i
      #
      #   @param target_type [Symbol, ModernTreasury::Models::HoldListParams::TargetType, nil] Translation missing: en.openapi.descriptions.payment_order.query_params.target_t
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # Translation missing: en.openapi.descriptions.payment_order.query_params.status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        ACTIVE = :active
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Translation missing:
      # en.openapi.descriptions.payment_order.query_params.target_type
      module TargetType
        extend ModernTreasury::Internal::Type::Enum

        PAYMENT_ORDER = :payment_order

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
