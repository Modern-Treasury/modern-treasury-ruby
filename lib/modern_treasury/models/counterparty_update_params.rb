# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::BaseModel
      # @!attribute email
      #   A new email for the counterparty.
      #   @return [String]
      optional :email, String

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #   @return [String]
      optional :legal_entity_id, String

      # @!attribute metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing an empty string or `null` as the value.
      #   @return [Hash]
      optional :metadata, Hash

      # @!attribute name
      #   A new name for the counterparty. Will only update if passed.
      #   @return [String]
      optional :name, String

      # @!attribute send_remittance_advice
      #   If this is `true`, Modern Treasury will send an email to the counterparty whenever an associated payment order is sent to the bank.
      #   @return [Boolean]
      optional :send_remittance_advice, ModernTreasury::BooleanModel

      # @!attribute taxpayer_identifier
      #   Either a valid SSN or EIN.
      #   @return [String]
      optional :taxpayer_identifier, String
    end
  end
end
