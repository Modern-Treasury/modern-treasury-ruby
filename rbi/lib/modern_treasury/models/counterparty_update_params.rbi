# typed: strong

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # A new email for the counterparty.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      # an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # A new name for the counterparty. Will only update if passed.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # If this is `true`, Modern Treasury will send an email to the counterparty
      # whenever an associated payment order is sent to the bank.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_remittance_advice

      sig { params(send_remittance_advice: T::Boolean).void }
      attr_writer :send_remittance_advice

      # Either a valid SSN or EIN.
      sig { returns(T.nilable(String)) }
      attr_reader :taxpayer_identifier

      sig { params(taxpayer_identifier: String).void }
      attr_writer :taxpayer_identifier

      sig do
        params(
          email: String,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              email: String,
              legal_entity_id: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: String,
              send_remittance_advice: T::Boolean,
              taxpayer_identifier: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
