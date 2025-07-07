# typed: strong

module ModernTreasury
  module Models
    class LegalEntityAddressCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LegalEntityAddressCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Country code conforms to [ISO 3166-1 alpha-2]
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      # Locality or City.
      sig { returns(T.nilable(String)) }
      attr_accessor :locality

      # The postal code of the address.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # Region or State.
      sig { returns(T.nilable(String)) }
      attr_accessor :region

      # The types of this address.
      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::LegalEntityAddressCreateRequest::AddressType::OrSymbol
            ]
          )
        )
      end
      attr_reader :address_types

      sig do
        params(
          address_types:
            T::Array[
              ModernTreasury::LegalEntityAddressCreateRequest::AddressType::OrSymbol
            ]
        ).void
      end
      attr_writer :address_types

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      sig do
        params(
          country: T.nilable(String),
          line1: T.nilable(String),
          locality: T.nilable(String),
          postal_code: T.nilable(String),
          region: T.nilable(String),
          address_types:
            T::Array[
              ModernTreasury::LegalEntityAddressCreateRequest::AddressType::OrSymbol
            ],
          line2: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Country code conforms to [ISO 3166-1 alpha-2]
        country:,
        line1:,
        # Locality or City.
        locality:,
        # The postal code of the address.
        postal_code:,
        # Region or State.
        region:,
        # The types of this address.
        address_types: nil,
        line2: nil
      )
      end

      sig do
        override.returns(
          {
            country: T.nilable(String),
            line1: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            region: T.nilable(String),
            address_types:
              T::Array[
                ModernTreasury::LegalEntityAddressCreateRequest::AddressType::OrSymbol
              ],
            line2: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module AddressType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::LegalEntityAddressCreateRequest::AddressType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
          )
        MAILING =
          T.let(
            :mailing,
            ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
          )
        PO_BOX =
          T.let(
            :po_box,
            ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
          )
        RESIDENTIAL =
          T.let(
            :residential,
            ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::LegalEntityAddressCreateRequest::AddressType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
