# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        def internal_account_id
        end

        sig { params(_: String).returns(String) }
        def internal_account_id=(_)
        end

        sig do
          params(
            internal_account_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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
