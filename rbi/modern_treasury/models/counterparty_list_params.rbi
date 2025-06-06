# typed: strong

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::CounterpartyListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

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
      # insensitive.
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
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Performs a partial string match of the name field. This is also case
      # insensitive.
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
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Used to return counterparties created after some datetime.
        created_at_lower_bound: nil,
        # Used to return counterparties created before some datetime.
        created_at_upper_bound: nil,
        # Performs a partial string match of the email field. This is also case
        # insensitive.
        email: nil,
        # Filters for counterparties with the given legal entity ID.
        legal_entity_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        # Performs a partial string match of the name field. This is also case
        # insensitive.
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
