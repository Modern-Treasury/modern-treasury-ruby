# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::InternalAccounts#update_account_capability
    class InternalAccountUpdateAccountCapabilityParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute internal_account_id
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute identifier
      #   A unique reference assigned by your bank for tracking and recognizing payment
      #   files. It is important this is formatted exactly how the bank assigned it.
      #
      #   @return [String]
      required :identifier, String

      # @!method initialize(internal_account_id:, identifier:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::InternalAccountUpdateAccountCapabilityParams} for more
      #   details.
      #
      #   @param internal_account_id [String]
      #
      #   @param identifier [String] A unique reference assigned by your bank for tracking and recognizing payment fi
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
