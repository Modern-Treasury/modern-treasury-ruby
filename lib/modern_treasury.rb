# frozen_string_literal: true

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$0]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "modern_treasury" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "modern_treasury/version"
require_relative "modern_treasury/util"
require_relative "modern_treasury/type/converter"
require_relative "modern_treasury/type/unknown"
require_relative "modern_treasury/type/boolean_model"
require_relative "modern_treasury/type/enum"
require_relative "modern_treasury/type/union"
require_relative "modern_treasury/type/array_of"
require_relative "modern_treasury/type/hash_of"
require_relative "modern_treasury/type/base_model"
require_relative "modern_treasury/type/base_page"
require_relative "modern_treasury/type/request_parameters"
require_relative "modern_treasury/type"
require_relative "modern_treasury/request_options"
require_relative "modern_treasury/errors"
require_relative "modern_treasury/transport/base_client"
require_relative "modern_treasury/transport/pooled_net_requester"
require_relative "modern_treasury/client"
require_relative "modern_treasury/page"
require_relative "modern_treasury/models/account_collection_flow"
require_relative "modern_treasury/models/account_collection_flow_create_params"
require_relative "modern_treasury/models/account_collection_flow_list_params"
require_relative "modern_treasury/models/account_collection_flow_retrieve_params"
require_relative "modern_treasury/models/account_collection_flow_update_params"
require_relative "modern_treasury/models/account_detail"
require_relative "modern_treasury/models/account_detail_create_params"
require_relative "modern_treasury/models/account_detail_delete_params"
require_relative "modern_treasury/models/account_detail_list_params"
require_relative "modern_treasury/models/account_detail_retrieve_params"
require_relative "modern_treasury/models/accounts_type"
require_relative "modern_treasury/models/async_response"
require_relative "modern_treasury/models/bank_settings"
require_relative "modern_treasury/models/bulk_request"
require_relative "modern_treasury/models/bulk_request_create_params"
require_relative "modern_treasury/models/bulk_request_list_params"
require_relative "modern_treasury/models/bulk_request_retrieve_params"
require_relative "modern_treasury/models/bulk_result"
require_relative "modern_treasury/models/bulk_result_list_params"
require_relative "modern_treasury/models/bulk_result_retrieve_params"
require_relative "modern_treasury/models/client_ping_params"
require_relative "modern_treasury/models/connection"
require_relative "modern_treasury/models/connection_legal_entity"
require_relative "modern_treasury/models/connection_legal_entity_create_params"
require_relative "modern_treasury/models/connection_legal_entity_list_params"
require_relative "modern_treasury/models/connection_legal_entity_retrieve_params"
require_relative "modern_treasury/models/connection_legal_entity_update_params"
require_relative "modern_treasury/models/connection_list_params"
require_relative "modern_treasury/models/counterparty"
require_relative "modern_treasury/models/counterparty_collect_account_params"
require_relative "modern_treasury/models/counterparty_collect_account_response"
require_relative "modern_treasury/models/counterparty_create_params"
require_relative "modern_treasury/models/counterparty_delete_params"
require_relative "modern_treasury/models/counterparty_list_params"
require_relative "modern_treasury/models/counterparty_retrieve_params"
require_relative "modern_treasury/models/counterparty_update_params"
require_relative "modern_treasury/models/currency"
require_relative "modern_treasury/models/document"
require_relative "modern_treasury/models/document_create_params"
require_relative "modern_treasury/models/document_list_params"
require_relative "modern_treasury/models/document_retrieve_params"
require_relative "modern_treasury/models/event"
require_relative "modern_treasury/models/event_list_params"
require_relative "modern_treasury/models/event_retrieve_params"
require_relative "modern_treasury/models/expected_payment"
require_relative "modern_treasury/models/expected_payment_create_params"
require_relative "modern_treasury/models/expected_payment_delete_params"
require_relative "modern_treasury/models/expected_payment_list_params"
require_relative "modern_treasury/models/expected_payment_retrieve_params"
require_relative "modern_treasury/models/expected_payment_type"
require_relative "modern_treasury/models/expected_payment_update_params"
require_relative "modern_treasury/models/external_account"
require_relative "modern_treasury/models/external_account_complete_verification_params"
require_relative "modern_treasury/models/external_account_create_params"
require_relative "modern_treasury/models/external_account_delete_params"
require_relative "modern_treasury/models/external_account_list_params"
require_relative "modern_treasury/models/external_account_retrieve_params"
require_relative "modern_treasury/models/external_account_type"
require_relative "modern_treasury/models/external_account_update_params"
require_relative "modern_treasury/models/external_account_verify_params"
require_relative "modern_treasury/models/external_account_verify_response"
require_relative "modern_treasury/models/foreign_exchange_quote"
require_relative "modern_treasury/models/foreign_exchange_quote_create_params"
require_relative "modern_treasury/models/foreign_exchange_quote_list_params"
require_relative "modern_treasury/models/foreign_exchange_quote_retrieve_params"
require_relative "modern_treasury/models/incoming_payment_detail"
require_relative "modern_treasury/models/incoming_payment_detail_create_async_params"
require_relative "modern_treasury/models/incoming_payment_detail_list_params"
require_relative "modern_treasury/models/incoming_payment_detail_retrieve_params"
require_relative "modern_treasury/models/incoming_payment_detail_update_params"
require_relative "modern_treasury/models/internal_account"
require_relative "modern_treasury/models/internal_account_create_params"
require_relative "modern_treasury/models/internal_account_list_params"
require_relative "modern_treasury/models/internal_account_retrieve_params"
require_relative "modern_treasury/models/internal_accounts/balance_report"
require_relative "modern_treasury/models/internal_accounts/balance_report_create_params"
require_relative "modern_treasury/models/internal_accounts/balance_report_delete_params"
require_relative "modern_treasury/models/internal_accounts/balance_report_list_params"
require_relative "modern_treasury/models/internal_accounts/balance_report_retrieve_params"
require_relative "modern_treasury/models/internal_account_update_params"
require_relative "modern_treasury/models/invoice"
require_relative "modern_treasury/models/invoice_add_payment_order_params"
require_relative "modern_treasury/models/invoice_create_params"
require_relative "modern_treasury/models/invoice_list_params"
require_relative "modern_treasury/models/invoice_retrieve_params"
require_relative "modern_treasury/models/invoices/invoice_line_item"
require_relative "modern_treasury/models/invoices/line_item_create_params"
require_relative "modern_treasury/models/invoices/line_item_delete_params"
require_relative "modern_treasury/models/invoices/line_item_list_params"
require_relative "modern_treasury/models/invoices/line_item_retrieve_params"
require_relative "modern_treasury/models/invoices/line_item_update_params"
require_relative "modern_treasury/models/invoice_update_params"
require_relative "modern_treasury/models/ledger"
require_relative "modern_treasury/models/ledgerable_event"
require_relative "modern_treasury/models/ledgerable_event_create_params"
require_relative "modern_treasury/models/ledgerable_event_retrieve_params"
require_relative "modern_treasury/models/ledger_account"
require_relative "modern_treasury/models/ledger_account_balance_monitor"
require_relative "modern_treasury/models/ledger_account_balance_monitor_create_params"
require_relative "modern_treasury/models/ledger_account_balance_monitor_delete_params"
require_relative "modern_treasury/models/ledger_account_balance_monitor_list_params"
require_relative "modern_treasury/models/ledger_account_balance_monitor_retrieve_params"
require_relative "modern_treasury/models/ledger_account_balance_monitor_update_params"
require_relative "modern_treasury/models/ledger_account_category"
require_relative "modern_treasury/models/ledger_account_category_add_ledger_account_params"
require_relative "modern_treasury/models/ledger_account_category_add_nested_category_params"
require_relative "modern_treasury/models/ledger_account_category_create_params"
require_relative "modern_treasury/models/ledger_account_category_delete_params"
require_relative "modern_treasury/models/ledger_account_category_list_params"
require_relative "modern_treasury/models/ledger_account_category_remove_ledger_account_params"
require_relative "modern_treasury/models/ledger_account_category_remove_nested_category_params"
require_relative "modern_treasury/models/ledger_account_category_retrieve_params"
require_relative "modern_treasury/models/ledger_account_category_update_params"
require_relative "modern_treasury/models/ledger_account_create_params"
require_relative "modern_treasury/models/ledger_account_delete_params"
require_relative "modern_treasury/models/ledger_account_list_params"
require_relative "modern_treasury/models/ledger_account_retrieve_params"
require_relative "modern_treasury/models/ledger_account_settlement"
require_relative "modern_treasury/models/ledger_account_settlement_create_params"
require_relative "modern_treasury/models/ledger_account_settlement_list_params"
require_relative "modern_treasury/models/ledger_account_settlement_retrieve_params"
require_relative "modern_treasury/models/ledger_account_settlements/account_entry_delete_params"
require_relative "modern_treasury/models/ledger_account_settlements/account_entry_update_params"
require_relative "modern_treasury/models/ledger_account_settlement_update_params"
require_relative "modern_treasury/models/ledger_account_statement_create_params"
require_relative "modern_treasury/models/ledger_account_statement_create_response"
require_relative "modern_treasury/models/ledger_account_statement_retrieve_params"
require_relative "modern_treasury/models/ledger_account_statement_retrieve_response"
require_relative "modern_treasury/models/ledger_account_update_params"
require_relative "modern_treasury/models/ledger_create_params"
require_relative "modern_treasury/models/ledger_delete_params"
require_relative "modern_treasury/models/ledger_entry"
require_relative "modern_treasury/models/ledger_entry_list_params"
require_relative "modern_treasury/models/ledger_entry_retrieve_params"
require_relative "modern_treasury/models/ledger_entry_update_params"
require_relative "modern_treasury/models/ledger_event_handler"
require_relative "modern_treasury/models/ledger_event_handler_create_params"
require_relative "modern_treasury/models/ledger_event_handler_delete_params"
require_relative "modern_treasury/models/ledger_event_handler_list_params"
require_relative "modern_treasury/models/ledger_event_handler_retrieve_params"
require_relative "modern_treasury/models/ledger_event_handler_variable"
require_relative "modern_treasury/models/ledger_list_params"
require_relative "modern_treasury/models/ledger_retrieve_params"
require_relative "modern_treasury/models/ledger_transaction"
require_relative "modern_treasury/models/ledger_transaction_create_params"
require_relative "modern_treasury/models/ledger_transaction_create_partial_post_params"
require_relative "modern_treasury/models/ledger_transaction_create_reversal_params"
require_relative "modern_treasury/models/ledger_transaction_list_params"
require_relative "modern_treasury/models/ledger_transaction_retrieve_params"
require_relative "modern_treasury/models/ledger_transactions/ledger_transaction_version"
require_relative "modern_treasury/models/ledger_transactions/version_list_params"
require_relative "modern_treasury/models/ledger_transaction_update_params"
require_relative "modern_treasury/models/ledger_update_params"
require_relative "modern_treasury/models/legal_entity"
require_relative "modern_treasury/models/legal_entity_association"
require_relative "modern_treasury/models/legal_entity_association_create_params"
require_relative "modern_treasury/models/legal_entity_compliance_detail"
require_relative "modern_treasury/models/legal_entity_create_params"
require_relative "modern_treasury/models/legal_entity_industry_classification"
require_relative "modern_treasury/models/legal_entity_list_params"
require_relative "modern_treasury/models/legal_entity_retrieve_params"
require_relative "modern_treasury/models/legal_entity_update_params"
require_relative "modern_treasury/models/line_item"
require_relative "modern_treasury/models/line_item_list_params"
require_relative "modern_treasury/models/line_item_retrieve_params"
require_relative "modern_treasury/models/line_item_update_params"
require_relative "modern_treasury/models/paper_item"
require_relative "modern_treasury/models/paper_item_list_params"
require_relative "modern_treasury/models/paper_item_retrieve_params"
require_relative "modern_treasury/models/payment_flow"
require_relative "modern_treasury/models/payment_flow_create_params"
require_relative "modern_treasury/models/payment_flow_list_params"
require_relative "modern_treasury/models/payment_flow_retrieve_params"
require_relative "modern_treasury/models/payment_flow_update_params"
require_relative "modern_treasury/models/payment_order"
require_relative "modern_treasury/models/payment_order_create_async_params"
require_relative "modern_treasury/models/payment_order_create_params"
require_relative "modern_treasury/models/payment_order_list_params"
require_relative "modern_treasury/models/payment_order_retrieve_params"
require_relative "modern_treasury/models/payment_orders/reversal"
require_relative "modern_treasury/models/payment_orders/reversal_create_params"
require_relative "modern_treasury/models/payment_orders/reversal_list_params"
require_relative "modern_treasury/models/payment_orders/reversal_retrieve_params"
require_relative "modern_treasury/models/payment_order_subtype"
require_relative "modern_treasury/models/payment_order_type"
require_relative "modern_treasury/models/payment_order_update_params"
require_relative "modern_treasury/models/payment_reference"
require_relative "modern_treasury/models/payment_reference_list_params"
require_relative "modern_treasury/models/payment_reference_retireve_params"
require_relative "modern_treasury/models/payment_reference_retrieve_params"
require_relative "modern_treasury/models/ping_response"
require_relative "modern_treasury/models/reconciliation_rule"
require_relative "modern_treasury/models/return_create_params"
require_relative "modern_treasury/models/return_list_params"
require_relative "modern_treasury/models/return_object"
require_relative "modern_treasury/models/return_retrieve_params"
require_relative "modern_treasury/models/routing_detail"
require_relative "modern_treasury/models/routing_detail_create_params"
require_relative "modern_treasury/models/routing_detail_delete_params"
require_relative "modern_treasury/models/routing_detail_list_params"
require_relative "modern_treasury/models/routing_detail_retrieve_params"
require_relative "modern_treasury/models/routing_number_lookup_request"
require_relative "modern_treasury/models/transaction"
require_relative "modern_treasury/models/transaction_create_params"
require_relative "modern_treasury/models/transaction_delete_params"
require_relative "modern_treasury/models/transaction_direction"
require_relative "modern_treasury/models/transaction_list_params"
require_relative "modern_treasury/models/transaction_retrieve_params"
require_relative "modern_treasury/models/transactions/line_item_create_params"
require_relative "modern_treasury/models/transactions/line_item_delete_params"
require_relative "modern_treasury/models/transactions/line_item_list_params"
require_relative "modern_treasury/models/transactions/line_item_retrieve_params"
require_relative "modern_treasury/models/transactions/transaction_line_item"
require_relative "modern_treasury/models/transaction_update_params"
require_relative "modern_treasury/models/validation_validate_routing_number_params"
require_relative "modern_treasury/models/virtual_account"
require_relative "modern_treasury/models/virtual_account_create_params"
require_relative "modern_treasury/models/virtual_account_delete_params"
require_relative "modern_treasury/models/virtual_account_list_params"
require_relative "modern_treasury/models/virtual_account_retrieve_params"
require_relative "modern_treasury/models/virtual_account_update_params"
require_relative "modern_treasury/models/wealth_and_employment_details"
require_relative "modern_treasury/resources/account_collection_flows"
require_relative "modern_treasury/resources/account_details"
require_relative "modern_treasury/resources/bulk_requests"
require_relative "modern_treasury/resources/bulk_results"
require_relative "modern_treasury/resources/connection_legal_entities"
require_relative "modern_treasury/resources/connections"
require_relative "modern_treasury/resources/counterparties"
require_relative "modern_treasury/resources/documents"
require_relative "modern_treasury/resources/events"
require_relative "modern_treasury/resources/expected_payments"
require_relative "modern_treasury/resources/external_accounts"
require_relative "modern_treasury/resources/foreign_exchange_quotes"
require_relative "modern_treasury/resources/incoming_payment_details"
require_relative "modern_treasury/resources/internal_accounts"
require_relative "modern_treasury/resources/internal_accounts/balance_reports"
require_relative "modern_treasury/resources/invoices"
require_relative "modern_treasury/resources/invoices/line_items"
require_relative "modern_treasury/resources/ledgerable_events"
require_relative "modern_treasury/resources/ledger_account_balance_monitors"
require_relative "modern_treasury/resources/ledger_account_categories"
require_relative "modern_treasury/resources/ledger_accounts"
require_relative "modern_treasury/resources/ledger_account_settlements"
require_relative "modern_treasury/resources/ledger_account_settlements/account_entries"
require_relative "modern_treasury/resources/ledger_account_statements"
require_relative "modern_treasury/resources/ledger_entries"
require_relative "modern_treasury/resources/ledger_event_handlers"
require_relative "modern_treasury/resources/ledgers"
require_relative "modern_treasury/resources/ledger_transactions"
require_relative "modern_treasury/resources/ledger_transactions/versions"
require_relative "modern_treasury/resources/legal_entities"
require_relative "modern_treasury/resources/legal_entity_associations"
require_relative "modern_treasury/resources/line_items"
require_relative "modern_treasury/resources/paper_items"
require_relative "modern_treasury/resources/payment_flows"
require_relative "modern_treasury/resources/payment_orders"
require_relative "modern_treasury/resources/payment_orders/reversals"
require_relative "modern_treasury/resources/payment_references"
require_relative "modern_treasury/resources/returns"
require_relative "modern_treasury/resources/routing_details"
require_relative "modern_treasury/resources/transactions"
require_relative "modern_treasury/resources/transactions/line_items"
require_relative "modern_treasury/resources/validations"
require_relative "modern_treasury/resources/virtual_accounts"
