# typed: strong

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # A new email for the counterparty.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # The id of the legal entity.
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # A new name for the counterparty. Will only update if passed.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # If this is `true`, Modern Treasury will send an email to the counterparty
      #   whenever an associated payment order is sent to the bank.
      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_remittance_advice=(_)
      end

      # Either a valid SSN or EIN.
      sig { returns(T.nilable(String)) }
      def taxpayer_identifier
      end

      sig { params(_: String).returns(String) }
      def taxpayer_identifier=(_)
      end

      sig do
        params(
          email: String,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end
    end
  end
end
