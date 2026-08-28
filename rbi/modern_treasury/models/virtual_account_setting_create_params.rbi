# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountSettingCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::VirtualAccountSettingCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The method used to allocate virtual account numbers.
      sig { returns(String) }
      attr_accessor :allocation_type

      # The ID of the internal account for the virtual account setting.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
      sig { returns(T.nilable(String)) }
      attr_accessor :allocation_identifier

      # The total length of generated virtual account numbers.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :allocation_length

      # The inclusive end of the virtual account number range.
      sig { returns(T.nilable(String)) }
      attr_accessor :allocation_range_end

      # The inclusive start of the virtual account number range.
      sig { returns(T.nilable(String)) }
      attr_accessor :allocation_range_start

      # A user-defined identifier for the virtual account setting.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The length of a generated virtual account setting prefix.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :generated_allocation_identifier_length

      sig do
        params(
          allocation_type: String,
          internal_account_id: String,
          allocation_identifier: T.nilable(String),
          allocation_length: T.nilable(Integer),
          allocation_range_end: T.nilable(String),
          allocation_range_start: T.nilable(String),
          external_id: T.nilable(String),
          generated_allocation_identifier_length: T.nilable(Integer),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The method used to allocate virtual account numbers.
        allocation_type:,
        # The ID of the internal account for the virtual account setting.
        internal_account_id:,
        # The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
        allocation_identifier: nil,
        # The total length of generated virtual account numbers.
        allocation_length: nil,
        # The inclusive end of the virtual account number range.
        allocation_range_end: nil,
        # The inclusive start of the virtual account number range.
        allocation_range_start: nil,
        # A user-defined identifier for the virtual account setting.
        external_id: nil,
        # The length of a generated virtual account setting prefix.
        generated_allocation_identifier_length: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            allocation_type: String,
            internal_account_id: String,
            allocation_identifier: T.nilable(String),
            allocation_length: T.nilable(Integer),
            allocation_range_end: T.nilable(String),
            allocation_range_start: T.nilable(String),
            external_id: T.nilable(String),
            generated_allocation_identifier_length: T.nilable(Integer),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
