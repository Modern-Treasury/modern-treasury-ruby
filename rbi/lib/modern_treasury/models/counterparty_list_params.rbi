# typed: strong

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            created_at_lower_bound: Time,
            created_at_upper_bound: Time,
            email: String,
            legal_entity_id: String,
            metadata: T::Hash[Symbol, String],
            name: String,
            per_page: Integer
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lower_bound

      sig { params(created_at_lower_bound: Time).void }
      attr_writer :created_at_lower_bound

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_upper_bound

      sig { params(created_at_upper_bound: Time).void }
      attr_writer :created_at_upper_bound

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          email: String,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        created_at_lower_bound: nil,
        created_at_upper_bound: nil,
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
        per_page: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::CounterpartyListParams::Shape) }
      def to_h; end
    end
  end
end
