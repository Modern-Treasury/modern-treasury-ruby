# typed: strong

module ModernTreasury
  module Models
    class IdentificationUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IdentificationUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The date when the Identification is no longer considered valid by the issuing
      # authority.
      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # The ID number of identification document.
      sig { returns(T.nilable(String)) }
      attr_reader :id_number

      sig { params(id_number: String).void }
      attr_writer :id_number

      # The type of ID number.
      sig do
        returns(
          T.nilable(
            ModernTreasury::IdentificationUpdateParams::IDType::OrSymbol
          )
        )
      end
      attr_reader :id_type

      sig do
        params(
          id_type: ModernTreasury::IdentificationUpdateParams::IDType::OrSymbol
        ).void
      end
      attr_writer :id_type

      # The ISO 3166-1 alpha-2 country code of the country that issued the
      # identification
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_country

      # The region in which the identifcation was issued.
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_region

      sig do
        params(
          id: String,
          expiration_date: T.nilable(Date),
          id_number: String,
          id_type: ModernTreasury::IdentificationUpdateParams::IDType::OrSymbol,
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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

      sig do
        override.returns(
          {
            id: String,
            expiration_date: T.nilable(Date),
            id_number: String,
            id_type:
              ModernTreasury::IdentificationUpdateParams::IDType::OrSymbol,
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
            T.all(Symbol, ModernTreasury::IdentificationUpdateParams::IDType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AR_CUIL =
          T.let(
            :ar_cuil,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        AR_CUIT =
          T.let(
            :ar_cuit,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        AT_ATIN =
          T.let(
            :at_atin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        AT_VAT =
          T.let(
            :at_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        AU_ABN =
          T.let(
            :au_abn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        AU_TFN =
          T.let(
            :au_tfn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        BE_ENT =
          T.let(
            :be_ent,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        BE_NRN =
          T.let(
            :be_nrn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        BR_CNPJ =
          T.let(
            :br_cnpj,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        BR_CPF =
          T.let(
            :br_cpf,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CA_BN =
          T.let(
            :ca_bn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CA_SIN =
          T.let(
            :ca_sin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CH_AHV =
          T.let(
            :ch_ahv,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CH_UID =
          T.let(
            :ch_uid,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CL_RUN =
          T.let(
            :cl_run,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CL_RUT =
          T.let(
            :cl_rut,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CO_CEDULAS =
          T.let(
            :co_cedulas,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CO_NIT =
          T.let(
            :co_nit,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CY_TIN =
          T.let(
            :cy_tin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CZ_ICO =
          T.let(
            :cz_ico,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        CZ_RC =
          T.let(
            :cz_rc,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DE_STID =
          T.let(
            :de_stid,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DE_STNR =
          T.let(
            :de_stnr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DE_VAT =
          T.let(
            :de_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DK_CPR =
          T.let(
            :dk_cpr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DK_CVR =
          T.let(
            :dk_cvr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        EE_IK =
          T.let(
            :ee_ik,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        EE_RK =
          T.let(
            :ee_rk,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        ES_NIE =
          T.let(
            :es_nie,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        ES_NIF =
          T.let(
            :es_nif,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        FI_HETU =
          T.let(
            :fi_hetu,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        FI_YTJ =
          T.let(
            :fi_ytj,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        FR_NIF =
          T.let(
            :fr_nif,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        FR_SIREN =
          T.let(
            :fr_siren,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        FR_VAT =
          T.let(
            :fr_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        GB_NINO =
          T.let(
            :gb_nino,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        GB_UTR =
          T.let(
            :gb_utr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        GB_VAT =
          T.let(
            :gb_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        GENERIC_INTERNATIONAL =
          T.let(
            :generic_international,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        GR_VAT =
          T.let(
            :gr_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HK_BRN =
          T.let(
            :hk_brn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HK_HKID =
          T.let(
            :hk_hkid,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HN_ID =
          T.let(
            :hn_id,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HN_RTN =
          T.let(
            :hn_rtn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HR_OIB =
          T.let(
            :hr_oib,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HU_ADJ =
          T.let(
            :hu_adj,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        HU_ANUM =
          T.let(
            :hu_anum,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IE_PPS =
          T.let(
            :ie_pps,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IE_TRN =
          T.let(
            :ie_trn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IN_LEI =
          T.let(
            :in_lei,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IS_KNT =
          T.let(
            :is_knt,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IT_CF =
          T.let(
            :it_cf,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        IT_PIVA =
          T.let(
            :it_piva,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        JP_HB =
          T.let(
            :jp_hb,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        JP_MN =
          T.let(
            :jp_mn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        KR_BRN =
          T.let(
            :kr_brn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        KR_CRN =
          T.let(
            :kr_crn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        KR_RRN =
          T.let(
            :kr_rrn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LI_PEID =
          T.let(
            :li_peid,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LT_AK =
          T.let(
            :lt_ak,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LT_JAK =
          T.let(
            :lt_jak,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LU_MTC =
          T.let(
            :lu_mtc,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LU_VAT =
          T.let(
            :lu_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LV_PK =
          T.let(
            :lv_pk,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        LV_RN =
          T.let(
            :lv_rn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        MT_TIN =
          T.let(
            :mt_tin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        MT_VAT =
          T.let(
            :mt_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        MX_CURP =
          T.let(
            :mx_curp,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        MX_INE =
          T.let(
            :mx_ine,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        MX_RFC =
          T.let(
            :mx_rfc,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NATIONAL_ID =
          T.let(
            :national_id,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NL_BSN =
          T.let(
            :nl_bsn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NL_BTW =
          T.let(
            :nl_btw,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NL_RSIN =
          T.let(
            :nl_rsin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NO_FDN =
          T.let(
            :no_fdn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NO_MVA =
          T.let(
            :no_mva,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NO_ORGNR =
          T.let(
            :no_orgnr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        NZ_IRD =
          T.let(
            :nz_ird,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :passport,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        PL_NIP =
          T.let(
            :pl_nip,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        PL_PESEL =
          T.let(
            :pl_pesel,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        PT_NIF =
          T.let(
            :pt_nif,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        RO_CNP =
          T.let(
            :ro_cnp,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        RO_CUI =
          T.let(
            :ro_cui,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SA_TIN =
          T.let(
            :sa_tin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SA_VAT =
          T.let(
            :sa_vat,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SE_ORGNR =
          T.let(
            :se_orgnr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SE_PNMR =
          T.let(
            :se_pnmr,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SG_FIN =
          T.let(
            :sg_fin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SG_NRIC =
          T.let(
            :sg_nric,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SG_UEN =
          T.let(
            :sg_uen,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SI_DAV =
          T.let(
            :si_dav,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SI_TIN =
          T.let(
            :si_tin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SK_ICO =
          T.let(
            :sk_ico,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        SK_RC =
          T.let(
            :sk_rc,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        US_EIN =
          T.let(
            :us_ein,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        US_ITIN =
          T.let(
            :us_itin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        US_SSN =
          T.let(
            :us_ssn,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        UY_RUT =
          T.let(
            :uy_rut,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )
        VN_TIN =
          T.let(
            :vn_tin,
            ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IdentificationUpdateParams::IDType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
