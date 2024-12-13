# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be associated with this counterparty.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      required :payment_types,
               ModernTreasury::ArrayOf.new(
                 enum: -> {
                   ModernTreasury::Models::AccountCollectionFlow::PaymentType
                 }
               )

      # @!attribute id
      #   @return [String]
      optional :id, String

      # @!attribute client_token
      #   The client token of the account collection flow.  This token can be used to embed account collection in your client-side application.
      #   @return [String]
      optional :client_token, String

      # @!attribute created_at
      #   @return [Time]
      optional :created_at, Time

      # @!attribute external_account_id
      #   If present, the ID of the external account created using this flow.
      #   @return [String]
      optional :external_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      optional :object, String

      # @!attribute receiving_countries
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      optional :receiving_countries,
               ModernTreasury::ArrayOf.new(
                 enum: -> {
                   ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry
                 }
               )

      # @!attribute status
      #   The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status]
      optional :status, enum: -> { ModernTreasury::Models::AccountCollectionFlow::Status }

      # @!attribute updated_at
      #   @return [Time]
      optional :updated_at, Time

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

      # @!parse
      #   # Create a new instance of AccountCollectionFlow from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :counterparty_id The ID of a counterparty. An external account created with this flow will be
      #   #     associated with this counterparty.
      #   #   @option data [Array<String>] :payment_types
      #   #   @option data [String, nil] :id
      #   #   @option data [String, nil] :client_token The client token of the account collection flow. This token can be used to embed
      #   #     account collection in your client-side application.
      #   #   @option data [String, nil] :created_at
      #   #   @option data [String, nil] :external_account_id If present, the ID of the external account created using this flow.
      #   #   @option data [Hash, nil] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String, nil] :object
      #   #   @option data [Array<String>, nil] :receiving_countries
      #   #   @option data [String, nil] :status The current status of the account collection flow. One of `pending`,
      #   #     `completed`, `expired`, or `cancelled`.
      #   #   @option data [String, nil] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
