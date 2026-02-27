# frozen_string_literal: true

module ModernTreasury
  module Models
    class IdentificationCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id_number
      #   The ID number of identification document.
      #
      #   @return [String]
      required :id_number, String

      # @!attribute id_type
      #   The type of ID number.
      #
      #   @return [Symbol, ModernTreasury::Models::IdentificationCreateRequest::IDType]
      required :id_type, enum: -> { ModernTreasury::IdentificationCreateRequest::IDType }

      # @!attribute expiration_date
      #   The date when the Identification is no longer considered valid by the issuing
      #   authority.
      #
      #   @return [Date, nil]
      optional :expiration_date, Date, nil?: true

      # @!attribute issuing_country
      #   The ISO 3166-1 alpha-2 country code of the country that issued the
      #   identification
      #
      #   @return [String, nil]
      optional :issuing_country, String, nil?: true

      # @!attribute issuing_region
      #   The region in which the identifcation was issued.
      #
      #   @return [String, nil]
      optional :issuing_region, String, nil?: true

      # @!method initialize(id_number:, id_type:, expiration_date: nil, issuing_country: nil, issuing_region: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IdentificationCreateRequest} for more details.
      #
      #   @param id_number [String] The ID number of identification document.
      #
      #   @param id_type [Symbol, ModernTreasury::Models::IdentificationCreateRequest::IDType] The type of ID number.
      #
      #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
      #
      #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
      #
      #   @param issuing_region [String, nil] The region in which the identifcation was issued.

      # The type of ID number.
      #
      # @see ModernTreasury::Models::IdentificationCreateRequest#id_type
      module IDType
        extend ModernTreasury::Internal::Type::Enum

        AR_CUIL = :ar_cuil
        AR_CUIT = :ar_cuit
        BR_CNPJ = :br_cnpj
        BR_CPF = :br_cpf
        CA_SIN = :ca_sin
        CL_RUN = :cl_run
        CL_RUT = :cl_rut
        CO_CEDULAS = :co_cedulas
        CO_NIT = :co_nit
        DRIVERS_LICENSE = :drivers_license
        HN_ID = :hn_id
        HN_RTN = :hn_rtn
        IN_LEI = :in_lei
        KR_BRN = :kr_brn
        KR_CRN = :kr_crn
        KR_RRN = :kr_rrn
        PASSPORT = :passport
        SA_TIN = :sa_tin
        SA_VAT = :sa_vat
        US_EIN = :us_ein
        US_ITIN = :us_itin
        US_SSN = :us_ssn
        VN_TIN = :vn_tin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
