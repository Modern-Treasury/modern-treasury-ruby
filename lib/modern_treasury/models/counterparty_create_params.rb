# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute name
      #   A human friendly name for this counterparty.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute [r] accounting
      #
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::Accounting, nil]
      optional :accounting, -> { ModernTreasury::Models::CounterpartyCreateParams::Accounting }

      # @!parse
      #   # @return [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      #   attr_writer :accounting

      # @!attribute [r] accounts
      #   The accounts for this counterparty.
      #
      #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>]
      optional :accounts,
               -> { ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account] }

      # @!parse
      #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>]
      #   attr_writer :accounts

      # @!attribute email
      #   The counterparty's email.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute [r] ledger_type
      #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #     or `vendor`.
      #
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType, nil]
      optional :ledger_type, enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LedgerType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType]
      #   attr_writer :ledger_type

      # @!attribute [r] legal_entity
      #
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity, nil]
      optional :legal_entity, -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity }

      # @!parse
      #   # @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      #   attr_writer :legal_entity

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String, nil?: true

      # @!attribute [r] metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute [r] send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent
      #     to the bank.
      #
      #   @return [Boolean, nil]
      optional :send_remittance_advice, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :send_remittance_advice

      # @!attribute [r] taxpayer_identifier
      #   Either a valid SSN or EIN.
      #
      #   @return [String, nil]
      optional :taxpayer_identifier, String

      # @!parse
      #   # @return [String]
      #   attr_writer :taxpayer_identifier

      # @!attribute [r] verification_status
      #   The verification status of the counterparty.
      #
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus, nil]
      optional :verification_status,
               enum: -> { ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus]
      #   attr_writer :verification_status

      # @!parse
      #   # @param name [String, nil]
      #   # @param accounting [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      #   # @param accounts [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>]
      #   # @param email [String, nil]
      #   # @param ledger_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType]
      #   # @param legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      #   # @param legal_entity_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param send_remittance_advice [Boolean]
      #   # @param taxpayer_identifier [String]
      #   # @param verification_status [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     name:,
      #     accounting: nil,
      #     accounts: nil,
      #     email: nil,
      #     ledger_type: nil,
      #     legal_entity: nil,
      #     legal_entity_id: nil,
      #     metadata: nil,
      #     send_remittance_advice: nil,
      #     taxpayer_identifier: nil,
      #     verification_status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      # ```ruby
      # accounting => {
      #   type: ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type
      # }
      # ```
      class Accounting < ModernTreasury::BaseModel
        # @!attribute [r] type
        #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #     or `vendor`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type, nil]
        optional :type, enum: -> { ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type]
        #   attr_writer :type

        # @!parse
        #   # @param type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type]
        #   #
        #   def initialize(type: nil, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        #
        # @example
        # ```ruby
        # case type
        # in :customer
        #   # ...
        # in :vendor
        #   # ...
        # end
        # ```
        class Type < ModernTreasury::Enum
          CUSTOMER = :customer
          VENDOR = :vendor

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # account => {
      #   account_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail] === _1 },
      #   account_type: ModernTreasury::Models::ExternalAccountType,
      #   contact_details: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail] === _1 },
      #   ledger_account: ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount,
      #   metadata: -> { ModernTreasury::HashOf[String] === _1 },
      #   **_
      # }
      # ```
      class Account < ModernTreasury::BaseModel
        # @!attribute [r] account_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        optional :account_details,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        #   attr_writer :account_details

        # @!attribute [r] account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::Models::ExternalAccountType }

        # @!parse
        #   # @return [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   attr_writer :account_type

        # @!attribute [r] contact_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>]
        optional :contact_details,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>]
        #   attr_writer :contact_details

        # @!attribute [r] ledger_account
        #   Specifies a ledger account object that will be created with the external
        #     account. The resulting ledger account is linked to the external account for
        #     auto-ledgering Payment objects. See
        #     https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #     for more details.
        #
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount, nil]
        optional :ledger_account,
                 -> {
                   ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount
                 }

        # @!parse
        #   # @return [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount]
        #   attr_writer :ledger_account

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't
        #     affect any payments
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute [r] party_address
        #   Required if receiving wire payments.
        #
        #   @return [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress, nil]
        optional :party_address,
                 -> {
                   ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress
                 }

        # @!parse
        #   # @return [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress]
        #   attr_writer :party_address

        # @!attribute [r] party_identifier
        #
        #   @return [String, nil]
        optional :party_identifier, String

        # @!parse
        #   # @return [String]
        #   attr_writer :party_identifier

        # @!attribute [r] party_name
        #   If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :party_name

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil]
        optional :party_type,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType },
                 nil?: true

        # @!attribute [r] plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #     you can pass the processor token in this field.
        #
        #   @return [String, nil]
        optional :plaid_processor_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :plaid_processor_token

        # @!attribute [r] routing_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]
        optional :routing_details,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]
        #   attr_writer :routing_details

        # @!parse
        #   # @param account_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        #   # @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType]
        #   # @param contact_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail>]
        #   # @param ledger_account [ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param name [String, nil]
        #   # @param party_address [ModernTreasury::Models::CounterpartyCreateParams::Account::PartyAddress]
        #   # @param party_identifier [String]
        #   # @param party_name [String]
        #   # @param party_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil]
        #   # @param plaid_processor_token [String]
        #   # @param routing_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]
        #   #
        #   def initialize(
        #     account_details: nil,
        #     account_type: nil,
        #     contact_details: nil,
        #     ledger_account: nil,
        #     metadata: nil,
        #     name: nil,
        #     party_address: nil,
        #     party_identifier: nil,
        #     party_name: nil,
        #     party_type: nil,
        #     plaid_processor_token: nil,
        #     routing_details: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @example
        # ```ruby
        # account_detail => {
        #   account_number: String,
        #   account_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType
        # }
        # ```
        class AccountDetail < ModernTreasury::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute [r] account_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType, nil]
          optional :account_number_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType
                   }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType]
          #   attr_writer :account_number_type

          # @!parse
          #   # @param account_number [String]
          #   # @param account_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType]
          #   #
          #   def initialize(account_number:, account_number_type: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case account_number_type
          # in :au_number
          #   # ...
          # in :clabe
          #   # ...
          # in :hk_number
          #   # ...
          # in :iban
          #   # ...
          # in :id_number
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class AccountNumberType < ModernTreasury::Enum
            AU_NUMBER = :au_number
            CLABE = :clabe
            HK_NUMBER = :hk_number
            IBAN = :iban
            ID_NUMBER = :id_number
            NZ_NUMBER = :nz_number
            OTHER = :other
            PAN = :pan
            SG_NUMBER = :sg_number
            WALLET_ADDRESS = :wallet_address

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # contact_detail => {
        #   contact_identifier: String,
        #   contact_identifier_type: ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType
        # }
        # ```
        class ContactDetail < ModernTreasury::BaseModel
          # @!attribute [r] contact_identifier
          #
          #   @return [String, nil]
          optional :contact_identifier, String

          # @!parse
          #   # @return [String]
          #   attr_writer :contact_identifier

          # @!attribute [r] contact_identifier_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType, nil]
          optional :contact_identifier_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType
                   }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType]
          #   attr_writer :contact_identifier_type

          # @!parse
          #   # @param contact_identifier [String]
          #   # @param contact_identifier_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::ContactDetail::ContactIdentifierType]
          #   #
          #   def initialize(contact_identifier: nil, contact_identifier_type: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case contact_identifier_type
          # in :email
          #   # ...
          # in :phone_number
          #   # ...
          # in :website
          #   # ...
          # end
          # ```
          class ContactIdentifierType < ModernTreasury::Enum
            EMAIL = :email
            PHONE_NUMBER = :phone_number
            WEBSITE = :website

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # ledger_account => {
        #   currency: String,
        #   ledger_id: String,
        #   name: String,
        #   normal_balance: ModernTreasury::Models::TransactionDirection,
        #   currency_exponent: Integer,
        #   **_
        # }
        # ```
        class LedgerAccount < ModernTreasury::BaseModel
          # @!attribute currency
          #   The currency of the ledger account.
          #
          #   @return [String]
          required :currency, String

          # @!attribute ledger_id
          #   The id of the ledger that this account belongs to.
          #
          #   @return [String]
          required :ledger_id, String

          # @!attribute name
          #   The name of the ledger account.
          #
          #   @return [String]
          required :name, String

          # @!attribute normal_balance
          #   The normal balance of the ledger account.
          #
          #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
          required :normal_balance, enum: -> { ModernTreasury::Models::TransactionDirection }

          # @!attribute currency_exponent
          #   The currency exponent of the ledger account.
          #
          #   @return [Integer, nil]
          optional :currency_exponent, Integer, nil?: true

          # @!attribute description
          #   The description of the ledger account.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute [r] ledger_account_category_ids
          #   The array of ledger account category ids that this ledger account should be a
          #     child of.
          #
          #   @return [Array<String>]
          optional :ledger_account_category_ids, ModernTreasury::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :ledger_account_category_ids

          # @!attribute [r] ledgerable_id
          #   If the ledger account links to another object in Modern Treasury, the id will be
          #     populated here, otherwise null.
          #
          #   @return [String, nil]
          optional :ledgerable_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ledgerable_id

          # @!attribute [r] ledgerable_type
          #   If the ledger account links to another object in Modern Treasury, the type will
          #     be populated here, otherwise null. The value is one of internal_account or
          #     external_account.
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType, nil]
          optional :ledgerable_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType
                   }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType]
          #   attr_writer :ledgerable_type

          # @!attribute [r] metadata
          #   Additional data represented as key-value pairs. Both the key and value must be
          #     strings.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, ModernTreasury::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :metadata

          # @!parse
          #   # Specifies a ledger account object that will be created with the external
          #   #   account. The resulting ledger account is linked to the external account for
          #   #   auto-ledgering Payment objects. See
          #   #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
          #   #   for more details.
          #   #
          #   # @param currency [String]
          #   # @param ledger_id [String]
          #   # @param name [String]
          #   # @param normal_balance [Symbol, ModernTreasury::Models::TransactionDirection]
          #   # @param currency_exponent [Integer, nil]
          #   # @param description [String, nil]
          #   # @param ledger_account_category_ids [Array<String>]
          #   # @param ledgerable_id [String]
          #   # @param ledgerable_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::LedgerAccount::LedgerableType]
          #   # @param metadata [Hash{Symbol=>String}]
          #   #
          #   def initialize(
          #     currency:,
          #     ledger_id:,
          #     name:,
          #     normal_balance:,
          #     currency_exponent: nil,
          #     description: nil,
          #     ledger_account_category_ids: nil,
          #     ledgerable_id: nil,
          #     ledgerable_type: nil,
          #     metadata: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # If the ledger account links to another object in Modern Treasury, the type will
          #   be populated here, otherwise null. The value is one of internal_account or
          #   external_account.
          #
          # @example
          # ```ruby
          # case ledgerable_type
          # in :counterparty
          #   # ...
          # in :external_account
          #   # ...
          # in :internal_account
          #   # ...
          # in :virtual_account
          #   # ...
          # end
          # ```
          class LedgerableType < ModernTreasury::Enum
            COUNTERPARTY = :counterparty
            EXTERNAL_ACCOUNT = :external_account
            INTERNAL_ACCOUNT = :internal_account
            VIRTUAL_ACCOUNT = :virtual_account

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # party_address => {
        #   country: String,
        #   line1: String,
        #   line2: String,
        #   locality: String,
        #   postal_code: String
        # }
        # ```
        class PartyAddress < ModernTreasury::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @return [String, nil]
          optional :country, String, nil?: true

          # @!attribute line1
          #
          #   @return [String, nil]
          optional :line1, String, nil?: true

          # @!attribute line2
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!attribute locality
          #   Locality or City.
          #
          #   @return [String, nil]
          optional :locality, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          optional :postal_code, String, nil?: true

          # @!attribute region
          #   Region or State.
          #
          #   @return [String, nil]
          optional :region, String, nil?: true

          # @!parse
          #   # Required if receiving wire payments.
          #   #
          #   # @param country [String, nil]
          #   # @param line1 [String, nil]
          #   # @param line2 [String, nil]
          #   # @param locality [String, nil]
          #   # @param postal_code [String, nil]
          #   # @param region [String, nil]
          #   #
          #   def initialize(country: nil, line1: nil, line2: nil, locality: nil, postal_code: nil, region: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

        # @abstract
        #
        # Either `individual` or `business`.
        #
        # @example
        # ```ruby
        # case party_type
        # in :business
        #   # ...
        # in :individual
        #   # ...
        # end
        # ```
        class PartyType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # routing_detail => {
        #   routing_number: String,
        #   routing_number_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType,
        #   payment_type: ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType
        # }
        # ```
        class RoutingDetail < ModernTreasury::BaseModel
          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute routing_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType
                   }

          # @!attribute [r] payment_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType, nil]
          optional :payment_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType
                   }

          # @!parse
          #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType]
          #   attr_writer :payment_type

          # @!parse
          #   # @param routing_number [String]
          #   # @param routing_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          #   # @param payment_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType]
          #   #
          #   def initialize(routing_number:, routing_number_type:, payment_type: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case routing_number_type
          # in :aba
          #   # ...
          # in :au_bsb
          #   # ...
          # in :br_codigo
          #   # ...
          # in :ca_cpa
          #   # ...
          # in :chips
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class RoutingNumberType < ModernTreasury::Enum
            ABA = :aba
            AU_BSB = :au_bsb
            BR_CODIGO = :br_codigo
            CA_CPA = :ca_cpa
            CHIPS = :chips
            CNAPS = :cnaps
            DK_INTERBANK_CLEARING_CODE = :dk_interbank_clearing_code
            GB_SORT_CODE = :gb_sort_code
            HK_INTERBANK_CLEARING_CODE = :hk_interbank_clearing_code
            HU_INTERBANK_CLEARING_CODE = :hu_interbank_clearing_code
            ID_SKNBI_CODE = :id_sknbi_code
            IN_IFSC = :in_ifsc
            JP_ZENGIN_CODE = :jp_zengin_code
            MY_BRANCH_CODE = :my_branch_code
            MX_BANK_IDENTIFIER = :mx_bank_identifier
            NZ_NATIONAL_CLEARING_CODE = :nz_national_clearing_code
            PL_NATIONAL_CLEARING_CODE = :pl_national_clearing_code
            SE_BANKGIRO_CLEARING_CODE = :se_bankgiro_clearing_code
            SG_INTERBANK_CLEARING_CODE = :sg_interbank_clearing_code
            SWIFT = :swift
            ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # @example
          # ```ruby
          # case payment_type
          # in :ach
          #   # ...
          # in :au_becs
          #   # ...
          # in :bacs
          #   # ...
          # in :book
          #   # ...
          # in :card
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class PaymentType < ModernTreasury::Enum
            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
            PROVXCHANGE = :provxchange
            RO_SENT = :ro_sent
            RTP = :rtp
            SE_BANKGIROT = :se_bankgirot
            SEN = :sen
            SEPA = :sepa
            SG_GIRO = :sg_giro
            SIC = :sic
            SIGNET = :signet
            SKNBI = :sknbi
            WIRE = :wire
            ZENGIN = :zengin

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end

      # @abstract
      #
      # @deprecated
      #
      #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      #
      # @example
      # ```ruby
      # case ledger_type
      # in :customer
      #   # ...
      # in :vendor
      #   # ...
      # end
      # ```
      class LedgerType < ModernTreasury::Enum
        CUSTOMER = :customer
        VENDOR = :vendor

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # legal_entity => {
      #   legal_entity_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType,
      #   addresses: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address] === _1 },
      #   bank_settings: ModernTreasury::Models::BankSettings,
      #   business_name: String,
      #   citizenship_country: String,
      #   **_
      # }
      # ```
      class LegalEntity < ModernTreasury::BaseModel
        # @!attribute legal_entity_type
        #   The type of legal entity.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType]
        required :legal_entity_type,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType }

        # @!attribute [r] addresses
        #   A list of addresses for the entity.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>]
        optional :addresses,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>]
        #   attr_writer :addresses

        # @!attribute bank_settings
        #
        #   @return [ModernTreasury::Models::BankSettings, nil]
        optional :bank_settings, -> { ModernTreasury::Models::BankSettings }, nil?: true

        # @!attribute business_name
        #   The business's legal business name.
        #
        #   @return [String, nil]
        optional :business_name, String, nil?: true

        # @!attribute citizenship_country
        #   The country of citizenship for an individual.
        #
        #   @return [String, nil]
        optional :citizenship_country, String, nil?: true

        # @!attribute date_formed
        #   A business's formation date (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_formed, Date, nil?: true

        # @!attribute date_of_birth
        #   An individual's date of birth (YYYY-MM-DD).
        #
        #   @return [Date, nil]
        optional :date_of_birth, Date, nil?: true

        # @!attribute [r] doing_business_as_names
        #
        #   @return [Array<String>]
        optional :doing_business_as_names, ModernTreasury::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :doing_business_as_names

        # @!attribute email
        #   The entity's primary email.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute first_name
        #   An individual's first name.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute [r] identifications
        #   A list of identifications for the legal entity.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>]
        optional :identifications,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>]
        #   attr_writer :identifications

        # @!attribute last_name
        #   An individual's last name.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute legal_entity_associations
        #   The legal entity associations and its child legal entities.
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation>]
        optional :legal_entity_associations,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation]
                 },
                 nil?: true

        # @!attribute legal_structure
        #   The business's legal structure.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure, nil]
        optional :legal_structure,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure },
                 nil?: true

        # @!attribute [r] metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #     strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :metadata

        # @!attribute middle_name
        #   An individual's middle name.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute [r] phone_numbers
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>]
        optional :phone_numbers,
                 -> {
                   ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber]
                 }

        # @!parse
        #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>]
        #   attr_writer :phone_numbers

        # @!attribute politically_exposed_person
        #   Whether the individual is a politically exposed person.
        #
        #   @return [Boolean, nil]
        optional :politically_exposed_person, ModernTreasury::BooleanModel, nil?: true

        # @!attribute preferred_name
        #   An individual's preferred name.
        #
        #   @return [String, nil]
        optional :preferred_name, String, nil?: true

        # @!attribute prefix
        #   An individual's prefix.
        #
        #   @return [String, nil]
        optional :prefix, String, nil?: true

        # @!attribute risk_rating
        #   The risk rating of the legal entity. One of low, medium, high.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating, nil]
        optional :risk_rating,
                 enum: -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating },
                 nil?: true

        # @!attribute suffix
        #   An individual's suffix.
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!attribute wealth_and_employment_details
        #
        #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
        optional :wealth_and_employment_details,
                 -> { ModernTreasury::Models::WealthAndEmploymentDetails },
                 nil?: true

        # @!attribute website
        #   The entity's primary website URL.
        #
        #   @return [String, nil]
        optional :website, String, nil?: true

        # @!parse
        #   # @param legal_entity_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityType]
        #   # @param addresses [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address>]
        #   # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
        #   # @param business_name [String, nil]
        #   # @param citizenship_country [String, nil]
        #   # @param date_formed [Date, nil]
        #   # @param date_of_birth [Date, nil]
        #   # @param doing_business_as_names [Array<String>]
        #   # @param email [String, nil]
        #   # @param first_name [String, nil]
        #   # @param identifications [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification>]
        #   # @param last_name [String, nil]
        #   # @param legal_entity_associations [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation>]
        #   # @param legal_structure [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalStructure, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param middle_name [String, nil]
        #   # @param phone_numbers [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::PhoneNumber>]
        #   # @param politically_exposed_person [Boolean, nil]
        #   # @param preferred_name [String, nil]
        #   # @param prefix [String, nil]
        #   # @param risk_rating [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::RiskRating, nil]
        #   # @param suffix [String, nil]
        #   # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
        #   # @param website [String, nil]
        #   #
        #   def initialize(
        #     legal_entity_type:,
        #     addresses: nil,
        #     bank_settings: nil,
        #     business_name: nil,
        #     citizenship_country: nil,
        #     date_formed: nil,
        #     date_of_birth: nil,
        #     doing_business_as_names: nil,
        #     email: nil,
        #     first_name: nil,
        #     identifications: nil,
        #     last_name: nil,
        #     legal_entity_associations: nil,
        #     legal_structure: nil,
        #     metadata: nil,
        #     middle_name: nil,
        #     phone_numbers: nil,
        #     politically_exposed_person: nil,
        #     preferred_name: nil,
        #     prefix: nil,
        #     risk_rating: nil,
        #     suffix: nil,
        #     wealth_and_employment_details: nil,
        #     website: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # The type of legal entity.
        #
        # @example
        # ```ruby
        # case legal_entity_type
        # in :business
        #   # ...
        # in :individual
        #   # ...
        # end
        # ```
        class LegalEntityType < ModernTreasury::Enum
          BUSINESS = :business
          INDIVIDUAL = :individual

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # address => {
        #   country: String,
        #   line1: String,
        #   locality: String,
        #   postal_code: String,
        #   region: String,
        #   **_
        # }
        # ```
        class Address < ModernTreasury::BaseModel
          # @!attribute country
          #   Country code conforms to [ISO 3166-1 alpha-2]
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute locality
          #   Locality or City.
          #
          #   @return [String, nil]
          required :locality, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute region
          #   Region or State.
          #
          #   @return [String, nil]
          required :region, String, nil?: true

          # @!attribute [r] address_types
          #   The types of this address.
          #
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>]
          optional :address_types,
                   -> {
                     ModernTreasury::ArrayOf[enum: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType]
                   }

          # @!parse
          #   # @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>]
          #   attr_writer :address_types

          # @!attribute line2
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!parse
          #   # @param country [String, nil]
          #   # @param line1 [String, nil]
          #   # @param locality [String, nil]
          #   # @param postal_code [String, nil]
          #   # @param region [String, nil]
          #   # @param address_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Address::AddressType>]
          #   # @param line2 [String, nil]
          #   #
          #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case address_type
          # in :business
          #   # ...
          # in :mailing
          #   # ...
          # in :other
          #   # ...
          # in :po_box
          #   # ...
          # in :residential
          #   # ...
          # end
          # ```
          class AddressType < ModernTreasury::Enum
            BUSINESS = :business
            MAILING = :mailing
            OTHER = :other
            PO_BOX = :po_box
            RESIDENTIAL = :residential

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # identification => {
        #   id_number: String,
        #   id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType,
        #   issuing_country: String
        # }
        # ```
        class Identification < ModernTreasury::BaseModel
          # @!attribute id_number
          #   The ID number of identification document.
          #
          #   @return [String]
          required :id_number, String

          # @!attribute id_type
          #   The type of ID number.
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType]
          required :id_type,
                   enum: -> {
                     ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType
                   }

          # @!attribute issuing_country
          #   The ISO 3166-1 alpha-2 country code of the country that issued the
          #     identification
          #
          #   @return [String, nil]
          optional :issuing_country, String, nil?: true

          # @!parse
          #   # @param id_number [String]
          #   # @param id_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::Identification::IDType]
          #   # @param issuing_country [String, nil]
          #   #
          #   def initialize(id_number:, id_type:, issuing_country: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # The type of ID number.
          #
          # @example
          # ```ruby
          # case id_type
          # in :ar_cuil
          #   # ...
          # in :ar_cuit
          #   # ...
          # in :br_cnpj
          #   # ...
          # in :br_cpf
          #   # ...
          # in :cl_run
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class IDType < ModernTreasury::Enum
            AR_CUIL = :ar_cuil
            AR_CUIT = :ar_cuit
            BR_CNPJ = :br_cnpj
            BR_CPF = :br_cpf
            CL_RUN = :cl_run
            CL_RUT = :cl_rut
            CO_CEDULAS = :co_cedulas
            CO_NIT = :co_nit
            HN_ID = :hn_id
            HN_RTN = :hn_rtn
            IN_LEI = :in_lei
            KR_BRN = :kr_brn
            KR_CRN = :kr_crn
            KR_RRN = :kr_rrn
            PASSPORT = :passport
            SA_TIN = :sa_tin
            SA_VAT = :sa_vat
            US_EIN = :us_ein
            US_ITIN = :us_itin
            US_SSN = :us_ssn
            VN_TIN = :vn_tin

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # legal_entity_association => {
        #   relationship_types: -> { ModernTreasury::ArrayOf[enum: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType] === _1 },
        #   child_legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity,
        #   child_legal_entity_id: String,
        #   ownership_percentage: Integer,
        #   title: String
        # }
        # ```
        class LegalEntityAssociation < ModernTreasury::BaseModel
          # @!attribute relationship_types
          #
          #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          required :relationship_types,
                   -> {
                     ModernTreasury::ArrayOf[enum: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType]
                   }

          # @!attribute [r] child_legal_entity
          #   The child legal entity.
          #
          #   @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity, nil]
          optional :child_legal_entity,
                   -> { ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity }

          # @!parse
          #   # @return [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity]
          #   attr_writer :child_legal_entity

          # @!attribute [r] child_legal_entity_id
          #   The ID of the child legal entity.
          #
          #   @return [String, nil]
          optional :child_legal_entity_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :child_legal_entity_id

          # @!attribute ownership_percentage
          #   The child entity's ownership percentage iff they are a beneficial owner.
          #
          #   @return [Integer, nil]
          optional :ownership_percentage, Integer, nil?: true

          # @!attribute title
          #   The job title of the child entity at the parent entity.
          #
          #   @return [String, nil]
          optional :title, String, nil?: true

          # @!parse
          #   # @param relationship_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::RelationshipType>]
          #   # @param child_legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity]
          #   # @param child_legal_entity_id [String]
          #   # @param ownership_percentage [Integer, nil]
          #   # @param title [String, nil]
          #   #
          #   def initialize(
          #     relationship_types:,
          #     child_legal_entity: nil,
          #     child_legal_entity_id: nil,
          #     ownership_percentage: nil,
          #     title: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void

          # @abstract
          #
          # A list of relationship types for how the child entity relates to parent entity.
          #
          # @example
          # ```ruby
          # case relationship_type
          # in :beneficial_owner
          #   # ...
          # in :control_person
          #   # ...
          # end
          # ```
          class RelationshipType < ModernTreasury::Enum
            BENEFICIAL_OWNER = :beneficial_owner
            CONTROL_PERSON = :control_person

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @example
          # ```ruby
          # child_legal_entity => {
          #   addresses: -> { ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address] === _1 },
          #   bank_settings: ModernTreasury::Models::BankSettings,
          #   business_name: String,
          #   citizenship_country: String,
          #   date_formed: Date,
          #   **_
          # }
          # ```
          class ChildLegalEntity < ModernTreasury::BaseModel
            # @!attribute [r] addresses
            #   A list of addresses for the entity.
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>]
            optional :addresses,
                     -> {
                       ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address]
                     }

            # @!parse
            #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>]
            #   attr_writer :addresses

            # @!attribute bank_settings
            #
            #   @return [ModernTreasury::Models::BankSettings, nil]
            optional :bank_settings, -> { ModernTreasury::Models::BankSettings }, nil?: true

            # @!attribute business_name
            #   The business's legal business name.
            #
            #   @return [String, nil]
            optional :business_name, String, nil?: true

            # @!attribute citizenship_country
            #   The country of citizenship for an individual.
            #
            #   @return [String, nil]
            optional :citizenship_country, String, nil?: true

            # @!attribute date_formed
            #   A business's formation date (YYYY-MM-DD).
            #
            #   @return [Date, nil]
            optional :date_formed, Date, nil?: true

            # @!attribute date_of_birth
            #   An individual's date of birth (YYYY-MM-DD).
            #
            #   @return [Date, nil]
            optional :date_of_birth, Date, nil?: true

            # @!attribute [r] doing_business_as_names
            #
            #   @return [Array<String>]
            optional :doing_business_as_names, ModernTreasury::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :doing_business_as_names

            # @!attribute email
            #   The entity's primary email.
            #
            #   @return [String, nil]
            optional :email, String, nil?: true

            # @!attribute first_name
            #   An individual's first name.
            #
            #   @return [String, nil]
            optional :first_name, String, nil?: true

            # @!attribute [r] identifications
            #   A list of identifications for the legal entity.
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>]
            optional :identifications,
                     -> {
                       ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification]
                     }

            # @!parse
            #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>]
            #   attr_writer :identifications

            # @!attribute last_name
            #   An individual's last name.
            #
            #   @return [String, nil]
            optional :last_name, String, nil?: true

            # @!attribute [r] legal_entity_type
            #   The type of legal entity.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType, nil]
            optional :legal_entity_type,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType
                     }

            # @!parse
            #   # @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
            #   attr_writer :legal_entity_type

            # @!attribute legal_structure
            #   The business's legal structure.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure, nil]
            optional :legal_structure,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure
                     },
                     nil?: true

            # @!attribute [r] metadata
            #   Additional data represented as key-value pairs. Both the key and value must be
            #     strings.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, ModernTreasury::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :metadata

            # @!attribute middle_name
            #   An individual's middle name.
            #
            #   @return [String, nil]
            optional :middle_name, String, nil?: true

            # @!attribute [r] phone_numbers
            #
            #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            optional :phone_numbers,
                     -> {
                       ModernTreasury::ArrayOf[ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber]
                     }

            # @!parse
            #   # @return [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            #   attr_writer :phone_numbers

            # @!attribute politically_exposed_person
            #   Whether the individual is a politically exposed person.
            #
            #   @return [Boolean, nil]
            optional :politically_exposed_person, ModernTreasury::BooleanModel, nil?: true

            # @!attribute preferred_name
            #   An individual's preferred name.
            #
            #   @return [String, nil]
            optional :preferred_name, String, nil?: true

            # @!attribute prefix
            #   An individual's prefix.
            #
            #   @return [String, nil]
            optional :prefix, String, nil?: true

            # @!attribute risk_rating
            #   The risk rating of the legal entity. One of low, medium, high.
            #
            #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating, nil]
            optional :risk_rating,
                     enum: -> {
                       ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating
                     },
                     nil?: true

            # @!attribute suffix
            #   An individual's suffix.
            #
            #   @return [String, nil]
            optional :suffix, String, nil?: true

            # @!attribute wealth_and_employment_details
            #
            #   @return [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
            optional :wealth_and_employment_details,
                     -> { ModernTreasury::Models::WealthAndEmploymentDetails },
                     nil?: true

            # @!attribute website
            #   The entity's primary website URL.
            #
            #   @return [String, nil]
            optional :website, String, nil?: true

            # @!parse
            #   # The child legal entity.
            #   #
            #   # @param addresses [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address>]
            #   # @param bank_settings [ModernTreasury::Models::BankSettings, nil]
            #   # @param business_name [String, nil]
            #   # @param citizenship_country [String, nil]
            #   # @param date_formed [Date, nil]
            #   # @param date_of_birth [Date, nil]
            #   # @param doing_business_as_names [Array<String>]
            #   # @param email [String, nil]
            #   # @param first_name [String, nil]
            #   # @param identifications [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification>]
            #   # @param last_name [String, nil]
            #   # @param legal_entity_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalEntityType]
            #   # @param legal_structure [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::LegalStructure, nil]
            #   # @param metadata [Hash{Symbol=>String}]
            #   # @param middle_name [String, nil]
            #   # @param phone_numbers [Array<ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::PhoneNumber>]
            #   # @param politically_exposed_person [Boolean, nil]
            #   # @param preferred_name [String, nil]
            #   # @param prefix [String, nil]
            #   # @param risk_rating [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::RiskRating, nil]
            #   # @param suffix [String, nil]
            #   # @param wealth_and_employment_details [ModernTreasury::Models::WealthAndEmploymentDetails, nil]
            #   # @param website [String, nil]
            #   #
            #   def initialize(
            #     addresses: nil,
            #     bank_settings: nil,
            #     business_name: nil,
            #     citizenship_country: nil,
            #     date_formed: nil,
            #     date_of_birth: nil,
            #     doing_business_as_names: nil,
            #     email: nil,
            #     first_name: nil,
            #     identifications: nil,
            #     last_name: nil,
            #     legal_entity_type: nil,
            #     legal_structure: nil,
            #     metadata: nil,
            #     middle_name: nil,
            #     phone_numbers: nil,
            #     politically_exposed_person: nil,
            #     preferred_name: nil,
            #     prefix: nil,
            #     risk_rating: nil,
            #     suffix: nil,
            #     wealth_and_employment_details: nil,
            #     website: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | ModernTreasury::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   country: String,
            #   line1: String,
            #   locality: String,
            #   postal_code: String,
            #   region: String,
            #   **_
            # }
            # ```
            class Address < ModernTreasury::BaseModel
              # @!attribute country
              #   Country code conforms to [ISO 3166-1 alpha-2]
              #
              #   @return [String, nil]
              required :country, String, nil?: true

              # @!attribute line1
              #
              #   @return [String, nil]
              required :line1, String, nil?: true

              # @!attribute locality
              #   Locality or City.
              #
              #   @return [String, nil]
              required :locality, String, nil?: true

              # @!attribute postal_code
              #   The postal code of the address.
              #
              #   @return [String, nil]
              required :postal_code, String, nil?: true

              # @!attribute region
              #   Region or State.
              #
              #   @return [String, nil]
              required :region, String, nil?: true

              # @!attribute [r] address_types
              #   The types of this address.
              #
              #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
              optional :address_types,
                       -> {
                         ModernTreasury::ArrayOf[enum: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType]
                       }

              # @!parse
              #   # @return [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
              #   attr_writer :address_types

              # @!attribute line2
              #
              #   @return [String, nil]
              optional :line2, String, nil?: true

              # @!parse
              #   # @param country [String, nil]
              #   # @param line1 [String, nil]
              #   # @param locality [String, nil]
              #   # @param postal_code [String, nil]
              #   # @param region [String, nil]
              #   # @param address_types [Array<Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Address::AddressType>]
              #   # @param line2 [String, nil]
              #   #
              #   def initialize(country:, line1:, locality:, postal_code:, region:, address_types: nil, line2: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case address_type
              # in :business
              #   # ...
              # in :mailing
              #   # ...
              # in :other
              #   # ...
              # in :po_box
              #   # ...
              # in :residential
              #   # ...
              # end
              # ```
              class AddressType < ModernTreasury::Enum
                BUSINESS = :business
                MAILING = :mailing
                OTHER = :other
                PO_BOX = :po_box
                RESIDENTIAL = :residential

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            # @example
            # ```ruby
            # identification => {
            #   id_number: String,
            #   id_type: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType,
            #   issuing_country: String
            # }
            # ```
            class Identification < ModernTreasury::BaseModel
              # @!attribute id_number
              #   The ID number of identification document.
              #
              #   @return [String]
              required :id_number, String

              # @!attribute id_type
              #   The type of ID number.
              #
              #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
              required :id_type,
                       enum: -> {
                         ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType
                       }

              # @!attribute issuing_country
              #   The ISO 3166-1 alpha-2 country code of the country that issued the
              #     identification
              #
              #   @return [String, nil]
              optional :issuing_country, String, nil?: true

              # @!parse
              #   # @param id_number [String]
              #   # @param id_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LegalEntity::LegalEntityAssociation::ChildLegalEntity::Identification::IDType]
              #   # @param issuing_country [String, nil]
              #   #
              #   def initialize(id_number:, id_type:, issuing_country: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void

              # @abstract
              #
              # The type of ID number.
              #
              # @example
              # ```ruby
              # case id_type
              # in :ar_cuil
              #   # ...
              # in :ar_cuit
              #   # ...
              # in :br_cnpj
              #   # ...
              # in :br_cpf
              #   # ...
              # in :cl_run
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class IDType < ModernTreasury::Enum
                AR_CUIL = :ar_cuil
                AR_CUIT = :ar_cuit
                BR_CNPJ = :br_cnpj
                BR_CPF = :br_cpf
                CL_RUN = :cl_run
                CL_RUT = :cl_rut
                CO_CEDULAS = :co_cedulas
                CO_NIT = :co_nit
                HN_ID = :hn_id
                HN_RTN = :hn_rtn
                IN_LEI = :in_lei
                KR_BRN = :kr_brn
                KR_CRN = :kr_crn
                KR_RRN = :kr_rrn
                PASSPORT = :passport
                SA_TIN = :sa_tin
                SA_VAT = :sa_vat
                US_EIN = :us_ein
                US_ITIN = :us_itin
                US_SSN = :us_ssn
                VN_TIN = :vn_tin

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            # @abstract
            #
            # The type of legal entity.
            #
            # @example
            # ```ruby
            # case legal_entity_type
            # in :business
            #   # ...
            # in :individual
            #   # ...
            # end
            # ```
            class LegalEntityType < ModernTreasury::Enum
              BUSINESS = :business
              INDIVIDUAL = :individual

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # The business's legal structure.
            #
            # @example
            # ```ruby
            # case legal_structure
            # in :corporation
            #   # ...
            # in :llc
            #   # ...
            # in :non_profit
            #   # ...
            # in :partnership
            #   # ...
            # in :sole_proprietorship
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class LegalStructure < ModernTreasury::Enum
              CORPORATION = :corporation
              LLC = :llc
              NON_PROFIT = :non_profit
              PARTNERSHIP = :partnership
              SOLE_PROPRIETORSHIP = :sole_proprietorship
              TRUST = :trust

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @example
            # ```ruby
            # phone_number => {
            #   phone_number: String
            # }
            # ```
            class PhoneNumber < ModernTreasury::BaseModel
              # @!attribute [r] phone_number
              #
              #   @return [String, nil]
              optional :phone_number, String

              # @!parse
              #   # @return [String]
              #   attr_writer :phone_number

              # @!parse
              #   # A list of phone numbers in E.164 format.
              #   #
              #   # @param phone_number [String]
              #   #
              #   def initialize(phone_number: nil, **) = super

              # def initialize: (Hash | ModernTreasury::BaseModel) -> void
            end

            # @abstract
            #
            # The risk rating of the legal entity. One of low, medium, high.
            #
            # @example
            # ```ruby
            # case risk_rating
            # in :low
            #   # ...
            # in :medium
            #   # ...
            # in :high
            #   # ...
            # end
            # ```
            class RiskRating < ModernTreasury::Enum
              LOW = :low
              MEDIUM = :medium
              HIGH = :high

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        # @abstract
        #
        # The business's legal structure.
        #
        # @example
        # ```ruby
        # case legal_structure
        # in :corporation
        #   # ...
        # in :llc
        #   # ...
        # in :non_profit
        #   # ...
        # in :partnership
        #   # ...
        # in :sole_proprietorship
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class LegalStructure < ModernTreasury::Enum
          CORPORATION = :corporation
          LLC = :llc
          NON_PROFIT = :non_profit
          PARTNERSHIP = :partnership
          SOLE_PROPRIETORSHIP = :sole_proprietorship
          TRUST = :trust

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # phone_number => {
        #   phone_number: String
        # }
        # ```
        class PhoneNumber < ModernTreasury::BaseModel
          # @!attribute [r] phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phone_number

          # @!parse
          #   # A list of phone numbers in E.164 format.
          #   #
          #   # @param phone_number [String]
          #   #
          #   def initialize(phone_number: nil, **) = super

          # def initialize: (Hash | ModernTreasury::BaseModel) -> void
        end

        # @abstract
        #
        # The risk rating of the legal entity. One of low, medium, high.
        #
        # @example
        # ```ruby
        # case risk_rating
        # in :low
        #   # ...
        # in :medium
        #   # ...
        # in :high
        #   # ...
        # end
        # ```
        class RiskRating < ModernTreasury::Enum
          LOW = :low
          MEDIUM = :medium
          HIGH = :high

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @abstract
      #
      # The verification status of the counterparty.
      #
      # @example
      # ```ruby
      # case verification_status
      # in :denied
      #   # ...
      # in :needs_approval
      #   # ...
      # in :unverified
      #   # ...
      # in :verified
      #   # ...
      # end
      # ```
      class VerificationStatus < ModernTreasury::Enum
        DENIED = :denied
        NEEDS_APPROVAL = :needs_approval
        UNVERIFIED = :unverified
        VERIFIED = :verified

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
