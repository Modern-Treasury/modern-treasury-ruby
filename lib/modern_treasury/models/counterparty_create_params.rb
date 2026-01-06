# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#create
    class CounterpartyCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute name
      #   A human friendly name for this counterparty.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute accounting
      #   @deprecated
      #
      #   @return [ModernTreasury::Models::CounterpartyCreateParams::Accounting, nil]
      optional :accounting, -> { ModernTreasury::CounterpartyCreateParams::Accounting }

      # @!attribute accounts
      #   The accounts for this counterparty.
      #
      #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>, nil]
      optional :accounts,
               -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account] }

      # @!attribute email
      #   The counterparty's email.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute external_id
      #   An optional user-defined 180 character unique identifier.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute ledger_type
      #   @deprecated
      #
      #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      #
      #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType, nil]
      optional :ledger_type, enum: -> { ModernTreasury::CounterpartyCreateParams::LedgerType }

      # @!attribute legal_entity
      #
      #   @return [ModernTreasury::Models::LegalEntityCreate, nil]
      optional :legal_entity, -> { ModernTreasury::LegalEntityCreate }

      # @!attribute legal_entity_id
      #   The id of the legal entity.
      #
      #   @return [String, nil]
      optional :legal_entity_id, String, nil?: true

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute send_remittance_advice
      #   Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      #
      #   @return [Boolean, nil]
      optional :send_remittance_advice, ModernTreasury::Internal::Type::Boolean

      # @!attribute taxpayer_identifier
      #   Either a valid SSN or EIN.
      #
      #   @return [String, nil]
      optional :taxpayer_identifier, String

      # @!attribute verification_status
      #   @deprecated
      #
      #   The verification status of the counterparty.
      #
      #   @return [String, nil]
      optional :verification_status, String

      # @!method initialize(name:, accounting: nil, accounts: nil, email: nil, external_id: nil, ledger_type: nil, legal_entity: nil, legal_entity_id: nil, metadata: nil, send_remittance_advice: nil, taxpayer_identifier: nil, verification_status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::CounterpartyCreateParams} for more details.
      #
      #   @param name [String, nil] A human friendly name for this counterparty.
      #
      #   @param accounting [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      #
      #   @param accounts [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>] The accounts for this counterparty.
      #
      #   @param email [String, nil] The counterparty's email.
      #
      #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      #   @param ledger_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType] An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #
      #   @param legal_entity [ModernTreasury::Models::LegalEntityCreate]
      #
      #   @param legal_entity_id [String, nil] The id of the legal entity.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param send_remittance_advice [Boolean] Send an email to the counterparty whenever an associated payment order is sent t
      #
      #   @param taxpayer_identifier [String] Either a valid SSN or EIN.
      #
      #   @param verification_status [String] The verification status of the counterparty.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      # @deprecated
      class Accounting < ModernTreasury::Internal::Type::BaseModel
        # @!attribute type
        #   An optional type to auto-sync the counterparty to your ledger. Either `customer`
        #   or `vendor`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type, nil]
        optional :type, enum: -> { ModernTreasury::CounterpartyCreateParams::Accounting::Type }

        # @!method initialize(type: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::CounterpartyCreateParams::Accounting} for more details.
        #
        #   @param type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Accounting::Type] An optional type to auto-sync the counterparty to your ledger. Either `customer`

        # An optional type to auto-sync the counterparty to your ledger. Either `customer`
        # or `vendor`.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::Accounting#type
        module Type
          extend ModernTreasury::Internal::Type::Enum

          CUSTOMER = :customer
          VENDOR = :vendor

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Account < ModernTreasury::Internal::Type::BaseModel
        # @!attribute account_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>, nil]
        optional :account_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account::AccountDetail] }

        # @!attribute account_type
        #   Can be `checking`, `savings` or `other`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountType, nil]
        optional :account_type, enum: -> { ModernTreasury::ExternalAccountType }

        # @!attribute contact_details
        #
        #   @return [Array<ModernTreasury::Models::ContactDetailCreateRequest>, nil]
        optional :contact_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::ContactDetailCreateRequest] }

        # @!attribute external_id
        #   An optional user-defined 180 character unique identifier.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute ledger_account
        #   Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        #
        #   @return [ModernTreasury::Models::LedgerAccountCreateRequest, nil]
        optional :ledger_account, -> { ModernTreasury::LedgerAccountCreateRequest }

        # @!attribute metadata
        #   Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, ModernTreasury::Internal::Type::HashOf[String]

        # @!attribute name
        #   A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute party_address
        #   Required if receiving wire payments.
        #
        #   @return [ModernTreasury::Models::AddressRequest, nil]
        optional :party_address, -> { ModernTreasury::AddressRequest }

        # @!attribute party_identifier
        #
        #   @return [String, nil]
        optional :party_identifier, String

        # @!attribute party_name
        #   If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @return [String, nil]
        optional :party_name, String

        # @!attribute party_type
        #   Either `individual` or `business`.
        #
        #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil]
        optional :party_type,
                 enum: -> { ModernTreasury::CounterpartyCreateParams::Account::PartyType },
                 nil?: true

        # @!attribute plaid_processor_token
        #   If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        #
        #   @return [String, nil]
        optional :plaid_processor_token, String

        # @!attribute routing_details
        #
        #   @return [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>, nil]
        optional :routing_details,
                 -> { ModernTreasury::Internal::Type::ArrayOf[ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail] }

        # @!method initialize(account_details: nil, account_type: nil, contact_details: nil, external_id: nil, ledger_account: nil, metadata: nil, name: nil, party_address: nil, party_identifier: nil, party_name: nil, party_type: nil, plaid_processor_token: nil, routing_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::CounterpartyCreateParams::Account} for more details.
        #
        #   @param account_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail>]
        #
        #   @param account_type [Symbol, ModernTreasury::Models::ExternalAccountType] Can be `checking`, `savings` or `other`.
        #
        #   @param contact_details [Array<ModernTreasury::Models::ContactDetailCreateRequest>]
        #
        #   @param external_id [String, nil] An optional user-defined 180 character unique identifier.
        #
        #   @param ledger_account [ModernTreasury::Models::LedgerAccountCreateRequest] Specifies a ledger account object that will be created with the external account
        #
        #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
        #
        #   @param name [String, nil] A nickname for the external account. This is only for internal usage and won't a
        #
        #   @param party_address [ModernTreasury::Models::AddressRequest] Required if receiving wire payments.
        #
        #   @param party_identifier [String]
        #
        #   @param party_name [String] If this value isn't provided, it will be inherited from the counterparty's name.
        #
        #   @param party_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::PartyType, nil] Either `individual` or `business`.
        #
        #   @param plaid_processor_token [String] If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #
        #   @param routing_details [Array<ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail>]

        class AccountDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType, nil]
          optional :account_number_type,
                   enum: -> { ModernTreasury::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType }

          # @!method initialize(account_number:, account_number_type: nil)
          #   @param account_number [String]
          #   @param account_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail::AccountNumberType]

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::AccountDetail#account_number_type
          module AccountNumberType
            extend ModernTreasury::Internal::Type::Enum

            AU_NUMBER = :au_number
            BASE_ADDRESS = :base_address
            CLABE = :clabe
            ETHEREUM_ADDRESS = :ethereum_address
            HK_NUMBER = :hk_number
            IBAN = :iban
            ID_NUMBER = :id_number
            NZ_NUMBER = :nz_number
            OTHER = :other
            PAN = :pan
            POLYGON_ADDRESS = :polygon_address
            SG_NUMBER = :sg_number
            SOLANA_ADDRESS = :solana_address
            WALLET_ADDRESS = :wallet_address

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Either `individual` or `business`.
        #
        # @see ModernTreasury::Models::CounterpartyCreateParams::Account#party_type
        module PartyType
          extend ModernTreasury::Internal::Type::Enum

          BUSINESS = :business
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RoutingDetail < ModernTreasury::Internal::Type::BaseModel
          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute routing_number_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          required :routing_number_type,
                   enum: -> { ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType }

          # @!attribute payment_type
          #
          #   @return [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType, nil]
          optional :payment_type,
                   enum: -> { ModernTreasury::CounterpartyCreateParams::Account::RoutingDetail::PaymentType }

          # @!method initialize(routing_number:, routing_number_type:, payment_type: nil)
          #   @param routing_number [String]
          #   @param routing_number_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::RoutingNumberType]
          #   @param payment_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail::PaymentType]

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail#routing_number_type
          module RoutingNumberType
            extend ModernTreasury::Internal::Type::Enum

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
            IL_BANK_CODE = :il_bank_code
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

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see ModernTreasury::Models::CounterpartyCreateParams::Account::RoutingDetail#payment_type
          module PaymentType
            extend ModernTreasury::Internal::Type::Enum

            ACH = :ach
            AU_BECS = :au_becs
            BACS = :bacs
            BASE = :base
            BOOK = :book
            CARD = :card
            CHATS = :chats
            CHECK = :check
            CROSS_BORDER = :cross_border
            DK_NETS = :dk_nets
            EFT = :eft
            ETHEREUM = :ethereum
            GB_FPS = :gb_fps
            HU_ICS = :hu_ics
            INTERAC = :interac
            MASAV = :masav
            MX_CCEN = :mx_ccen
            NEFT = :neft
            NICS = :nics
            NZ_BECS = :nz_becs
            PL_ELIXIR = :pl_elixir
            POLYGON = :polygon
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
            SOLANA = :solana
            WIRE = :wire
            ZENGIN = :zengin

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @deprecated
      #
      # An optional type to auto-sync the counterparty to your ledger. Either `customer`
      # or `vendor`.
      module LedgerType
        extend ModernTreasury::Internal::Type::Enum

        CUSTOMER = :customer
        VENDOR = :vendor

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
