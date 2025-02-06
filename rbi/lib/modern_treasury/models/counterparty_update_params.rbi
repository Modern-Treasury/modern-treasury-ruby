# typed: strong

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_accessor :legal_entity_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_remittance_advice

      sig { params(send_remittance_advice: T::Boolean).void }
      attr_writer :send_remittance_advice

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
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
