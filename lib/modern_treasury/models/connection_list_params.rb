# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Connections#list
    class ConnectionListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute after_cursor
      #
      #   @return [String, nil]
      optional :after_cursor, String, nil?: true

      # @!attribute entity
      #   A string code representing the vendor (i.e. bank).
      #
      #   @return [String, nil]
      optional :entity, String

      # @!attribute per_page
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute vendor_customer_id
      #   An identifier assigned by the vendor to your organization.
      #
      #   @return [String, nil]
      optional :vendor_customer_id, String

      # @!method initialize(after_cursor: nil, entity: nil, per_page: nil, vendor_customer_id: nil, request_options: {})
      #   @param after_cursor [String, nil]
      #
      #   @param entity [String] A string code representing the vendor (i.e. bank).
      #
      #   @param per_page [Integer]
      #
      #   @param vendor_customer_id [String] An identifier assigned by the vendor to your organization.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
