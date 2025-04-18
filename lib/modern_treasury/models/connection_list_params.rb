# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Connections#list
    class ConnectionListParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute [r] entity
      #   A string code representing the vendor (i.e. bank).
      #
      #   @return [String, nil]
      optional :entity, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity

      # @!attribute [r] per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :per_page

      # @!attribute [r] vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #
      #   @return [String, nil]
      optional :vendor_customer_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :vendor_customer_id

      # @!method initialize(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #   @param entity [String]
      #   @param per_page [Integer]
      #   @param vendor_customer_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
