# typed: strong

module ModernTreasury
  module Models
    class IdentificationCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::IdentificationCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID number of identification document.
      sig { returns(String) }
      attr_accessor :id_number

      # The type of ID number.
      sig do
        returns(ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol)
      end
      attr_accessor :id_type

      # A list of documents to attach to the identification.
      sig do
        returns(
          T.nilable(
            T::Array[ModernTreasury::IdentificationCreateRequest::Document]
          )
        )
      end
      attr_reader :documents

      sig do
        params(
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateRequest::Document::OrHash
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
          id_type:
            ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol,
          documents:
            T::Array[
              ModernTreasury::IdentificationCreateRequest::Document::OrHash
            ],
          expiration_date: T.nilable(Date),
          issuing_country: T.nilable(String),
          issuing_region: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID number of identification document.
        id_number:,
        # The type of ID number.
        id_type:,
        # A list of documents to attach to the identification.
        documents: nil,
        # The date when the Identification is no longer considered valid by the issuing
        # authority.
        expiration_date: nil,
        # The ISO 3166-1 alpha-2 country code of the country that issued the
        # identification
        issuing_country: nil,
        # The region in which the identifcation was issued.
        issuing_region: nil
      )
      end

      sig do
        override.returns(
          {
            id_number: String,
            id_type:
              ModernTreasury::IdentificationCreateRequest::IDType::OrSymbol,
            documents:
              T::Array[ModernTreasury::IdentificationCreateRequest::Document],
            expiration_date: T.nilable(Date),
            issuing_country: T.nilable(String),
            issuing_region: T.nilable(String)
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
            T.all(Symbol, ModernTreasury::IdentificationCreateRequest::IDType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD_NRT =
          T.let(
            :ad_nrt,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AE_EID =
          T.let(
            :ae_eid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AE_TRN =
          T.let(
            :ae_trn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AG_TIN =
          T.let(
            :ag_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AI_TIN =
          T.let(
            :ai_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AL_NID =
          T.let(
            :al_nid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AL_NIPT =
          T.let(
            :al_nipt,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AM_TIN =
          T.let(
            :am_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AO_NIF =
          T.let(
            :ao_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AR_CUIL =
          T.let(
            :ar_cuil,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AR_CUIT =
          T.let(
            :ar_cuit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AT_ATIN =
          T.let(
            :at_atin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AT_VAT =
          T.let(
            :at_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AU_ABN =
          T.let(
            :au_abn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AU_TFN =
          T.let(
            :au_tfn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AW_TIN =
          T.let(
            :aw_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        AZ_PIN =
          T.let(
            :az_pin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BB_TIN =
          T.let(
            :bb_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BD_TIN =
          T.let(
            :bd_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BE_ENT =
          T.let(
            :be_ent,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BE_NRN =
          T.let(
            :be_nrn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BF_IFU =
          T.let(
            :bf_ifu,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BG_EGN =
          T.let(
            :bg_egn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BH_CPR =
          T.let(
            :bh_cpr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BH_VAT =
          T.let(
            :bh_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BJ_IFU =
          T.let(
            :bj_ifu,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BO_NIT =
          T.let(
            :bo_nit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BR_CNPJ =
          T.let(
            :br_cnpj,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BR_CPF =
          T.let(
            :br_cpf,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BS_TIN =
          T.let(
            :bs_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BT_BIN =
          T.let(
            :bt_bin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BW_TIN =
          T.let(
            :bw_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        BZ_TIN =
          T.let(
            :bz_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CA_BN =
          T.let(
            :ca_bn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CA_SIN =
          T.let(
            :ca_sin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CH_AHV =
          T.let(
            :ch_ahv,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CH_UID =
          T.let(
            :ch_uid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CI_NCC =
          T.let(
            :ci_ncc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CL_RUN =
          T.let(
            :cl_run,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CL_RUT =
          T.let(
            :cl_rut,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CM_NIU =
          T.let(
            :cm_niu,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CO_CEDULAS =
          T.let(
            :co_cedulas,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CO_NIT =
          T.let(
            :co_nit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CR_CPF =
          T.let(
            :cr_cpf,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CW_CRIB =
          T.let(
            :cw_crib,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CY_TIN =
          T.let(
            :cy_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CZ_ICO =
          T.let(
            :cz_ico,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        CZ_RC =
          T.let(
            :cz_rc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DE_STID =
          T.let(
            :de_stid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DE_STNR =
          T.let(
            :de_stnr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DE_VAT =
          T.let(
            :de_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DK_CPR =
          T.let(
            :dk_cpr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DK_CVR =
          T.let(
            :dk_cvr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DM_TIN =
          T.let(
            :dm_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DO_CEDULA =
          T.let(
            :do_cedula,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DO_RNC =
          T.let(
            :do_rnc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        EC_RUC =
          T.let(
            :ec_ruc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        EE_IK =
          T.let(
            :ee_ik,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        EE_RK =
          T.let(
            :ee_rk,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ES_NIE =
          T.let(
            :es_nie,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ES_NIF =
          T.let(
            :es_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FI_HETU =
          T.let(
            :fi_hetu,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FI_YTJ =
          T.let(
            :fi_ytj,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FJ_TIN =
          T.let(
            :fj_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FO_PTAL =
          T.let(
            :fo_ptal,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FR_NIF =
          T.let(
            :fr_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FR_SIREN =
          T.let(
            :fr_siren,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        FR_VAT =
          T.let(
            :fr_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GB_NINO =
          T.let(
            :gb_nino,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GB_UTR =
          T.let(
            :gb_utr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GB_VAT =
          T.let(
            :gb_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GD_TIN =
          T.let(
            :gd_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GE_IC =
          T.let(
            :ge_ic,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GE_PN =
          T.let(
            :ge_pn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GE_TIN =
          T.let(
            :ge_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GENERIC_INTERNATIONAL =
          T.let(
            :generic_international,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GG_SIN =
          T.let(
            :gg_sin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GH_PIN =
          T.let(
            :gh_pin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GH_TIN =
          T.let(
            :gh_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GI_TRN =
          T.let(
            :gi_trn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GL_CPR =
          T.let(
            :gl_cpr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GL_GER =
          T.let(
            :gl_ger,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GM_TIN =
          T.let(
            :gm_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GR_VAT =
          T.let(
            :gr_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        GT_NIT =
          T.let(
            :gt_nit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HK_BRN =
          T.let(
            :hk_brn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HK_HKID =
          T.let(
            :hk_hkid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HN_ID =
          T.let(
            :hn_id,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HN_RTN =
          T.let(
            :hn_rtn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HR_OIB =
          T.let(
            :hr_oib,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HU_ADJ =
          T.let(
            :hu_adj,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        HU_ANUM =
          T.let(
            :hu_anum,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ID_NIK =
          T.let(
            :id_nik,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ID_NPWP =
          T.let(
            :id_npwp,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IE_PPS =
          T.let(
            :ie_pps,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IE_TRN =
          T.let(
            :ie_trn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IL_CN =
          T.let(
            :il_cn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IL_PIN =
          T.let(
            :il_pin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IM_TRN =
          T.let(
            :im_trn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IN_LEI =
          T.let(
            :in_lei,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IS_KNT =
          T.let(
            :is_knt,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IT_CF =
          T.let(
            :it_cf,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        IT_PIVA =
          T.let(
            :it_piva,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JE_SSN =
          T.let(
            :je_ssn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JE_TIN =
          T.let(
            :je_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JM_TRN =
          T.let(
            :jm_trn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JO_TIN =
          T.let(
            :jo_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JP_HB =
          T.let(
            :jp_hb,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        JP_MN =
          T.let(
            :jp_mn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KE_PIN =
          T.let(
            :ke_pin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KG_PIN =
          T.let(
            :kg_pin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KN_TIN =
          T.let(
            :kn_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_BRN =
          T.let(
            :kr_brn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_CRN =
          T.let(
            :kr_crn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KR_RRN =
          T.let(
            :kr_rrn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KW_CID =
          T.let(
            :kw_cid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KZ_BIN =
          T.let(
            :kz_bin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        KZ_IIN =
          T.let(
            :kz_iin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LA_TIN =
          T.let(
            :la_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LC_TIN =
          T.let(
            :lc_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LI_PEID =
          T.let(
            :li_peid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LK_TIN =
          T.let(
            :lk_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LS_TIN =
          T.let(
            :ls_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LT_AK =
          T.let(
            :lt_ak,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LT_JAK =
          T.let(
            :lt_jak,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LU_MTC =
          T.let(
            :lu_mtc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LU_VAT =
          T.let(
            :lu_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LV_PK =
          T.let(
            :lv_pk,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        LV_RN =
          T.let(
            :lv_rn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MD_IDNP =
          T.let(
            :md_idnp,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ME_JMBG =
          T.let(
            :me_jmbg,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        ME_PIB =
          T.let(
            :me_pib,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MG_NIF =
          T.let(
            :mg_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MH_SSN =
          T.let(
            :mh_ssn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MO_BIR =
          T.let(
            :mo_bir,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MO_TIN_B =
          T.let(
            :mo_tin_b,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MO_TIN_I =
          T.let(
            :mo_tin_i,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MR_NIF =
          T.let(
            :mr_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MT_TIN =
          T.let(
            :mt_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MT_VAT =
          T.let(
            :mt_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MU_TAN =
          T.let(
            :mu_tan,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MW_TPIN =
          T.let(
            :mw_tpin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MX_CURP =
          T.let(
            :mx_curp,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MX_INE =
          T.let(
            :mx_ine,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MX_RFC =
          T.let(
            :mx_rfc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MY_NPC =
          T.let(
            :my_npc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MY_NRIC =
          T.let(
            :my_nric,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MY_TIN_B =
          T.let(
            :my_tin_b,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        MZ_NUIT =
          T.let(
            :mz_nuit,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NA_TIN =
          T.let(
            :na_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NATIONAL_ID =
          T.let(
            :national_id,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NL_BSN =
          T.let(
            :nl_bsn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NL_BTW =
          T.let(
            :nl_btw,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NL_RSIN =
          T.let(
            :nl_rsin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NO_FDN =
          T.let(
            :no_fdn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NO_MVA =
          T.let(
            :no_mva,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NO_ORGNR =
          T.let(
            :no_orgnr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NR_TIN =
          T.let(
            :nr_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        NZ_IRD =
          T.let(
            :nz_ird,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        OM_CID =
          T.let(
            :om_cid,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PA_CEDULA =
          T.let(
            :pa_cedula,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PA_RUC =
          T.let(
            :pa_ruc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PASSPORT =
          T.let(
            :passport,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PE_RUC =
          T.let(
            :pe_ruc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PG_TIN =
          T.let(
            :pg_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PH_TIN =
          T.let(
            :ph_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PL_NIP =
          T.let(
            :pl_nip,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PL_PESEL =
          T.let(
            :pl_pesel,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PT_NIF =
          T.let(
            :pt_nif,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        PY_RUC =
          T.let(
            :py_ruc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        RO_CNP =
          T.let(
            :ro_cnp,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        RO_CUI =
          T.let(
            :ro_cui,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SA_TIN =
          T.let(
            :sa_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SA_VAT =
          T.let(
            :sa_vat,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SE_ORGNR =
          T.let(
            :se_orgnr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SE_PNMR =
          T.let(
            :se_pnmr,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SG_FIN =
          T.let(
            :sg_fin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SG_NRIC =
          T.let(
            :sg_nric,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SG_UEN =
          T.let(
            :sg_uen,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SI_DAV =
          T.let(
            :si_dav,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SI_TIN =
          T.let(
            :si_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SK_ICO =
          T.let(
            :sk_ico,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        SK_RC =
          T.let(
            :sk_rc,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_EIN =
          T.let(
            :us_ein,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_ITIN =
          T.let(
            :us_itin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        US_SSN =
          T.let(
            :us_ssn,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        UY_RUT =
          T.let(
            :uy_rut,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )
        VN_TIN =
          T.let(
            :vn_tin,
            ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::IdentificationCreateRequest::IDType::TaggedSymbol
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
              ModernTreasury::IdentificationCreateRequest::Document,
              ModernTreasury::Internal::AnyHash
            )
          end

        # A category given to the document, can be `null`.
        sig do
          returns(
            ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol
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
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol,
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
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType::OrSymbol,
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
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLES_OF_INCORPORATION =
            T.let(
              :articles_of_incorporation,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          CERTIFICATE_OF_GOOD_STANDING =
            T.let(
              :certificate_of_good_standing,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          EIN_LETTER =
            T.let(
              :ein_letter,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          GENERIC =
            T.let(
              :generic,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_BACK =
            T.let(
              :identification_back,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          IDENTIFICATION_FRONT =
            T.let(
              :identification_front,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ModernTreasury::IdentificationCreateRequest::Document::DocumentType::TaggedSymbol
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
