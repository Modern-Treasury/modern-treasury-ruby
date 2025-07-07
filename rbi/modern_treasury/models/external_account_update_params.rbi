# typed: strong

module ModernTreasury
  module Models
    class ExternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ExternalAccountUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Can be `checking`, `savings` or `other`.
      sig { returns(T.nilable(ModernTreasury::ExternalAccountType::OrSymbol)) }
      attr_reader :account_type

      sig do
        params(account_type: ModernTreasury::ExternalAccountType::OrSymbol).void
      end
      attr_writer :account_type

      sig { returns(T.nilable(String)) }
      attr_accessor :counterparty_id

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      # an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # A nickname for the external account. This is only for internal usage and won't
      # affect any payments
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(ModernTreasury::AddressRequest)) }
      attr_reader :party_address

      sig { params(party_address: ModernTreasury::AddressRequest::OrHash).void }
      attr_writer :party_address

      # If this value isn't provided, it will be inherited from the counterparty's name.
      sig { returns(T.nilable(String)) }
      attr_reader :party_name

      sig { params(party_name: String).void }
      attr_writer :party_name

      # Either `individual` or `business`.
      sig do
        returns(
          T.nilable(
            ModernTreasury::ExternalAccountUpdateParams::PartyType::OrSymbol
          )
        )
      end
      attr_accessor :party_type

      sig do
        params(
          account_type: ModernTreasury::ExternalAccountType::OrSymbol,
          counterparty_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::AddressRequest::OrHash,
          party_name: String,
          party_type:
            T.nilable(
              ModernTreasury::ExternalAccountUpdateParams::PartyType::OrSymbol
            ),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Can be `checking`, `savings` or `other`.
        account_type: nil,
        counterparty_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        # an empty string or `null` as the value.
        metadata: nil,
        # A nickname for the external account. This is only for internal usage and won't
        # affect any payments
        name: nil,
        party_address: nil,
        # If this value isn't provided, it will be inherited from the counterparty's name.
        party_name: nil,
        # Either `individual` or `business`.
        party_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_type: ModernTreasury::ExternalAccountType::OrSymbol,
            counterparty_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            party_address: ModernTreasury::AddressRequest,
            party_name: String,
            party_type:
              T.nilable(
                ModernTreasury::ExternalAccountUpdateParams::PartyType::OrSymbol
              ),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Either `individual` or `business`.
      module PartyType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ExternalAccountUpdateParams::PartyType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::ExternalAccountUpdateParams::PartyType::TaggedSymbol
          )
        INDIVIDUAL =
          T.let(
            :individual,
            ModernTreasury::ExternalAccountUpdateParams::PartyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ExternalAccountUpdateParams::PartyType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
