# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Identifications#create
    class Identification < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute documents
      #
      #   @return [Array<ModernTreasury::Models::Document>]
      required :documents, -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::Document] }

      # @!attribute expiration_date
      #   The date when the Identification is no longer considered valid by the issuing
      #   authority.
      #
      #   @return [Date, nil]
      required :expiration_date, Date, nil?: true

      # @!attribute id_type
      #   The type of ID number.
      #
      #   @return [Symbol, ModernTreasury::Models::Identification::IDType]
      required :id_type, enum: -> { ModernTreasury::Identification::IDType }

      # @!attribute issuing_country
      #   The ISO 3166-1 alpha-2 country code of the country that issued the
      #   identification
      #
      #   @return [String, nil]
      required :issuing_country, String, nil?: true

      # @!attribute issuing_region
      #   The region in which the identifcation was issued.
      #
      #   @return [String, nil]
      required :issuing_region, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, discarded_at:, documents:, expiration_date:, id_type:, issuing_country:, issuing_region:, live_mode:, object:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::Identification} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param documents [Array<ModernTreasury::Models::Document>]
      #
      #   @param expiration_date [Date, nil] The date when the Identification is no longer considered valid by the issuing au
      #
      #   @param id_type [Symbol, ModernTreasury::Models::Identification::IDType] The type of ID number.
      #
      #   @param issuing_country [String, nil] The ISO 3166-1 alpha-2 country code of the country that issued the identificatio
      #
      #   @param issuing_region [String, nil] The region in which the identifcation was issued.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]

      # The type of ID number.
      #
      # @see ModernTreasury::Models::Identification#id_type
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
        HK_BRN = :hk_brn
        HK_HKID = :hk_hkid
        HN_ID = :hn_id
        HN_RTN = :hn_rtn
        HR_OIB = :hr_oib
        HU_ADJ = :hu_adj
        HU_ANUM = :hu_anum
        IE_PPS = :ie_pps
        IE_TRN = :ie_trn
        IN_LEI = :in_lei
        IS_KNT = :is_knt
        IT_CF = :it_cf
        IT_PIVA = :it_piva
        JP_HB = :jp_hb
        JP_MN = :jp_mn
        KR_BRN = :kr_brn
        KR_CRN = :kr_crn
        KR_RRN = :kr_rrn
        LI_PEID = :li_peid
        LT_AK = :lt_ak
        LT_JAK = :lt_jak
        LU_MTC = :lu_mtc
        LU_VAT = :lu_vat
        LV_PK = :lv_pk
        LV_RN = :lv_rn
        MT_TIN = :mt_tin
        MT_VAT = :mt_vat
        MX_CURP = :mx_curp
        MX_INE = :mx_ine
        MX_RFC = :mx_rfc
        NATIONAL_ID = :national_id
        NL_BSN = :nl_bsn
        NL_BTW = :nl_btw
        NL_RSIN = :nl_rsin
        NO_FDN = :no_fdn
        NO_MVA = :no_mva
        NO_ORGNR = :no_orgnr
        NZ_IRD = :nz_ird
        PASSPORT = :passport
        PL_NIP = :pl_nip
        PL_PESEL = :pl_pesel
        PT_NIF = :pt_nif
        RO_CNP = :ro_cnp
        RO_CUI = :ro_cui
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
        US_EIN = :us_ein
        US_ITIN = :us_itin
        US_SSN = :us_ssn
        UY_RUT = :uy_rut
        VN_TIN = :vn_tin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
