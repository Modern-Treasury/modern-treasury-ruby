# typed: strong

module ModernTreasury
  module Resources
    class Identifications
      # Create an Identification for a Legal Entity.
      sig do
        params(
          id_number: String,
          id_type: ModernTreasury::IdentificationCreateParams::IDType::OrSymbol,
          legal_entity_id: String,
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateParams::Document::OrHash
            ],
          expiration_date: T.nilable(Date),
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Identification)
      end
      def create(
        # The ID number of identification document.
        id_number:,
        # The type of ID number.
        id_type:,
        # The ID of the Legal Entity the identification belongs to.
        legal_entity_id:,
        # A list of documents to attach to the identification.
        documents: nil,
        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        expiration_date: nil,
        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        issuing_country: nil,
        # The region in which the identifcation was issued.
        issuing_region: nil,
        request_options: {}
      )
      end

      # Get an existing Identification.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Identification)
      end
      def retrieve(
        # The id of an existing identification.
        id,
        request_options: {}
      )
      end

      # Update an existing Identification.
      sig do
        params(
          id: String,
          expiration_date: T.nilable(Date),
          id_number: String,
          id_type: ModernTreasury::IdentificationUpdateParams::IDType::OrSymbol,
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Identification)
      end
      def update(
        # The id of an existing identification.
        id,
        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        expiration_date: nil,
        # The ID number of identification document.
        id_number: nil,
        # The type of ID number.
        id_type: nil,
        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        issuing_country: nil,
        # The region in which the identifcation was issued.
        issuing_region: nil,
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
