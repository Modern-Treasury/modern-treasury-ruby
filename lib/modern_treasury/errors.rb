# frozen_string_literal: true

module ModernTreasury
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < ModernTreasury::Error
  end

  class APIError < ModernTreasury::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < ModernTreasury::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < ModernTreasury::APIConnectionError
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < ModernTreasury::APIError
    # @!visibility private
    #
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [Object]
    # @param response [Object]
    #
    # @return [ModernTreasury::APIStatusError]
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        ModernTreasury::BadRequestError.new(**kwargs)
      in 401
        ModernTreasury::AuthenticationError.new(**kwargs)
      in 403
        ModernTreasury::PermissionDeniedError.new(**kwargs)
      in 404
        ModernTreasury::NotFoundError.new(**kwargs)
      in 409
        ModernTreasury::ConflictError.new(**kwargs)
      in 422
        ModernTreasury::UnprocessableEntityError.new(**kwargs)
      in 429
        ModernTreasury::RateLimitError.new(**kwargs)
      in (500..)
        ModernTreasury::InternalServerError.new(**kwargs)
      else
        ModernTreasury::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < ModernTreasury::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < ModernTreasury::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < ModernTreasury::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < ModernTreasury::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < ModernTreasury::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < ModernTreasury::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < ModernTreasury::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < ModernTreasury::APIStatusError
    HTTP_STATUS = (500..)
  end
end
