# typed: strong

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Used to return counterparties created after some datetime.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lower_bound

      sig { params(created_at_lower_bound: Time).void }
      attr_writer :created_at_lower_bound

      # Used to return counterparties created before some datetime.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_upper_bound

      sig { params(created_at_upper_bound: Time).void }
      attr_writer :created_at_upper_bound

      # Performs a partial string match of the email field. This is also case
      #   insensitive.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Filters for counterparties with the given legal entity ID.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_entity_id

      sig { params(legal_entity_id: String).void }
      attr_writer :legal_entity_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Performs a partial string match of the name field. This is also case
      #   insensitive.
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
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        created_at_lower_bound: nil,
        created_at_upper_bound: nil,
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              created_at_lower_bound: Time,
              created_at_upper_bound: Time,
              email: String,
              legal_entity_id: String,
              metadata: T::Hash[Symbol, String],
              name: String,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
