# typed: strong

module ModernTreasury
  module Models
    class CaseListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::CaseListParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # The status of the case.
      sig do
        returns(T.nilable(ModernTreasury::CaseListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: ModernTreasury::CaseListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # The ID of the object the case is about.
      sig { returns(T.nilable(String)) }
      attr_reader :subject_id

      sig { params(subject_id: String).void }
      attr_writer :subject_id

      # The type of the object the case is about.
      sig do
        returns(
          T.nilable(ModernTreasury::CaseListParams::SubjectType::OrSymbol)
        )
      end
      attr_reader :subject_type

      sig do
        params(
          subject_type: ModernTreasury::CaseListParams::SubjectType::OrSymbol
        ).void
      end
      attr_writer :subject_type

      sig do
        params(
          after_cursor: T.nilable(String),
          per_page: Integer,
          status: ModernTreasury::CaseListParams::Status::OrSymbol,
          subject_id: String,
          subject_type: ModernTreasury::CaseListParams::SubjectType::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        per_page: nil,
        # The status of the case.
        status: nil,
        # The ID of the object the case is about.
        subject_id: nil,
        # The type of the object the case is about.
        subject_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            per_page: Integer,
            status: ModernTreasury::CaseListParams::Status::OrSymbol,
            subject_id: String,
            subject_type: ModernTreasury::CaseListParams::SubjectType::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of the case.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::CaseListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN =
          T.let(:open, ModernTreasury::CaseListParams::Status::TaggedSymbol)
        RESOLVED =
          T.let(:resolved, ModernTreasury::CaseListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ModernTreasury::CaseListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of the object the case is about.
      module SubjectType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::CaseListParams::SubjectType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGAL_ENTITY =
          T.let(
            :legal_entity,
            ModernTreasury::CaseListParams::SubjectType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ModernTreasury::CaseListParams::SubjectType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
