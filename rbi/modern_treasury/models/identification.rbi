# typed: strong

module ModernTreasury
  module Models
    class Identification < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::Identification,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Array[ModernTreasury::Document]) }
      attr_accessor :documents

      # The date when the Identification is no longer considered valid by the issuing
      # authority.
      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # The type of ID number.
      sig { returns(ModernTreasury::Identification::IDType::TaggedSymbol) }
      attr_accessor :id_type

      # The ISO 3166-1 alpha-2 country code of the country that issued the
      # identification
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_country

      # The region in which the identifcation was issued.
      sig { returns(T.nilable(String)) }
      attr_accessor :issuing_region

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          documents: T::Array[ModernTreasury::Document::OrHash],
          expiration_date: T.nilable(Date),
          id_type: ModernTreasury::Identification::IDType::OrSymbol,
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        discarded_at:,
        documents:,
        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        expiration_date:,
        # The type of ID number.
        id_type:,
        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        issuing_country:,
        # The region in which the identifcation was issued.
        issuing_region:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            discarded_at: T.nilable(Time),
            documents: T::Array[ModernTreasury::Document],
            expiration_date: T.nilable(Date),
            id_type: ModernTreasury::Identification::IDType::TaggedSymbol,
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The type of ID number.
      module IDType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Identification::IDType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AR_CUIL =
          T.let(:ar_cuil, ModernTreasury::Identification::IDType::TaggedSymbol)
        AR_CUIT =
          T.let(:ar_cuit, ModernTreasury::Identification::IDType::TaggedSymbol)
        AT_ATIN =
          T.let(:at_atin, ModernTreasury::Identification::IDType::TaggedSymbol)
        AT_VAT =
          T.let(:at_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        AU_ABN =
          T.let(:au_abn, ModernTreasury::Identification::IDType::TaggedSymbol)
        AU_TFN =
          T.let(:au_tfn, ModernTreasury::Identification::IDType::TaggedSymbol)
        BE_ENT =
          T.let(:be_ent, ModernTreasury::Identification::IDType::TaggedSymbol)
        BE_NRN =
          T.let(:be_nrn, ModernTreasury::Identification::IDType::TaggedSymbol)
        BR_CNPJ =
          T.let(:br_cnpj, ModernTreasury::Identification::IDType::TaggedSymbol)
        BR_CPF =
          T.let(:br_cpf, ModernTreasury::Identification::IDType::TaggedSymbol)
        CA_BN =
          T.let(:ca_bn, ModernTreasury::Identification::IDType::TaggedSymbol)
        CA_SIN =
          T.let(:ca_sin, ModernTreasury::Identification::IDType::TaggedSymbol)
        CH_AHV =
          T.let(:ch_ahv, ModernTreasury::Identification::IDType::TaggedSymbol)
        CH_UID =
          T.let(:ch_uid, ModernTreasury::Identification::IDType::TaggedSymbol)
        CL_RUN =
          T.let(:cl_run, ModernTreasury::Identification::IDType::TaggedSymbol)
        CL_RUT =
          T.let(:cl_rut, ModernTreasury::Identification::IDType::TaggedSymbol)
        CO_CEDULAS =
          T.let(
            :co_cedulas,
            ModernTreasury::Identification::IDType::TaggedSymbol
          )
        CO_NIT =
          T.let(:co_nit, ModernTreasury::Identification::IDType::TaggedSymbol)
        CY_TIN =
          T.let(:cy_tin, ModernTreasury::Identification::IDType::TaggedSymbol)
        CZ_ICO =
          T.let(:cz_ico, ModernTreasury::Identification::IDType::TaggedSymbol)
        CZ_RC =
          T.let(:cz_rc, ModernTreasury::Identification::IDType::TaggedSymbol)
        DE_STID =
          T.let(:de_stid, ModernTreasury::Identification::IDType::TaggedSymbol)
        DE_STNR =
          T.let(:de_stnr, ModernTreasury::Identification::IDType::TaggedSymbol)
        DE_VAT =
          T.let(:de_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        DK_CPR =
          T.let(:dk_cpr, ModernTreasury::Identification::IDType::TaggedSymbol)
        DK_CVR =
          T.let(:dk_cvr, ModernTreasury::Identification::IDType::TaggedSymbol)
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            ModernTreasury::Identification::IDType::TaggedSymbol
          )
        EE_IK =
          T.let(:ee_ik, ModernTreasury::Identification::IDType::TaggedSymbol)
        EE_RK =
          T.let(:ee_rk, ModernTreasury::Identification::IDType::TaggedSymbol)
        ES_NIE =
          T.let(:es_nie, ModernTreasury::Identification::IDType::TaggedSymbol)
        ES_NIF =
          T.let(:es_nif, ModernTreasury::Identification::IDType::TaggedSymbol)
        FI_HETU =
          T.let(:fi_hetu, ModernTreasury::Identification::IDType::TaggedSymbol)
        FI_YTJ =
          T.let(:fi_ytj, ModernTreasury::Identification::IDType::TaggedSymbol)
        FR_NIF =
          T.let(:fr_nif, ModernTreasury::Identification::IDType::TaggedSymbol)
        FR_SIREN =
          T.let(:fr_siren, ModernTreasury::Identification::IDType::TaggedSymbol)
        FR_VAT =
          T.let(:fr_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        GB_NINO =
          T.let(:gb_nino, ModernTreasury::Identification::IDType::TaggedSymbol)
        GB_UTR =
          T.let(:gb_utr, ModernTreasury::Identification::IDType::TaggedSymbol)
        GB_VAT =
          T.let(:gb_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        GENERIC_INTERNATIONAL =
          T.let(
            :generic_international,
            ModernTreasury::Identification::IDType::TaggedSymbol
          )
        GR_VAT =
          T.let(:gr_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        HK_BRN =
          T.let(:hk_brn, ModernTreasury::Identification::IDType::TaggedSymbol)
        HK_HKID =
          T.let(:hk_hkid, ModernTreasury::Identification::IDType::TaggedSymbol)
        HN_ID =
          T.let(:hn_id, ModernTreasury::Identification::IDType::TaggedSymbol)
        HN_RTN =
          T.let(:hn_rtn, ModernTreasury::Identification::IDType::TaggedSymbol)
        HR_OIB =
          T.let(:hr_oib, ModernTreasury::Identification::IDType::TaggedSymbol)
        HU_ADJ =
          T.let(:hu_adj, ModernTreasury::Identification::IDType::TaggedSymbol)
        HU_ANUM =
          T.let(:hu_anum, ModernTreasury::Identification::IDType::TaggedSymbol)
        IE_PPS =
          T.let(:ie_pps, ModernTreasury::Identification::IDType::TaggedSymbol)
        IE_TRN =
          T.let(:ie_trn, ModernTreasury::Identification::IDType::TaggedSymbol)
        IN_LEI =
          T.let(:in_lei, ModernTreasury::Identification::IDType::TaggedSymbol)
        IS_KNT =
          T.let(:is_knt, ModernTreasury::Identification::IDType::TaggedSymbol)
        IT_CF =
          T.let(:it_cf, ModernTreasury::Identification::IDType::TaggedSymbol)
        IT_PIVA =
          T.let(:it_piva, ModernTreasury::Identification::IDType::TaggedSymbol)
        JP_HB =
          T.let(:jp_hb, ModernTreasury::Identification::IDType::TaggedSymbol)
        JP_MN =
          T.let(:jp_mn, ModernTreasury::Identification::IDType::TaggedSymbol)
        KR_BRN =
          T.let(:kr_brn, ModernTreasury::Identification::IDType::TaggedSymbol)
        KR_CRN =
          T.let(:kr_crn, ModernTreasury::Identification::IDType::TaggedSymbol)
        KR_RRN =
          T.let(:kr_rrn, ModernTreasury::Identification::IDType::TaggedSymbol)
        LI_PEID =
          T.let(:li_peid, ModernTreasury::Identification::IDType::TaggedSymbol)
        LT_AK =
          T.let(:lt_ak, ModernTreasury::Identification::IDType::TaggedSymbol)
        LT_JAK =
          T.let(:lt_jak, ModernTreasury::Identification::IDType::TaggedSymbol)
        LU_MTC =
          T.let(:lu_mtc, ModernTreasury::Identification::IDType::TaggedSymbol)
        LU_VAT =
          T.let(:lu_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        LV_PK =
          T.let(:lv_pk, ModernTreasury::Identification::IDType::TaggedSymbol)
        LV_RN =
          T.let(:lv_rn, ModernTreasury::Identification::IDType::TaggedSymbol)
        MT_TIN =
          T.let(:mt_tin, ModernTreasury::Identification::IDType::TaggedSymbol)
        MT_VAT =
          T.let(:mt_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        MX_CURP =
          T.let(:mx_curp, ModernTreasury::Identification::IDType::TaggedSymbol)
        MX_INE =
          T.let(:mx_ine, ModernTreasury::Identification::IDType::TaggedSymbol)
        MX_RFC =
          T.let(:mx_rfc, ModernTreasury::Identification::IDType::TaggedSymbol)
        NATIONAL_ID =
          T.let(
            :national_id,
            ModernTreasury::Identification::IDType::TaggedSymbol
          )
        NL_BSN =
          T.let(:nl_bsn, ModernTreasury::Identification::IDType::TaggedSymbol)
        NL_BTW =
          T.let(:nl_btw, ModernTreasury::Identification::IDType::TaggedSymbol)
        NL_RSIN =
          T.let(:nl_rsin, ModernTreasury::Identification::IDType::TaggedSymbol)
        NO_FDN =
          T.let(:no_fdn, ModernTreasury::Identification::IDType::TaggedSymbol)
        NO_MVA =
          T.let(:no_mva, ModernTreasury::Identification::IDType::TaggedSymbol)
        NO_ORGNR =
          T.let(:no_orgnr, ModernTreasury::Identification::IDType::TaggedSymbol)
        NZ_IRD =
          T.let(:nz_ird, ModernTreasury::Identification::IDType::TaggedSymbol)
        PASSPORT =
          T.let(:passport, ModernTreasury::Identification::IDType::TaggedSymbol)
        PL_NIP =
          T.let(:pl_nip, ModernTreasury::Identification::IDType::TaggedSymbol)
        PL_PESEL =
          T.let(:pl_pesel, ModernTreasury::Identification::IDType::TaggedSymbol)
        PT_NIF =
          T.let(:pt_nif, ModernTreasury::Identification::IDType::TaggedSymbol)
        RO_CNP =
          T.let(:ro_cnp, ModernTreasury::Identification::IDType::TaggedSymbol)
        RO_CUI =
          T.let(:ro_cui, ModernTreasury::Identification::IDType::TaggedSymbol)
        SA_TIN =
          T.let(:sa_tin, ModernTreasury::Identification::IDType::TaggedSymbol)
        SA_VAT =
          T.let(:sa_vat, ModernTreasury::Identification::IDType::TaggedSymbol)
        SE_ORGNR =
          T.let(:se_orgnr, ModernTreasury::Identification::IDType::TaggedSymbol)
        SE_PNMR =
          T.let(:se_pnmr, ModernTreasury::Identification::IDType::TaggedSymbol)
        SG_FIN =
          T.let(:sg_fin, ModernTreasury::Identification::IDType::TaggedSymbol)
        SG_NRIC =
          T.let(:sg_nric, ModernTreasury::Identification::IDType::TaggedSymbol)
        SG_UEN =
          T.let(:sg_uen, ModernTreasury::Identification::IDType::TaggedSymbol)
        SI_DAV =
          T.let(:si_dav, ModernTreasury::Identification::IDType::TaggedSymbol)
        SI_TIN =
          T.let(:si_tin, ModernTreasury::Identification::IDType::TaggedSymbol)
        SK_ICO =
          T.let(:sk_ico, ModernTreasury::Identification::IDType::TaggedSymbol)
        SK_RC =
          T.let(:sk_rc, ModernTreasury::Identification::IDType::TaggedSymbol)
        US_EIN =
          T.let(:us_ein, ModernTreasury::Identification::IDType::TaggedSymbol)
        US_ITIN =
          T.let(:us_itin, ModernTreasury::Identification::IDType::TaggedSymbol)
        US_SSN =
          T.let(:us_ssn, ModernTreasury::Identification::IDType::TaggedSymbol)
        UY_RUT =
          T.let(:uy_rut, ModernTreasury::Identification::IDType::TaggedSymbol)
        VN_TIN =
          T.let(:vn_tin, ModernTreasury::Identification::IDType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::Identification::IDType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
