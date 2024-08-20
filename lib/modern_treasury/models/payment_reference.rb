# frozen_string_literal: true

module ModernTreasury
  module Models
    class PaymentReference < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] reference_number
      #   The actual reference number assigned by the bank.
      #   @return [String]
      required :reference_number, String

      # @!attribute [rw] reference_number_type
      #   The type of reference number.
      #   @return [Symbol]
      required :reference_number_type,
               ModernTreasury::Enum.new(
                 :ach_original_trace_number,
                 :ach_trace_number,
                 :bankprov_payment_activity_date,
                 :bankprov_payment_id,
                 :bnk_dev_prenotification_id,
                 :bnk_dev_transfer_id,
                 :bofa_end_to_end_id,
                 :bofa_transaction_id,
                 :check_number,
                 :citibank_reference_number,
                 :citibank_worldlink_clearing_system_reference_number,
                 :column_fx_quote_id,
                 :column_reversal_pair_transfer_id,
                 :column_transfer_id,
                 :cross_river_payment_id,
                 :cross_river_service_message,
                 :cross_river_transaction_id,
                 :currencycloud_conversion_id,
                 :currencycloud_payment_id,
                 :dc_bank_transaction_id,
                 :dwolla_transaction_id,
                 :eft_trace_number,
                 :evolve_transaction_id,
                 :fedwire_imad,
                 :fedwire_omad,
                 :first_republic_internal_id,
                 :goldman_sachs_collection_request_id,
                 :goldman_sachs_end_to_end_id,
                 :goldman_sachs_payment_request_id,
                 :goldman_sachs_request_id,
                 :goldman_sachs_unique_payment_id,
                 :interac_message_id,
                 :jpmc_ccn,
                 :jpmc_clearing_system_reference,
                 :jpmc_customer_reference_id,
                 :jpmc_end_to_end_id,
                 :jpmc_firm_root_id,
                 :jpmc_fx_trn_id,
                 :jpmc_p3_id,
                 :jpmc_payment_batch_id,
                 :jpmc_payment_information_id,
                 :jpmc_payment_returned_datetime,
                 :lob_check_id,
                 :other,
                 :partial_swift_mir,
                 :pnc_clearing_reference,
                 :pnc_instruction_id,
                 :pnc_multipayment_id,
                 :pnc_payment_trace_id,
                 :rspec_vendor_payment_id,
                 :rtp_instruction_id,
                 :signet_api_reference_id,
                 :signet_confirmation_id,
                 :signet_request_id,
                 :silvergate_payment_id,
                 :svb_end_to_end_id,
                 :svb_payment_id,
                 :svb_transaction_cleared_for_sanctions_review,
                 :svb_transaction_held_for_sanctions_review,
                 :swift_mir,
                 :swift_uetr,
                 :umb_product_partner_account_number,
                 :usbank_payment_id,
                 :wells_fargo_end_to_end_id,
                 :wells_fargo_payment_id,
                 :wells_fargo_trace_number,
                 :wells_fargo_uetr
               )

      # @!attribute [rw] referenceable_id
      #   The id of the referenceable to search for. Must be accompanied by the referenceable_type or will return an error.
      #   @return [String]
      required :referenceable_id, String

      # @!attribute [rw] referenceable_type
      #   One of the referenceable types. This must be accompanied by the id of the referenceable or will return an error.
      #   @return [Symbol]
      required :referenceable_type, ModernTreasury::Enum.new(:payment_order, :reversal, :return)

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String
    end
  end
end
