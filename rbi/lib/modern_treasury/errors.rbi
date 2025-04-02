# typed: strong

module ModernTreasury
  module Errors
    class Error < StandardError
      sig { returns(T.nilable(StandardError)) }
      attr_accessor :cause
    end

    class ConversionError < ModernTreasury::Errors::Error
    end

    class APIError < ModernTreasury::Errors::Error
      sig { returns(URI::Generic) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: T.nilable(Integer),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      end
    end

    class APIConnectionError < ModernTreasury::Errors::APIError
      sig { void }
      attr_accessor :status

      sig { void }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
      end
    end

    class APITimeoutError < ModernTreasury::Errors::APIConnectionError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
      end
    end

    class APIStatusError < ModernTreasury::Errors::APIError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.for(url:, status:, body:, request:, response:, message: nil)
      end

      sig { returns(Integer) }
      attr_accessor :status

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status:, body:, request:, response:, message: nil)
      end
    end

    class BadRequestError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < ModernTreasury::Errors::APIStatusError
      HTTP_STATUS = T.let((500..), T::Range[Integer])
    end
  end

  Error = ModernTreasury::Errors::Error

  ConversionError = ModernTreasury::Errors::ConversionError

  APIError = ModernTreasury::Errors::APIError

  APIStatusError = ModernTreasury::Errors::APIStatusError

  APIConnectionError = ModernTreasury::Errors::APIConnectionError

  APITimeoutError = ModernTreasury::Errors::APITimeoutError

  BadRequestError = ModernTreasury::Errors::BadRequestError

  AuthenticationError = ModernTreasury::Errors::AuthenticationError

  PermissionDeniedError = ModernTreasury::Errors::PermissionDeniedError

  NotFoundError = ModernTreasury::Errors::NotFoundError

  ConflictError = ModernTreasury::Errors::ConflictError

  UnprocessableEntityError = ModernTreasury::Errors::UnprocessableEntityError

  RateLimitError = ModernTreasury::Errors::RateLimitError

  InternalServerError = ModernTreasury::Errors::InternalServerError
end
