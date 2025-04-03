# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :internal_account_id

        sig do
          params(
            internal_account_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(internal_account_id:, request_options: {})
        end

        sig do
          override.returns({internal_account_id: String, request_options: ModernTreasury::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
