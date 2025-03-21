# frozen_string_literal: true

require_relative "../test_helper"

class ModernTreasury::Test::Resources::PaymentOrdersTest < ModernTreasury::Test::ResourceTest
  def test_create_required_params
    response =
      @modern_treasury.payment_orders.create(
        amount: 0,
        direction: :credit,
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        type: :ach
      )

    assert_pattern do
      response => ModernTreasury::Models::PaymentOrder
    end

    assert_pattern do
      response => {
        id: String,
        accounting: ModernTreasury::Models::PaymentOrder::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        charge_bearer: ModernTreasury::Models::PaymentOrder::ChargeBearer | nil,
        compliance_rule_metadata: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]) | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        decision_id: String | nil,
        description: String | nil,
        direction: ModernTreasury::Models::PaymentOrder::Direction,
        effective_date: Date,
        expires_at: Time | nil,
        foreign_exchange_contract: String | nil,
        foreign_exchange_indicator: ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator | nil,
        foreign_exchange_rate: ModernTreasury::Models::PaymentOrder::ForeignExchangeRate | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        nsf_protected: ModernTreasury::BooleanModel,
        object: String,
        originating_account_id: String,
        originating_party_name: String | nil,
        priority: ModernTreasury::Models::PaymentOrder::Priority,
        process_after: Time | nil,
        purpose: String | nil,
        receiving_account_id: String,
        receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder::ReferenceNumber]),
        remittance_information: String | nil,
        send_remittance_advice: ModernTreasury::BooleanModel | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::PaymentOrder::Status,
        subtype: ModernTreasury::Models::PaymentOrderSubtype | nil,
        transaction_ids: ^(ModernTreasury::ArrayOf[String]),
        transaction_monitoring_enabled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::PaymentOrderType,
        ultimate_originating_account: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccount | nil,
        ultimate_originating_account_id: String | nil,
        ultimate_originating_account_type: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType | nil,
        ultimate_originating_party_identifier: String | nil,
        ultimate_originating_party_name: String | nil,
        ultimate_receiving_party_identifier: String | nil,
        ultimate_receiving_party_name: String | nil,
        updated_at: Time,
        vendor_attributes: ModernTreasury::Unknown | nil,
        vendor_failure_reason: String | nil
      }
    end
  end

  def test_retrieve
    response = @modern_treasury.payment_orders.retrieve("id")

    assert_pattern do
      response => ModernTreasury::Models::PaymentOrder
    end

    assert_pattern do
      response => {
        id: String,
        accounting: ModernTreasury::Models::PaymentOrder::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        charge_bearer: ModernTreasury::Models::PaymentOrder::ChargeBearer | nil,
        compliance_rule_metadata: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]) | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        decision_id: String | nil,
        description: String | nil,
        direction: ModernTreasury::Models::PaymentOrder::Direction,
        effective_date: Date,
        expires_at: Time | nil,
        foreign_exchange_contract: String | nil,
        foreign_exchange_indicator: ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator | nil,
        foreign_exchange_rate: ModernTreasury::Models::PaymentOrder::ForeignExchangeRate | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        nsf_protected: ModernTreasury::BooleanModel,
        object: String,
        originating_account_id: String,
        originating_party_name: String | nil,
        priority: ModernTreasury::Models::PaymentOrder::Priority,
        process_after: Time | nil,
        purpose: String | nil,
        receiving_account_id: String,
        receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder::ReferenceNumber]),
        remittance_information: String | nil,
        send_remittance_advice: ModernTreasury::BooleanModel | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::PaymentOrder::Status,
        subtype: ModernTreasury::Models::PaymentOrderSubtype | nil,
        transaction_ids: ^(ModernTreasury::ArrayOf[String]),
        transaction_monitoring_enabled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::PaymentOrderType,
        ultimate_originating_account: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccount | nil,
        ultimate_originating_account_id: String | nil,
        ultimate_originating_account_type: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType | nil,
        ultimate_originating_party_identifier: String | nil,
        ultimate_originating_party_name: String | nil,
        ultimate_receiving_party_identifier: String | nil,
        ultimate_receiving_party_name: String | nil,
        updated_at: Time,
        vendor_attributes: ModernTreasury::Unknown | nil,
        vendor_failure_reason: String | nil
      }
    end
  end

  def test_update
    response = @modern_treasury.payment_orders.update("id")

    assert_pattern do
      response => ModernTreasury::Models::PaymentOrder
    end

    assert_pattern do
      response => {
        id: String,
        accounting: ModernTreasury::Models::PaymentOrder::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        charge_bearer: ModernTreasury::Models::PaymentOrder::ChargeBearer | nil,
        compliance_rule_metadata: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]) | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        decision_id: String | nil,
        description: String | nil,
        direction: ModernTreasury::Models::PaymentOrder::Direction,
        effective_date: Date,
        expires_at: Time | nil,
        foreign_exchange_contract: String | nil,
        foreign_exchange_indicator: ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator | nil,
        foreign_exchange_rate: ModernTreasury::Models::PaymentOrder::ForeignExchangeRate | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        nsf_protected: ModernTreasury::BooleanModel,
        object: String,
        originating_account_id: String,
        originating_party_name: String | nil,
        priority: ModernTreasury::Models::PaymentOrder::Priority,
        process_after: Time | nil,
        purpose: String | nil,
        receiving_account_id: String,
        receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder::ReferenceNumber]),
        remittance_information: String | nil,
        send_remittance_advice: ModernTreasury::BooleanModel | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::PaymentOrder::Status,
        subtype: ModernTreasury::Models::PaymentOrderSubtype | nil,
        transaction_ids: ^(ModernTreasury::ArrayOf[String]),
        transaction_monitoring_enabled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::PaymentOrderType,
        ultimate_originating_account: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccount | nil,
        ultimate_originating_account_id: String | nil,
        ultimate_originating_account_type: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType | nil,
        ultimate_originating_party_identifier: String | nil,
        ultimate_originating_party_name: String | nil,
        ultimate_receiving_party_identifier: String | nil,
        ultimate_receiving_party_name: String | nil,
        updated_at: Time,
        vendor_attributes: ModernTreasury::Unknown | nil,
        vendor_failure_reason: String | nil
      }
    end
  end

  def test_list
    response = @modern_treasury.payment_orders.list

    assert_pattern do
      response => ModernTreasury::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ModernTreasury::Models::PaymentOrder
    end

    assert_pattern do
      row => {
        id: String,
        accounting: ModernTreasury::Models::PaymentOrder::Accounting,
        accounting_category_id: String | nil,
        accounting_ledger_class_id: String | nil,
        amount: Integer,
        charge_bearer: ModernTreasury::Models::PaymentOrder::ChargeBearer | nil,
        compliance_rule_metadata: ^(ModernTreasury::HashOf[ModernTreasury::Unknown]) | nil,
        counterparty_id: String | nil,
        created_at: Time,
        currency: ModernTreasury::Models::Currency,
        current_return: ModernTreasury::Models::ReturnObject | nil,
        decision_id: String | nil,
        description: String | nil,
        direction: ModernTreasury::Models::PaymentOrder::Direction,
        effective_date: Date,
        expires_at: Time | nil,
        foreign_exchange_contract: String | nil,
        foreign_exchange_indicator: ModernTreasury::Models::PaymentOrder::ForeignExchangeIndicator | nil,
        foreign_exchange_rate: ModernTreasury::Models::PaymentOrder::ForeignExchangeRate | nil,
        ledger_transaction_id: String | nil,
        live_mode: ModernTreasury::BooleanModel,
        metadata: ^(ModernTreasury::HashOf[String]),
        nsf_protected: ModernTreasury::BooleanModel,
        object: String,
        originating_account_id: String,
        originating_party_name: String | nil,
        priority: ModernTreasury::Models::PaymentOrder::Priority,
        process_after: Time | nil,
        purpose: String | nil,
        receiving_account_id: String,
        receiving_account_type: ModernTreasury::Models::PaymentOrder::ReceivingAccountType,
        reference_numbers: ^(ModernTreasury::ArrayOf[ModernTreasury::Models::PaymentOrder::ReferenceNumber]),
        remittance_information: String | nil,
        send_remittance_advice: ModernTreasury::BooleanModel | nil,
        statement_descriptor: String | nil,
        status: ModernTreasury::Models::PaymentOrder::Status,
        subtype: ModernTreasury::Models::PaymentOrderSubtype | nil,
        transaction_ids: ^(ModernTreasury::ArrayOf[String]),
        transaction_monitoring_enabled: ModernTreasury::BooleanModel,
        type: ModernTreasury::Models::PaymentOrderType,
        ultimate_originating_account: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccount | nil,
        ultimate_originating_account_id: String | nil,
        ultimate_originating_account_type: ModernTreasury::Models::PaymentOrder::UltimateOriginatingAccountType | nil,
        ultimate_originating_party_identifier: String | nil,
        ultimate_originating_party_name: String | nil,
        ultimate_receiving_party_identifier: String | nil,
        ultimate_receiving_party_name: String | nil,
        updated_at: Time,
        vendor_attributes: ModernTreasury::Unknown | nil,
        vendor_failure_reason: String | nil
      }
    end
  end

  def test_create_async_required_params
    response =
      @modern_treasury.payment_orders.create_async(
        amount: 0,
        direction: :credit,
        originating_account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        type: :ach
      )

    assert_pattern do
      response => ModernTreasury::Models::AsyncResponse
    end

    assert_pattern do
      response => {
        id: String,
        object: String
      }
    end
  end
end
