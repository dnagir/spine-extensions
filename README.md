# Spine-Extensions

Provides opinionated but a handy set of extensions to the awesome [Spine](http://spinejs.com) framework.

## What does it do?

It provides you with a number of useful helpers and utilities to make you happier programmer and save you some typing.
It is supposed to grow with time.

Currently it includes:

### Spine.Controller and JST templating bridge

- obtain the view from JST (assuming the Posts controller): `@view 'show'` (instead of `JST['app/views/posts/show']`)
- render the view from JST (assuming the Posts controller): `@generate 'show', post` (instead of `JST['app/views/posts/show'](post)`)

## Setup

This gem requires the use of [spine-rails](https://github.com/maccman/spine-rails) as part of assets pipeline.

If you want to use it standalone, you will have to compile the files inside `app/assets/javascripts` for now.

### Installation

In your Gemfile, add this line:

    gem "spine-extensions"
  
Then run the following commands:

    bundle install
    
    bundle exec rails generate spine_extensions:install

## License

MIT
