# Modern Treasury Ruby API library

The Modern Treasury Ruby library provides convenient access to the Modern Treasury REST API from any Ruby 3.0.0+ application.

## Documentation

Documentation for released of this gem can be found [on RubyDoc](https://gemdocs.org/gems/modern_treasury).

The underlying REST API documentation can be found on [docs.moderntreasury.com](https://docs.moderntreasury.com).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by adding the following to your application's `Gemfile`:

```ruby
gem "modern_treasury", git: "https://github.com/Modern-Treasury/modern-treasury-ruby", branch: "main"
```

To fetch an initial copy of the gem:

```sh
bundle install
```

To update the version used by your application when updates are pushed to GitHub:

```sh
bundle update modern_treasury
```

## Usage

```ruby
require "bundler/setup"
require "modern_treasury"

modern_treasury = ModernTreasury::Client.new(
  organization_id: "my-organization-ID", # defaults to ENV["MODERN_TREASURY_ORGANIZATION_ID"]
  api_key: "My API Key" # defaults to ENV["MODERN_TREASURY_API_KEY"]
)

counterparty = modern_treasury.counterparties.create(name: "my first counterparty")

puts(counterparty.id)
```

### Pagination

List methods in the Modern Treasury API are paginated.

This library provides auto-paginating iterators with each list response, so you do not have to request successive pages manually:

```ruby
page = modern_treasury.counterparties.list

# Fetch single item from page.
counterparty = page.items[0]
puts(counterparty.id)

# Automatically fetches more pages as needed.
page.auto_paging_each do |counterparty|
  puts(counterparty.id)
end
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `ModernTreasury::Error` will be thrown:

```ruby
begin
  external_account = modern_treasury.external_accounts.create(counterparty_id: "missing")
rescue ModernTreasury::Error => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >=500       | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
modern_treasury = ModernTreasury::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
modern_treasury.counterparties.create(name: "my first counterparty", request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
modern_treasury = ModernTreasury::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
modern_treasury.counterparties.create(name: "my first counterparty", request_options: {timeout: 5})
```

## Sorbet Support

**This library emits an intentional warning under the [`tapioca` toolchain](https://github.com/Shopify/tapioca)**. This is normal, and does not impact functionality.

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the `sorbet-runtime`.

What this means is that while you can use Sorbet to type check your code statically, and benefit from the [Sorbet Language Server](https://sorbet.org/docs/lsp) in your editor, there is no runtime type checking and execution overhead from Sorbet itself.

Due to limitations with the Sorbet type system, where a method otherwise can take an instance of `ModernTreasury::BaseModel` class, you will need to use the `**` splat operator to pass the arguments:

Please follow Sorbet's [setup guides](https://sorbet.org/docs/adopting) for best experience.

```ruby
model = CounterpartyCreateParams.new(name: "my first counterparty")

modern_treasury.counterparties.create(**model)
```

## Advanced

### Concurrency & Connection Pooling

The `ModernTreasury::Client` instances are thread-safe, and should be re-used across multiple threads. By default, each `Client` have their own HTTP connection pool, with a maximum number of connections equal to thread count.

When the maximum number of connections has been checked out from the connection pool, the `Client` will wait for an in use connection to become available. The queue time for this mechanism is accounted for by the per-request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

Currently, `ModernTreasury::Client` instances are only fork-safe if there are no in-flight HTTP requests.

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.0.0 or higher.
