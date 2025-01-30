# frozen_string_literal: true

module ModernTreasury
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case external_account_verify_response
    # in ModernTreasury::Models::ExternalAccount
    #   # ...
    # in ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
    #   # ...
    # end
    # ```
    class ExternalAccountVerifyResponse < ModernTreasury::Union
      variant -> { ModernTreasury::Models::ExternalAccount }

      variant -> { ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt }

      # @example
      # ```ruby
      # external_account_verification_attempt => {
      #   id: String,
      #   created_at: Time,
      #   external_account_id: String,
      #   live_mode: ModernTreasury::BooleanModel,
      #   object: String,
      #   **_
      # }
      # ```
      class ExternalAccountVerificationAttempt < ModernTreasury::BaseModel
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
        #     if it exists in the test environment.
        #
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

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
        #     `rtp`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType]
        required :payment_type,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType
                 }

        # @!attribute priority
        #   The priority of the payment. Can be `normal` or `high`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority, nil]
        required :priority,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority
                 },
                 nil?: true

        # @!attribute status
        #   The status of the verification attempt. Can be `pending_verification`,
        #     `verified`, `failed`, or `cancelled`.
        #
        #   @return [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status]
        required :status,
                 enum: -> {
                   ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status
                 }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param created_at [Time]
        #   # @param external_account_id [String]
        #   # @param live_mode [Boolean]
        #   # @param object [String]
        #   # @param originating_account_id [String]
        #   # @param payment_type [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::PaymentType]
        #   # @param priority [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Priority, nil]
        #   # @param status [Symbol, ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt::Status]
        #   # @param updated_at [Time]
        #   #
        #   def initialize(
        #     id:,
        #     created_at:,
        #     external_account_id:,
        #     live_mode:,
        #     object:,
        #     originating_account_id:,
        #     payment_type:,
        #     priority:,
        #     status:,
        #     updated_at:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void

        # @abstract
        #
        # The type of payment that can be made to this account. Can be `ach`, `eft`, or
        #   `rtp`.
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

        # @abstract
        #
        # The priority of the payment. Can be `normal` or `high`.
        #
        # @example
        # ```ruby
        # case priority
        # in :high
        #   # ...
        # in :normal
        #   # ...
        # end
        # ```
        class Priority < ModernTreasury::Enum
          HIGH = :high
          NORMAL = :normal

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # The status of the verification attempt. Can be `pending_verification`,
        #   `verified`, `failed`, or `cancelled`.
        #
        # @example
        # ```ruby
        # case status
        # in :cancelled
        #   # ...
        # in :failed
        #   # ...
        # in :pending_verification
        #   # ...
        # in :verified
        #   # ...
        # end
        # ```
        class Status < ModernTreasury::Enum
          CANCELLED = :cancelled
          FAILED = :failed
          PENDING_VERIFICATION = :pending_verification
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
end
