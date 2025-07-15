# typed: strong

module ModernTreasury
  module Models
    class PaymentReference < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::PaymentReference,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The actual reference number assigned by the bank.
      sig { returns(String) }
      attr_accessor :reference_number

      # The type of reference number.
      sig do
        returns(
          ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
        )
      end
      attr_accessor :reference_number_type

      # The id of the referenceable to search for. Must be accompanied by the
      # referenceable_type or will return an error.
      sig { returns(String) }
      attr_accessor :referenceable_id

      # One of the referenceable types. This must be accompanied by the id of the
      # referenceable or will return an error.
      sig do
        returns(
          ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol
        )
      end
      attr_accessor :referenceable_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          live_mode: T::Boolean,
          object: String,
          reference_number: String,
          reference_number_type:
            ModernTreasury::PaymentReference::ReferenceNumberType::OrSymbol,
          referenceable_id: String,
          referenceable_type:
            ModernTreasury::PaymentReference::ReferenceableType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode:,
        object:,
        # The actual reference number assigned by the bank.
        reference_number:,
        # The type of reference number.
        reference_number_type:,
        # The id of the referenceable to search for. Must be accompanied by the
        # referenceable_type or will return an error.
        referenceable_id:,
        # One of the referenceable types. This must be accompanied by the id of the
        # referenceable or will return an error.
        referenceable_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            live_mode: T::Boolean,
            object: String,
            reference_number: String,
            reference_number_type:
              ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol,
            referenceable_id: String,
            referenceable_type:
              ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The type of reference number.
      module ReferenceNumberType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentReference::ReferenceNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_ORIGINAL_TRACE_NUMBER =
          T.let(
            :ach_original_trace_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        ACH_TRACE_NUMBER =
          T.let(
            :ach_trace_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BANKPROV_PAYMENT_ACTIVITY_DATE =
          T.let(
            :bankprov_payment_activity_date,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BANKPROV_PAYMENT_ID =
          T.let(
            :bankprov_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BNK_DEV_PRENOTIFICATION_ID =
          T.let(
            :bnk_dev_prenotification_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BNK_DEV_TRANSFER_ID =
          T.let(
            :bnk_dev_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BOFA_END_TO_END_ID =
          T.let(
            :bofa_end_to_end_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BOFA_TRANSACTION_ID =
          T.let(
            :bofa_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BRALE_TRANSFER_ID =
          T.let(
            :brale_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BRIDGE_DESTINATION_TRANSACTION_HASH =
          T.let(
            :bridge_destination_transaction_hash,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BRIDGE_SOURCE_TRANSACTION_HASH =
          T.let(
            :bridge_source_transaction_hash,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        BRIDGE_TRANSFER_ID =
          T.let(
            :bridge_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CHECK_NUMBER =
          T.let(
            :check_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CITIBANK_REFERENCE_NUMBER =
          T.let(
            :citibank_reference_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CITIBANK_WORLDLINK_CLEARING_SYSTEM_REFERENCE_NUMBER =
          T.let(
            :citibank_worldlink_clearing_system_reference_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        COLUMN_FX_QUOTE_ID =
          T.let(
            :column_fx_quote_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        COLUMN_REVERSAL_PAIR_TRANSFER_ID =
          T.let(
            :column_reversal_pair_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        COLUMN_TRANSFER_ID =
          T.let(
            :column_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CROSS_RIVER_CORE_TRANSACTION_ID =
          T.let(
            :cross_river_core_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CROSS_RIVER_FED_BATCH_ID =
          T.let(
            :cross_river_fed_batch_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CROSS_RIVER_PAYMENT_ID =
          T.let(
            :cross_river_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CROSS_RIVER_SERVICE_MESSAGE =
          T.let(
            :cross_river_service_message,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CROSS_RIVER_TRANSACTION_ID =
          T.let(
            :cross_river_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CURRENCYCLOUD_CONVERSION_ID =
          T.let(
            :currencycloud_conversion_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        CURRENCYCLOUD_PAYMENT_ID =
          T.let(
            :currencycloud_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        DC_BANK_TRANSACTION_ID =
          T.let(
            :dc_bank_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        EFT_TRACE_NUMBER =
          T.let(
            :eft_trace_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        EVOLVE_CORE_BATCH =
          T.let(
            :evolve_core_batch,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        EVOLVE_CORE_FILE_KEY =
          T.let(
            :evolve_core_file_key,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        EVOLVE_CORE_SEQ =
          T.let(
            :evolve_core_seq,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        EVOLVE_TRANSACTION_ID =
          T.let(
            :evolve_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        FAKE_VENDOR_PAYMENT_ID =
          T.let(
            :fake_vendor_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        FEDWIRE_IMAD =
          T.let(
            :fedwire_imad,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        FEDWIRE_OMAD =
          T.let(
            :fedwire_omad,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        FIRST_REPUBLIC_INTERNAL_ID =
          T.let(
            :first_republic_internal_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        GOLDMAN_SACHS_COLLECTION_REQUEST_ID =
          T.let(
            :goldman_sachs_collection_request_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        GOLDMAN_SACHS_END_TO_END_ID =
          T.let(
            :goldman_sachs_end_to_end_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        GOLDMAN_SACHS_PAYMENT_REQUEST_ID =
          T.let(
            :goldman_sachs_payment_request_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        GOLDMAN_SACHS_REQUEST_ID =
          T.let(
            :goldman_sachs_request_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        GOLDMAN_SACHS_UNIQUE_PAYMENT_ID =
          T.let(
            :goldman_sachs_unique_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        HIFI_OFFRAMP_ID =
          T.let(
            :hifi_offramp_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        HIFI_TRANSFER_ID =
          T.let(
            :hifi_transfer_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        INTERAC_MESSAGE_ID =
          T.let(
            :interac_message_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_CCN =
          T.let(
            :jpmc_ccn,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_CLEARING_SYSTEM_REFERENCE =
          T.let(
            :jpmc_clearing_system_reference,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_CUSTOMER_REFERENCE_ID =
          T.let(
            :jpmc_customer_reference_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_END_TO_END_ID =
          T.let(
            :jpmc_end_to_end_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_FIRM_ROOT_ID =
          T.let(
            :jpmc_firm_root_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_FX_TRN_ID =
          T.let(
            :jpmc_fx_trn_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_P3_ID =
          T.let(
            :jpmc_p3_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_PAYMENT_BATCH_ID =
          T.let(
            :jpmc_payment_batch_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_PAYMENT_INFORMATION_ID =
          T.let(
            :jpmc_payment_information_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_PAYMENT_RETURNED_DATETIME =
          T.let(
            :jpmc_payment_returned_datetime,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        JPMC_TRANSACTION_REFERENCE_NUMBER =
          T.let(
            :jpmc_transaction_reference_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        LOB_CHECK_ID =
          T.let(
            :lob_check_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PARTIAL_SWIFT_MIR =
          T.let(
            :partial_swift_mir,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_CLEARING_REFERENCE =
          T.let(
            :pnc_clearing_reference,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_INSTRUCTION_ID =
          T.let(
            :pnc_instruction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_MULTIPAYMENT_ID =
          T.let(
            :pnc_multipayment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_PAYMENT_TRACE_ID =
          T.let(
            :pnc_payment_trace_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_REQUEST_FOR_PAYMENT_ID =
          T.let(
            :pnc_request_for_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        PNC_TRANSACTION_REFERENCE_NUMBER =
          T.let(
            :pnc_transaction_reference_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        RBC_WIRE_REFERENCE_ID =
          T.let(
            :rbc_wire_reference_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        RTP_INSTRUCTION_ID =
          T.let(
            :rtp_instruction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SIGNET_API_REFERENCE_ID =
          T.let(
            :signet_api_reference_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SIGNET_CONFIRMATION_ID =
          T.let(
            :signet_confirmation_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SIGNET_REQUEST_ID =
          T.let(
            :signet_request_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SILVERGATE_PAYMENT_ID =
          T.let(
            :silvergate_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SVB_END_TO_END_ID =
          T.let(
            :svb_end_to_end_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SVB_PAYMENT_ID =
          T.let(
            :svb_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SVB_TRANSACTION_CLEARED_FOR_SANCTIONS_REVIEW =
          T.let(
            :svb_transaction_cleared_for_sanctions_review,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SVB_TRANSACTION_HELD_FOR_SANCTIONS_REVIEW =
          T.let(
            :svb_transaction_held_for_sanctions_review,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SWIFT_MIR =
          T.let(
            :swift_mir,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        SWIFT_UETR =
          T.let(
            :swift_uetr,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        UMB_PRODUCT_PARTNER_ACCOUNT_NUMBER =
          T.let(
            :umb_product_partner_account_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        USBANK_PAYMENT_APPLICATION_REFERENCE_ID =
          T.let(
            :usbank_payment_application_reference_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        USBANK_PAYMENT_ID =
          T.let(
            :usbank_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        USBANK_PENDING_RTP_PAYMENT_ID =
          T.let(
            :usbank_pending_rtp_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        USBANK_POSTED_RTP_PAYMENT_ID =
          T.let(
            :usbank_posted_rtp_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WELLS_FARGO_END_TO_END_ID =
          T.let(
            :wells_fargo_end_to_end_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WELLS_FARGO_PAYMENT_ID =
          T.let(
            :wells_fargo_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WELLS_FARGO_TRACE_NUMBER =
          T.let(
            :wells_fargo_trace_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WELLS_FARGO_UETR =
          T.let(
            :wells_fargo_uetr,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WESTERN_ALLIANCE_PAYMENT_ID =
          T.let(
            :western_alliance_payment_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WESTERN_ALLIANCE_TRANSACTION_ID =
          T.let(
            :western_alliance_transaction_id,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )
        WESTERN_ALLIANCE_WIRE_CONFIRMATION_NUMBER =
          T.let(
            :western_alliance_wire_confirmation_number,
            ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentReference::ReferenceNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # One of the referenceable types. This must be accompanied by the id of the
      # referenceable or will return an error.
      module ReferenceableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::PaymentReference::ReferenceableType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_ORDER =
          T.let(
            :payment_order,
            ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol
          )
        REVERSAL =
          T.let(
            :reversal,
            ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol
          )
        RETURN =
          T.let(
            :return,
            ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::PaymentReference::ReferenceableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
