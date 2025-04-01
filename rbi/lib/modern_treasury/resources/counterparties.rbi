# typed: strong

module ModernTreasury
  module Resources
    class Counterparties
      # Create a new counterparty.
      sig do
        params(
          name: T.nilable(String),
          accounting: T.any(ModernTreasury::Models::CounterpartyCreateParams::Accounting, ModernTreasury::Util::AnyHash),
          accounts: T::Array[T.any(ModernTreasury::Models::CounterpartyCreateParams::Account, ModernTreasury::Util::AnyHash)],
          email: T.nilable(String),
          ledger_type: ModernTreasury::Models::CounterpartyCreateParams::LedgerType::OrSymbol,
          legal_entity: T.any(ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, ModernTreasury::Util::AnyHash),
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          verification_status: ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def create(
        # A human friendly name for this counterparty.
        name:,
        accounting: nil,
        # The accounts for this counterparty.
        accounts: nil,
        # The counterparty's email.
        email: nil,
        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        ledger_type: nil,
        legal_entity: nil,
        # The id of the legal entity.
        legal_entity_id: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        # Send an email to the counterparty whenever an associated payment order is sent
        #   to the bank.
        send_remittance_advice: nil,
        # Either a valid SSN or EIN.
        taxpayer_identifier: nil,
        # The verification status of the counterparty.
        verification_status: nil,
        request_options: {}
      )
      end

      # Get details on a single counterparty.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def retrieve(
        # The id of an existing counterparty.
        id,
        request_options: {}
      )
      end

      # Updates a given counterparty with new information.
      sig do
        params(
          id: String,
          email: String,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def update(
        # The id of an existing counterparty.
        id,
        # A new email for the counterparty.
        email: nil,
        # The id of the legal entity.
        legal_entity_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        #   an empty string or `null` as the value.
        metadata: nil,
        # A new name for the counterparty. Will only update if passed.
        name: nil,
        # If this is `true`, Modern Treasury will send an email to the counterparty
        #   whenever an associated payment order is sent to the bank.
        send_remittance_advice: nil,
        # Either a valid SSN or EIN.
        taxpayer_identifier: nil,
        request_options: {}
      )
      end

      # Get a paginated list of all counterparties.
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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::Counterparty])
      end
      def list(
        after_cursor: nil,
        # Used to return counterparties created after some datetime.
        created_at_lower_bound: nil,
        # Used to return counterparties created before some datetime.
        created_at_upper_bound: nil,
        # Performs a partial string match of the email field. This is also case
        #   insensitive.
        email: nil,
        # Filters for counterparties with the given legal entity ID.
        legal_entity_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        # Performs a partial string match of the name field. This is also case
        #   insensitive.
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # Deletes a given counterparty.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .void
      end
      def delete(
        # The id of an existing counterparty.
        id,
        request_options: {}
      )
      end

      # Send an email requesting account details.
      sig do
        params(
          id: String,
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          custom_redirect: String,
          fields: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol],
          send_email: T::Boolean,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash))
        )
          .returns(ModernTreasury::Models::CounterpartyCollectAccountResponse)
      end
      def collect_account(
        # counterparty id
        id,
        # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
        #   Use `debit` when you need to charge a counterparty. This field helps us send a
        #   more tailored email to your counterparties."
        direction:,
        # The URL you want your customer to visit upon filling out the form. By default,
        #   they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
        #   URL if set.
        custom_redirect: nil,
        # The list of fields you want on the form. This field is optional and if it is not
        #   set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
        #   \"routingNumber\", \"address\"]. The full list of options is [\"name\",
        #   \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
        #   \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
        fields: nil,
        # By default, Modern Treasury will send an email to your counterparty that
        #   includes a link to the form they must fill out. However, if you would like to
        #   send the counterparty the link, you can set this parameter to `false`. The JSON
        #   body will include the link to the secure Modern Treasury form.
        send_email: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
