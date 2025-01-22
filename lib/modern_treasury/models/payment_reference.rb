# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # payment_reference => {
    #   id: String,
    #   created_at: Time,
    #   live_mode: ModernTreasury::BooleanModel,
    #   object: String,
    #   reference_number: String,
    #   **_
    # }
    # ```
    class PaymentReference < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute reference_number
      #   The actual reference number assigned by the bank.
      #
      #   @return [String]
      required :reference_number, String

      # @!attribute reference_number_type
      #   The type of reference number.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentReference::ReferenceNumberType]
      required :reference_number_type,
               enum: -> { ModernTreasury::Models::PaymentReference::ReferenceNumberType }

      # @!attribute referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the
      #     referenceable_type or will return an error.
      #
      #   @return [String]
      required :referenceable_id, String

      # @!attribute referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the
      #     referenceable or will return an error.
      #
      #   @return [Symbol, ModernTreasury::Models::PaymentReference::ReferenceableType]
      required :referenceable_type, enum: -> { ModernTreasury::Models::PaymentReference::ReferenceableType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   # @param created_at [String]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param reference_number [String]
      #   # @param reference_number_type [String]
      #   # @param referenceable_id [String]
      #   # @param referenceable_type [String]
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     live_mode:,
      #     object:,
      #     reference_number:,
      #     reference_number_type:,
      #     referenceable_id:,
      #     referenceable_type:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # The type of reference number.
      #
      # @example
      # ```ruby
      # case reference_number_type
      # in :ach_original_trace_number
      #   # ...
      # in :ach_trace_number
      #   # ...
      # in :bankprov_payment_activity_date
      #   # ...
      # in :bankprov_payment_id
      #   # ...
      # in :bnk_dev_prenotification_id
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class ReferenceNumberType < ModernTreasury::Enum
        ACH_ORIGINAL_TRACE_NUMBER = :ach_original_trace_number
        ACH_TRACE_NUMBER = :ach_trace_number
        BANKPROV_PAYMENT_ACTIVITY_DATE = :bankprov_payment_activity_date
        BANKPROV_PAYMENT_ID = :bankprov_payment_id
        BNK_DEV_PRENOTIFICATION_ID = :bnk_dev_prenotification_id
        BNK_DEV_TRANSFER_ID = :bnk_dev_transfer_id
        BOFA_END_TO_END_ID = :bofa_end_to_end_id
        BOFA_TRANSACTION_ID = :bofa_transaction_id
        CHECK_NUMBER = :check_number
        CITIBANK_REFERENCE_NUMBER = :citibank_reference_number
        CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER = :citibank_worldlink_clearing_system_reference_number
        COLUMN_FX_QUOTE_ID = :column_fx_quote_id
        COLUMN_REVERSAL_PAIR_TRANSFER_ID = :column_reversal_pair_transfer_id
        COLUMN_TRANSFER_ID = :column_transfer_id
        CROSS_RIVER_PAYMENT_ID = :cross_river_payment_id
        CROSS_RIVER_SERVICE_MESSAGE = :cross_river_service_message
        CROSS_RIVER_TRANSACTION_ID = :cross_river_transaction_id
        CURRENCYCLOUD_CONVERSION_ID = :currencycloud_conversion_id
        CURRENCYCLOUD_PAYMENT_ID = :currencycloud_payment_id
        DC_BANK_TRANSACTION_ID = :dc_bank_transaction_id
        DWOLLA_TRANSACTION_ID = :dwolla_transaction_id
        EFT_TRACE_NUMBER = :eft_trace_number
        EVOLVE_TRANSACTION_ID = :evolve_transaction_id
        FEDWIRE_IMAD = :fedwire_imad
        FEDWIRE_OMAD = :fedwire_omad
        FIRST_REPUBLIC_INTERNAL_ID = :first_republic_internal_id
        GOLDMAN_SACHS_COLLECTION_REQUEST_ID = :goldman_sachs_collection_request_id
        GOLDMAN_SACHS_END_TO_END_ID = :goldman_sachs_end_to_end_id
        GOLDMAN_SACHS_PAYMENT_REQUEST_ID = :goldman_sachs_payment_request_id
        GOLDMAN_SACHS_REQUEST_ID = :goldman_sachs_request_id
        GOLDMAN_SACHS_UNIQUE_PAYMENT_ID = :goldman_sachs_unique_payment_id
        INTERAC_MESSAGE_ID = :interac_message_id
        JPMC_CCN = :jpmc_ccn
        JPMC_CLEARING_SYSTEM_REFERENCE = :jpmc_clearing_system_reference
        JPMC_CUSTOMER_REFERENCE_ID = :jpmc_customer_reference_id
        JPMC_END_TO_END_ID = :jpmc_end_to_end_id
        JPMC_FIRM_ROOT_ID = :jpmc_firm_root_id
        JPMC_FX_TRN_ID = :jpmc_fx_trn_id
        JPMC_P3_ID = :jpmc_p3_id
        JPMC_PAYMENT_BATCH_ID = :jpmc_payment_batch_id
        JPMC_PAYMENT_INFORMATION_ID = :jpmc_payment_information_id
        JPMC_PAYMENT_RETURNED_DATETIME = :jpmc_payment_returned_datetime
        LOB_CHECK_ID = :lob_check_id
        OTHER = :other
        PARTIAL_SWIFT_MIR = :partial_swift_mir
        PNC_CLEARING_REFERENCE = :pnc_clearing_reference
        PNC_INSTRUCTION_ID = :pnc_instruction_id
        PNC_MULTIPAYMENT_ID = :pnc_multipayment_id
        PNC_PAYMENT_TRACE_ID = :pnc_payment_trace_id
        PNC_TRANSACTION_REFERENCE_NUMBER = :pnc_transaction_reference_number
        RSPEC_VENDOR_PAYMENT_ID = :rspec_vendor_payment_id
        RTP_INSTRUCTION_ID = :rtp_instruction_id
        SIGNET_API_REFERENCE_ID = :signet_api_reference_id
        SIGNET_CONFIRMATION_ID = :signet_confirmation_id
        SIGNET_REQUEST_ID = :signet_request_id
        SILVERGATE_PAYMENT_ID = :silvergate_payment_id
        SVB_END_TO_END_ID = :svb_end_to_end_id
        SVB_PAYMENT_ID = :svb_payment_id
        SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW = :svb_transaction_cleared_for_sanctions_review
        SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW = :svb_transaction_held_for_sanctions_review
        SWIFT_MIR = :swift_mir
        SWIFT_UETR = :swift_uetr
        UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER = :umb_product_partner_account_number
        USBANK_PAYMENT_APPLICATION_REFERENCE_ID = :usbank_payment_application_reference_id
        USBANK_PAYMENT_ID = :usbank_payment_id
        USBANK_PENDING_RTP_PAYMENT_ID = :usbank_pending_rtp_payment_id
        USBANK_POSTED_RTP_PAYMENT_ID = :usbank_posted_rtp_payment_id
        WELLS_FARGO_END_TO_END_ID = :wells_fargo_end_to_end_id
        WELLS_FARGO_PAYMENT_ID = :wells_fargo_payment_id
        WELLS_FARGO_TRACE_NUMBER = :wells_fargo_trace_number
        WELLS_FARGO_UETR = :wells_fargo_uetr

        finalize!
      end

      # One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      #
      # @example
      # ```ruby
      # case referenceable_type
      # in :payment_order
      #   # ...
      # in :reversal
      #   # ...
      # in :return
      #   # ...
      # end
      # ```
      class ReferenceableType < ModernTreasury::Enum
        PAYMENT_ORDER = :payment_order
        REVERSAL = :reversal
        RETURN = :return

        finalize!
      end
    end
  end
end
