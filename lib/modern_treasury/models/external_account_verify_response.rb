# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ExternalAccounts#verify
    module ExternalAccountVerifyResponse
      extend ModernTreasury::Internal::Type::Union

      variant -> { ModernTreasury::ExternalAccount }

      variant -> { ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt }

      class ExternalAccountVerificationAttempt < ModernTreasury::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute external_account_id
        #   The ID of the external account.
        #
        #   @return [String]
        required :external_account_id, String

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

        # @!attribute originating_account_id
        #   The ID of the internal account where the micro-deposits originate from.
        #
        #   @return [String]
        required :originating_account_id, String

        # @!attribute payment_type
        #   The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType]
        required :payment_type,
                 enum: -> { ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType }

        # @!attribute priority
        #   The priority of the payment. Can be `normal` or `high`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority, nil]
        required :priority,
                 enum: -> { ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority },
                 nil?: true

        # @!attribute status
        #   The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status]
        required :status,
                 enum: -> { ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, external_account_id:, live_mode:, object:, originating_account_id:, payment_type:, priority:, status:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param external_account_id [String] The ID of the external account.
        #
        #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
        #
        #   @param object [String]
        #
        #   @param originating_account_id [String] The ID of the internal account where the micro-deposits originate from.
        #
        #   @param payment_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType] The type of payment that can be made to this account. Can be `ach`, `eft`, or `r
        #
        #   @param priority [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority, nil] The priority of the payment. Can be `normal` or `high`.
        #
        #   @param status [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status] The status of the verification attempt. Can be `pending_verification`, `verified
        #
        #   @param updated_at [Time]

        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        # `rtp`.
        #
        # @see ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt#payment_type
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

        # The priority of the payment. Can be `normal` or `high`.
        #
        # @see ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt#priority
        module Priority
          extend ModernTreasury::Internal::Type::Enum

          HIGH = :high
          NORMAL = :normal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the verification attempt. Can be `pending_verification`,
        # `verified`, `failed`, or `cancelled`.
        #
        # @see ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt#status
        module Status
          extend ModernTreasury::Internal::Type::Enum

          CANCELLED = :cancelled
          FAILED = :failed
          PENDING_VERIFICATION = :pending_verification
          VERIFIED = :verified

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(ModernTreasury::Models::ExternalAccount, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt)]
    end
  end
end
