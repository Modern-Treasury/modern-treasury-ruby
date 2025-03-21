# typed: strong

module ModernTreasury
  module Models
    class CounterpartyListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Used to return counterparties created after some datetime.
      sig { returns(T.nilable(Time)) }
      def created_at_lower_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_lower_bound=(_)
      end

      # Used to return counterparties created before some datetime.
      sig { returns(T.nilable(Time)) }
      def created_at_upper_bound
      end

      sig { params(_: Time).returns(Time) }
      def created_at_upper_bound=(_)
      end

      # Performs a partial string match of the email field. This is also case
      #   insensitive.
      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # Filters for counterparties with the given legal entity ID.
      sig { returns(T.nilable(String)) }
      def legal_entity_id
      end

      sig { params(_: String).returns(String) }
      def legal_entity_id=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Performs a partial string match of the name field. This is also case
      #   insensitive.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

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
