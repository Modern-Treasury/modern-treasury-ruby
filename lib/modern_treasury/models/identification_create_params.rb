# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Identifications#create
    class IdentificationCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id_number
      #   The ID number of identification document.
      #
      #   @return [String]
      required :id_number, String

      # @!attribute id_type
      #   The type of ID number.
      #
      #   @return [Symbol, ModernTreasury::Models::IdentificationCreateParams::IDType]
      required :id_type, enum: -> { ModernTreasury::IdentificationCreateParams::IDType }

      # @!attribute legal_entity_id
      #   The ID of the Legal Entity the identification belongs to.
      #
      #   @return [String]
      required :legal_entity_id, String

      # @!attribute documents
      #   A list of documents to attach to the identification.
      #
      #   @return [Array<ModernTreasury::Models::IdentificationCreateParams::Document>, nil]
      optional :documents,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::IdentificationCreateParams::Document] }

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

      # @!method initialize(id_number:, id_type:, legal_entity_id:, documents: nil, expiration_date: nil, issuing_country: nil, issuing_region: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::IdentificationCreateParams} for more details.
      #
      #   @param id_number [String] The ID number of identification document.
      #
      #   @param id_type [Symbol, ModernTreasury::Models::IdentificationCreateParams::IDType] The type of ID number.
      #
      #   @param legal_entity_id [String] The ID of the Legal Entity the identification belongs to.
      #
      #   @param documents [Array<ModernTreasury::Models::IdentificationCreateParams::Document>] A list of documents to attach to the identification.
      #
      #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
      #
      #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
      #
      #   @param issuing_region [String, nil] The region in which the identifcation was issued.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # The type of ID number.
      module IDType
        extend ModernTreasury::Internal::Type::Enum

        AD_NRT = :ad_nrt
        AE_EID = :ae_eid
        AE_TRN = :ae_trn
        AG_TIN = :ag_tin
        AI_TIN = :ai_tin
        AL_NID = :al_nid
        AL_NIPT = :al_nipt
        AM_TIN = :am_tin
        AO_NIF = :ao_nif
        AR_CUIL = :ar_cuil
        AR_CUIT = :ar_cuit
        AT_ATIN = :at_atin
        AT_VAT = :at_vat
        AU_ABN = :au_abn
        AU_TFN = :au_tfn
        AW_TIN = :aw_tin
        AZ_PIN = :az_pin
        BB_TIN = :bb_tin
        BD_TIN = :bd_tin
        BE_ENT = :be_ent
        BE_NRN = :be_nrn
        BF_IFU = :bf_ifu
        BG_EGN = :bg_egn
        BH_CPR = :bh_cpr
        BH_VAT = :bh_vat
        BJ_IFU = :bj_ifu
        BO_NIT = :bo_nit
        BR_CNPJ = :br_cnpj
        BR_CPF = :br_cpf
        BS_TIN = :bs_tin
        BT_BIN = :bt_bin
        BW_TIN = :bw_tin
        BZ_TIN = :bz_tin
        CA_BN = :ca_bn
        CA_SIN = :ca_sin
        CH_AHV = :ch_ahv
        CH_UID = :ch_uid
        CI_NCC = :ci_ncc
        CL_RUN = :cl_run
        CL_RUT = :cl_rut
        CM_NIU = :cm_niu
        CO_CEDULAS = :co_cedulas
        CO_NIT = :co_nit
        CR_CPF = :cr_cpf
        CW_CRIB = :cw_crib
        CY_TIN = :cy_tin
        CZ_ICO = :cz_ico
        CZ_RC = :cz_rc
        DE_STID = :de_stid
        DE_STNR = :de_stnr
        DE_VAT = :de_vat
        DK_CPR = :dk_cpr
        DK_CVR = :dk_cvr
        DM_TIN = :dm_tin
        DO_CEDULA = :do_cedula
        DO_RNC = :do_rnc
        DRIVERS_LICENSE = :drivers_license
        EC_RUC = :ec_ruc
        EE_IK = :ee_ik
        EE_RK = :ee_rk
        ES_NIE = :es_nie
        ES_NIF = :es_nif
        FI_HETU = :fi_hetu
        FI_YTJ = :fi_ytj
        FJ_TIN = :fj_tin
        FO_PTAL = :fo_ptal
        FR_NIF = :fr_nif
        FR_SIREN = :fr_siren
        FR_VAT = :fr_vat
        GB_NINO = :gb_nino
        GB_UTR = :gb_utr
        GB_VAT = :gb_vat
        GD_TIN = :gd_tin
        GE_IC = :ge_ic
        GE_PN = :ge_pn
        GE_TIN = :ge_tin
        GENERIC_INTERNATIONAL = :generic_international
        GG_SIN = :gg_sin
        GH_PIN = :gh_pin
        GH_TIN = :gh_tin
        GI_TRN = :gi_trn
        GL_CPR = :gl_cpr
        GL_GER = :gl_ger
        GM_TIN = :gm_tin
        GR_VAT = :gr_vat
        GT_NIT = :gt_nit
        HK_BRN = :hk_brn
        HK_HKID = :hk_hkid
        HN_ID = :hn_id
        HN_RTN = :hn_rtn
        HR_OIB = :hr_oib
        HU_ADJ = :hu_adj
        HU_ANUM = :hu_anum
        ID_NIK = :id_nik
        ID_NPWP = :id_npwp
        IE_PPS = :ie_pps
        IE_TRN = :ie_trn
        IL_CN = :il_cn
        IL_PIN = :il_pin
        IM_TRN = :im_trn
        IN_LEI = :in_lei
        IS_KNT = :is_knt
        IT_CF = :it_cf
        IT_PIVA = :it_piva
        JE_SSN = :je_ssn
        JE_TIN = :je_tin
        JM_TRN = :jm_trn
        JO_TIN = :jo_tin
        JP_HB = :jp_hb
        JP_MN = :jp_mn
        KE_PIN = :ke_pin
        KG_PIN = :kg_pin
        KN_TIN = :kn_tin
        KR_BRN = :kr_brn
        KR_CRN = :kr_crn
        KR_RRN = :kr_rrn
        KW_CID = :kw_cid
        KZ_BIN = :kz_bin
        KZ_IIN = :kz_iin
        LA_TIN = :la_tin
        LC_TIN = :lc_tin
        LI_PEID = :li_peid
        LK_TIN = :lk_tin
        LS_TIN = :ls_tin
        LT_AK = :lt_ak
        LT_JAK = :lt_jak
        LU_MTC = :lu_mtc
        LU_VAT = :lu_vat
        LV_PK = :lv_pk
        LV_RN = :lv_rn
        MD_IDNP = :md_idnp
        ME_JMBG = :me_jmbg
        ME_PIB = :me_pib
        MG_NIF = :mg_nif
        MH_SSN = :mh_ssn
        MO_BIR = :mo_bir
        MO_TIN_B = :mo_tin_b
        MO_TIN_I = :mo_tin_i
        MR_NIF = :mr_nif
        MT_TIN = :mt_tin
        MT_VAT = :mt_vat
        MU_TAN = :mu_tan
        MW_TPIN = :mw_tpin
        MX_CURP = :mx_curp
        MX_INE = :mx_ine
        MX_RFC = :mx_rfc
        MY_NPC = :my_npc
        MY_NRIC = :my_nric
        MY_TIN_B = :my_tin_b
        MZ_NUIT = :mz_nuit
        NA_TIN = :na_tin
        NATIONAL_ID = :national_id
        NL_BSN = :nl_bsn
        NL_BTW = :nl_btw
        NL_RSIN = :nl_rsin
        NO_FDN = :no_fdn
        NO_MVA = :no_mva
        NO_ORGNR = :no_orgnr
        NR_TIN = :nr_tin
        NZ_IRD = :nz_ird
        OM_CID = :om_cid
        PA_CEDULA = :pa_cedula
        PA_RUC = :pa_ruc
        PASSPORT = :passport
        PE_RUC = :pe_ruc
        PG_TIN = :pg_tin
        PH_TIN = :ph_tin
        PL_NIP = :pl_nip
        PL_PESEL = :pl_pesel
        PT_NIF = :pt_nif
        PY_RUC = :py_ruc
        QA_QID = :qa_qid
        QA_TIN = :qa_tin
        RO_CNP = :ro_cnp
        RO_CUI = :ro_cui
        RW_TIN = :rw_tin
        SA_TIN = :sa_tin
        SA_VAT = :sa_vat
        SE_ORGNR = :se_orgnr
        SE_PNMR = :se_pnmr
        SG_FIN = :sg_fin
        SG_NRIC = :sg_nric
        SG_UEN = :sg_uen
        SI_DAV = :si_dav
        SI_TIN = :si_tin
        SK_ICO = :sk_ico
        SK_RC = :sk_rc
        SL_TIN = :sl_tin
        SM_SSI = :sm_ssi
        SZ_TIN = :sz_tin
        TG_NIF = :tg_nif
        TH_JID = :th_jid
        TH_PIN = :th_pin
        TJ_INN = :tj_inn
        TO_TIN = :to_tin
        TR_TCKN = :tr_tckn
        TT_BIR = :tt_bir
        TW_NRIC = :tw_nric
        TW_UBN = :tw_ubn
        UG_TIN = :ug_tin
        US_EIN = :us_ein
        US_ITIN = :us_itin
        US_SSN = :us_ssn
        UY_RUT = :uy_rut
        UZ_INN = :uz_inn
        UZ_PIN = :uz_pin
        VN_TIN = :vn_tin
        ZA_TRN = :za_trn
        ZA_VAT = :za_vat
        ZM_TPIN = :zm_tpin

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Document < ModernTreasury::Internal::Type::BaseModel
        # @!attribute document_type
        #   A category given to the document, can be `null`.
        #
        #   @return [Symbol, ModernTreasury::Models::IdentificationCreateParams::Document::DocumentType]
        required :document_type, enum: -> { ModernTreasury::IdentificationCreateParams::Document::DocumentType }

        # @!attribute file_data
        #   Base64-encoded file content for the document.
        #
        #   @return [String]
        required :file_data, String

        # @!attribute filename
        #   The original filename of the document.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!method initialize(document_type:, file_data:, filename: nil)
        #   @param document_type [Symbol, ModernTreasury::Models::IdentificationCreateParams::Document::DocumentType] A category given to the document, can be `null`.
        #
        #   @param file_data [String] Base64-encoded file content for the document.
        #
        #   @param filename [String] The original filename of the document.

        # A category given to the document, can be `null`.
        #
        # @see ModernTreasury::Models::IdentificationCreateParams::Document#document_type
        module DocumentType
          extend ModernTreasury::Internal::Type::Enum

          ARTICLES_OF_INCORPORATION = :articles_of_incorporation
          CERTIFICATE_OF_GOOD_STANDING = :certificate_of_good_standing
          EIN_LETTER = :ein_letter
          GENERIC = :generic
          IDENTIFICATION_BACK = :identification_back
          IDENTIFICATION_FRONT = :identification_front
          PROOF_OF_ADDRESS = :proof_of_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
