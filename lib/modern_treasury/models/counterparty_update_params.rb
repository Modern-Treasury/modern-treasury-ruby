# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute [r] email
      #   A new email for the counterparty.
      #
      #   @return [String, nil]
      optional :email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :email

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] name
      #   A new name for the counterparty. Will only update if passed.
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] send_remittance_advice
      #   If this is `true`, Modern Treasury will send an email to the counterparty
      #     whenever an associated payment order is sent to the bank.
      #
      #   @return [Boolean, nil]
      optional :send_remittance_advice, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :send_remittance_advice

      # @!attribute [r] taxpayer_identifier
      #   Either a valid SSN or EIN.
      #
      #   @return [String, nil]
      optional :taxpayer_identifier, String

      # @!parse
      #   # @return [String]
      #   attr_writer :taxpayer_identifier

      # @!parse
      #   # @param email [String]
      #   # @param legal_entity_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param send_remittance_advice [Boolean]
      #   # @param taxpayer_identifier [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     email: nil,
      #     legal_entity_id: nil,
      #     metadata: nil,
      #     name: nil,
      #     send_remittance_advice: nil,
      #     taxpayer_identifier: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
