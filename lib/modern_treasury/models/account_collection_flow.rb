# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlow < BaseModel
      # @!attribute [rw] counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be associated with this counterparty.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] payment_types
      #   @return [Array<Symbol>]
      required :payment_types,
               ModernTreasury::ArrayOf.new(
                 enum: lambda {
                   ModernTreasury::Models::AccountCollectionFlow::PaymentType
                 }
               )

      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] client_token
      #   The client token of the account collection flow.  This token can be used to embed account collection in your client-side application.
      #   @return [String]
      optional :client_token, String

      # @!attribute [rw] created_at
      #   @return [DateTime]
      optional :created_at, DateTime

      # @!attribute [rw] external_account_id
      #   If present, the ID of the external account created using this flow.
      #   @return [String]
      optional :external_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      optional :object, String

      # @!attribute [rw] receiving_countries
      #   @return [Array<Symbol>]
      optional :receiving_countries,
               ModernTreasury::ArrayOf.new(
                 enum: lambda {
                   ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry
                 }
               )

      # @!attribute [rw] status
      #   The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #   One of the constants defined in {ModernTreasury::Models::AccountCollectionFlow::Status}
      #   @return [Symbol]
      optional :status, enum: -> { ModernTreasury::Models::AccountCollectionFlow::Status }

      # @!attribute [rw] updated_at
      #   @return [DateTime]
      optional :updated_at, DateTime

      # An account created with this flow will support payments of one of these types.
      class PaymentType < ModernTreasury::Enum
        ACH = :ach
        WIRE = :wire
      end

      # An account created with this flow will support wires from the US to these countries.
      class ReceivingCountry < ModernTreasury::Enum
        USA = :USA
        AUS = :AUS
        BEL = :BEL
        CAN = :CAN
        CHL = :CHL
        CHN = :CHN
        COL = :COL
        FRA = :FRA
        DEU = :DEU
        HKG = :HKG
        IND = :IND
        IRL = :IRL
        ITA = :ITA
        MEX = :MEX
        NLD = :NLD
        PER = :PER
        ESP = :ESP
        GBR = :GBR
      end

      # The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      class Status < ModernTreasury::Enum
        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending
      end
    end
  end
end
