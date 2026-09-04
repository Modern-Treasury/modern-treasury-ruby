# typed: strong

module ModernTreasury
  module Models
    class IdentificationCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IdentificationCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID number of identification document.
      sig { returns(String) }
      attr_accessor :id_number

      # The type of ID number.
      sig do
        returns(ModernTreasury::IdentificationCreateParams::IDType::OrSymbol)
      end
      attr_accessor :id_type

      # The ID of the Legal Entity the identification belongs to.
      sig { returns(String) }
      attr_accessor :legal_entity_id

      # A list of documents to attach to the identification.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::IdentificationCreateParams::Document]
          )
        )
      end
      attr_reader :documents

      sig do
        params(
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateParams::Document::OrHash
            ]
        ).void
      end
      attr_writer :documents

      # The date when the Identification is no longer considered valid by the issuing
      # authority.
      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # The ISO 3166-1 alpha-2 country code of the country that issued the
      # identification
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_country

      # The region in which the identifcation was issued.
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_region

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            id_number: String,
            id_type:
              ModernTreasury::IdentificationCreateParams::IDType::OrSymbol,
            legal_entity_id: String,
            documents:
              T::Array[ModernTreasury::IdentificationCreateParams::Document],
            expiration_date: T.nilable(Date),
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of ID number.
      module IDType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::IdentificationCreateParams::IDType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AR_CUIL =
          T.let(
            :ar_cuil,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        AR_CUIT =
          T.let(
            :ar_cuit,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        AT_ATIN =
          T.let(
            :at_atin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        AT_VAT =
          T.let(
            :at_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        AU_ABN =
          T.let(
            :au_abn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        AU_TFN =
          T.let(
            :au_tfn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        BE_ENT =
          T.let(
            :be_ent,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        BE_NRN =
          T.let(
            :be_nrn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        BR_CNPJ =
          T.let(
            :br_cnpj,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        BR_CPF =
          T.let(
            :br_cpf,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CA_BN =
          T.let(
            :ca_bn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CA_SIN =
          T.let(
            :ca_sin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CH_AHV =
          T.let(
            :ch_ahv,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CH_UID =
          T.let(
            :ch_uid,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CL_RUN =
          T.let(
            :cl_run,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CL_RUT =
          T.let(
            :cl_rut,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CO_CEDULAS =
          T.let(
            :co_cedulas,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CO_NIT =
          T.let(
            :co_nit,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CY_TIN =
          T.let(
            :cy_tin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CZ_ICO =
          T.let(
            :cz_ico,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        CZ_RC =
          T.let(
            :cz_rc,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DE_STID =
          T.let(
            :de_stid,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DE_STNR =
          T.let(
            :de_stnr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DE_VAT =
          T.let(
            :de_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DK_CPR =
          T.let(
            :dk_cpr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DK_CVR =
          T.let(
            :dk_cvr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        EE_IK =
          T.let(
            :ee_ik,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        EE_RK =
          T.let(
            :ee_rk,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        ES_NIE =
          T.let(
            :es_nie,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        ES_NIF =
          T.let(
            :es_nif,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        FI_HETU =
          T.let(
            :fi_hetu,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        FI_YTJ =
          T.let(
            :fi_ytj,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        FR_NIF =
          T.let(
            :fr_nif,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        FR_SIREN =
          T.let(
            :fr_siren,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        FR_VAT =
          T.let(
            :fr_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        GB_NINO =
          T.let(
            :gb_nino,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        GB_UTR =
          T.let(
            :gb_utr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        GB_VAT =
          T.let(
            :gb_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        GENERIC_INTERNATIONAL =
          T.let(
            :generic_international,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        GR_VAT =
          T.let(
            :gr_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HK_BRN =
          T.let(
            :hk_brn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HK_HKID =
          T.let(
            :hk_hkid,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HN_ID =
          T.let(
            :hn_id,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HN_RTN =
          T.let(
            :hn_rtn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HR_OIB =
          T.let(
            :hr_oib,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HU_ADJ =
          T.let(
            :hu_adj,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        HU_ANUM =
          T.let(
            :hu_anum,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IE_PPS =
          T.let(
            :ie_pps,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IE_TRN =
          T.let(
            :ie_trn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IN_LEI =
          T.let(
            :in_lei,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IS_KNT =
          T.let(
            :is_knt,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IT_CF =
          T.let(
            :it_cf,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        IT_PIVA =
          T.let(
            :it_piva,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        JP_HB =
          T.let(
            :jp_hb,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        JP_MN =
          T.let(
            :jp_mn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        KR_BRN =
          T.let(
            :kr_brn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        KR_CRN =
          T.let(
            :kr_crn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        KR_RRN =
          T.let(
            :kr_rrn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LI_PEID =
          T.let(
            :li_peid,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LT_AK =
          T.let(
            :lt_ak,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LT_JAK =
          T.let(
            :lt_jak,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LU_MTC =
          T.let(
            :lu_mtc,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LU_VAT =
          T.let(
            :lu_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LV_PK =
          T.let(
            :lv_pk,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        LV_RN =
          T.let(
            :lv_rn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        MT_TIN =
          T.let(
            :mt_tin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        MT_VAT =
          T.let(
            :mt_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        MX_CURP =
          T.let(
            :mx_curp,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        MX_INE =
          T.let(
            :mx_ine,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        MX_RFC =
          T.let(
            :mx_rfc,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NATIONAL_ID =
          T.let(
            :national_id,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NL_BSN =
          T.let(
            :nl_bsn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NL_BTW =
          T.let(
            :nl_btw,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NL_RSIN =
          T.let(
            :nl_rsin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NO_FDN =
          T.let(
            :no_fdn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NO_MVA =
          T.let(
            :no_mva,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NO_ORGNR =
          T.let(
            :no_orgnr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        NZ_IRD =
          T.let(
            :nz_ird,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :passport,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        PL_NIP =
          T.let(
            :pl_nip,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        PL_PESEL =
          T.let(
            :pl_pesel,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        PT_NIF =
          T.let(
            :pt_nif,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        RO_CNP =
          T.let(
            :ro_cnp,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        RO_CUI =
          T.let(
            :ro_cui,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SA_TIN =
          T.let(
            :sa_tin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SA_VAT =
          T.let(
            :sa_vat,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SE_ORGNR =
          T.let(
            :se_orgnr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SE_PNMR =
          T.let(
            :se_pnmr,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SG_FIN =
          T.let(
            :sg_fin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SG_NRIC =
          T.let(
            :sg_nric,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SG_UEN =
          T.let(
            :sg_uen,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SI_DAV =
          T.let(
            :si_dav,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SI_TIN =
          T.let(
            :si_tin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SK_ICO =
          T.let(
            :sk_ico,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        SK_RC =
          T.let(
            :sk_rc,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        US_EIN =
          T.let(
            :us_ein,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        US_ITIN =
          T.let(
            :us_itin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        US_SSN =
          T.let(
            :us_ssn,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        UY_RUT =
          T.let(
            :uy_rut,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )
        VN_TIN =
          T.let(
            :vn_tin,
            ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IdentificationCreateParams::IDType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Document < ModernTreasury::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::IdentificationCreateParams::Document,
              ModernTreasury::Internal::AnyHash
            )
          end

        # A category given to the document, can be `null`.
        sig do
          returns(
            ModernTreasury::IdentificationCreateParams::Document::DocumentType::OrSymbol
          )
        end
        attr_accessor :document_type

        # Base64-encoded file content for the document.
        sig { returns(String) }
        attr_accessor :file_data

        # The original filename of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        sig do
          params(
            document_type:
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::OrSymbol,
            file_data: String,
            filename: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A category given to the document, can be `null`.
          document_type:,
          # Base64-encoded file content for the document.
          file_data:,
          # The original filename of the document.
          filename: nil
        )
        end

        sig do
          override.returns(
            {
              document_type:
                ModernTreasury::IdentificationCreateParams::Document::DocumentType::OrSymbol,
              file_data: String,
              filename: String
            }
          )
        end
        def to_hash
        end

        # A category given to the document, can be `null`.
        module DocumentType
          extend ModernTreasury::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::IdentificationCreateParams::Document::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          CERTIFICATE_OF_GOOD_STANDING =
            T.let(
              :certificate_of_good_standing,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          GENERIC =
            T.let(
              :generic,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_BACK =
            T.let(
              :identification_back,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_FRONT =
            T.let(
              :identification_front,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::IdentificationCreateParams::Document::DocumentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
