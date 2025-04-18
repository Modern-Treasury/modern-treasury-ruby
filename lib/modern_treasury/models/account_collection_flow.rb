# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountCollectionFlows#create
    class AccountCollectionFlow < ModernTreasury::Internal::Type::BaseModel
      # @!attribute counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be
      #   associated with this counterparty.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      required :payment_types,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType] }

      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute client_token
      #   The client token of the account collection flow. This token can be used to embed
      #   account collection in your client-side application.
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute external_account_id
      #   If present, the ID of the external account created using this flow.
      #
      #   @return [String, nil]
      optional :external_account_id, String, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean, nil]
      optional :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String, nil]
      optional :object, String

      # @!attribute receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>, nil]
      optional :receiving_countries,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry] }

      # @!attribute status
      #   The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::AccountCollectionFlow::Status }

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(counterparty_id:, payment_types:, id: nil, client_token: nil, created_at: nil, external_account_id: nil, live_mode: nil, object: nil, receiving_countries: nil, status: nil, updated_at: nil)
      #   @param counterparty_id [String]
      #   @param payment_types [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      #   @param id [String]
      #   @param client_token [String]
      #   @param created_at [Time]
      #   @param external_account_id [String, nil]
      #   @param live_mode [Boolean]
      #   @param object [String]
      #   @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      #   @param status [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status]
      #   @param updated_at [Time]

      # An account created with this flow will support payments of one of these types.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        ACH = :ach
        WIRE = :wire

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # An account created with this flow will support wires from the US to these
      # countries.
      module ReceivingCountry
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the account collection flow. One of `pending`,
      # `completed`, `expired`, or `cancelled`.
      #
      # @see ModernTreasury::Models::AccountCollectionFlow#status
      module Status
        extend ModernTreasury::Internal::Type::Enum

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
