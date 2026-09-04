# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Identifications
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::IdentificationCreateParams} for more details.
      #
      # Create an Identification for a Legal Entity.
      #
      # @overload create(id_number:, id_type:, legal_entity_id:, documents: nil, expiration_date: nil, issuing_country: nil, issuing_region: nil, request_options: {})
      #
      # @param id_number [String] The ID number of identification document.
      #
      # @param id_type [Symbol, ModernTreasury::Models::IdentificationCreateParams::IDType] The type of ID number.
      #
      # @param legal_entity_id [String] The ID of the Legal Entity the identification belongs to.
      #
      # @param documents [Array<ModernTreasury::Models::IdentificationCreateParams::Document>] A list of documents to attach to the identification.
      #
      # @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
      #
      # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
      #
      # @param issuing_region [String, nil] The region in which the identifcation was issued.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Identification]
      #
      # @see ModernTreasury::Models::IdentificationCreateParams
      def create(params)
        parsed, options = ModernTreasury::IdentificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/identifications",
          body: parsed,
          model: ModernTreasury::Identification,
          options: options
        )
      end

      # Get an existing Identification.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of an existing identification.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Identification]
      #
      # @see ModernTreasury::Models::IdentificationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/identifications/%1$s", id],
          model: ModernTreasury::Identification,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::IdentificationUpdateParams} for more details.
      #
      # Update an existing Identification.
      #
      # @overload update(id, expiration_date: nil, id_number: nil, id_type: nil, issuing_country: nil, issuing_region: nil, request_options: {})
      #
      # @param id [String] The id of an existing identification.
      #
      # @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
      #
      # @param id_number [String] The ID number of identification document.
      #
      # @param id_type [Symbol, ModernTreasury::Models::IdentificationUpdateParams::IDType] The type of ID number.
      #
      # @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
      #
      # @param issuing_region [String, nil] The region in which the identifcation was issued.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Identification]
      #
      # @see ModernTreasury::Models::IdentificationUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::IdentificationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/identifications/%1$s", id],
          body: parsed,
          model: ModernTreasury::Identification,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
