# BonaFide

[![Build Status](https://travis-ci.org/Tyr0/bona_fide.png?branch=master)](https://travis-ci.org/Tyr0/bona_fide)

Low level Rack authentication enforcement.

## Features

BonaFide was built to bring advanced middleware functionality to all Rails apps. By providing the key functions to setup user state, limit access, and redirect others, BonaFide is a simple solution to a complex problem.

Essentially, BonaFide injects it's middleware just before Rails and it's routing are called, allowing it to read the current request's cookies, and call your designated model with the requested user state cookie. By setting user state before routing is called, BonaFide allows for more inteligent routing, as well as reduce request initialization code.

## Installation

Install BonaFide gem

```ruby
gem install bona_fide
```

Configure BonaFide settings

Create initializer in `config/initializers/bona_fide.rb`:

```ruby
BonaFide.configure do |config|
  config.base_class = User
  config.setter = :authenticate
  config.cookie_name = "user_cookie"
end
```

## Usage

BonaFide provides a helper for routing via `BonaFide::Constraint` which allows for calling methods on the configured base class. For example:

```ruby
ExampleApp::Application.routes.draw do

  # routes where User.admin? is true
  constraints(BonaFide::Constraint.new(:admin?)) do
    root to: "index#admin"
  end

  # routes where User.user? is true
  constraints(BonaFide::Constraint.new(:user?)) do
    root to: "index#user"
  end

  # fallback route
  root to: "index#visitor"
end
```

## License

BonaFide is released under the [MIT License](http://www.opensource.org/licenses/MIT)
