# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#update
    class CounterpartyUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute email
      #   A new email for the counterparty.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String, nil?: true

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute name
      #   A new name for the counterparty. Will only update if passed.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute send_remittance_advice
      #   If this is `true`, Modern Treasury will send an email to the counterparty
      #   whenever an associated payment order is sent to the bank.
      #
      #   @return [Boolean, nil]
      optional :send_remittance_advice, ModernTreasury::Internal::Type::Boolean

      # @!attribute taxpayer_identifier
      #   Either a valid SSN or EIN.
      #
      #   @return [String, nil]
      optional :taxpayer_identifier, String

      # @!method initialize(email: nil, external_id: nil, legal_entity_id: nil, metadata: nil, name: nil, send_remittance_advice: nil, taxpayer_identifier: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::CounterpartyUpdateParams} for more details.
      #
      #   @param email [String] A new email for the counterparty.
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param legal_entity_id [String, nil] The id of the legal entity.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      #   @param name [String] A new name for the counterparty. Will only update if passed.
      #
      #   @param send_remittance_advice [Boolean] If this is `true`, Modern Treasury will send an email to the counterparty whenev
      #
      #   @param taxpayer_identifier [String] Either a valid SSN or EIN.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
