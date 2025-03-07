# typed: strong

module ModernTreasury
  module Models
    class CounterpartyUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def legal_entity_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def send_remittance_advice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_remittance_advice=(_)
      end

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
