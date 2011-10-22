# Spine-Extensions

Provides opinionated but a handy set of extensions to the awesome [Spine](http://spinejs.com) framework.

## What does it do?

It gives you a number of useful helpers and utilities to make you a happier programmer and save you some typing.
It is supposed to grow with time. So feel free to request what you do very often.

Currently it includes:

### Spine.Controller and JST templating bridge

- `@view 'show'`  = `JST['app/views/posts/show']`
- `@generate 'show', post` = `JST['app/views/posts/show'](post)`
- `@htmlify 'show', post` = `@html JST['app/views/posts/show'](post)`

Examples:

```coffee
class App.Users extends Spine.Controller
  elements:
    'form': 'form',
    # You would need elements for the inputs without the helpers:
    'input[name='email']: 'email_input',
    'input[name='name']: 'name_input'

  render: -> @htmlify 'edit', @model

  renderWithNoHelpers: ->
    @html JST['app/views/posts/show'](@model)

  updateModelFromForm: ->
    @model.updateAttributes @form.serializeForm()
  
  updateModeFromFormWithNoHelpers: ->
    @model.updateAttributes { email: email_input.val(), name: name_input.val() }
```

### jQuery Extensions:

- `jQuery.serializeForm` - converts form inputs into JSON object (`<input name='email' value='me@example.com'>` becomes `{email: 'me@example.com'}`).

### TODO List:
- Testing helpers: Model.FakeAjax, Simpler JST access, Factories

## Setup

This gem requires [spine-rails](https://github.com/maccman/spine-rails).

If you want to use it standalone, you will have to compile the files inside `app/assets/javascripts` for now.

### Installation

In your Gemfile, add this line:

    gem "spine-extensions"
  
Then run the following commands:

    bundle install
    
    bundle exec rails generate spine_extensions:install

If you have a non-default `application.js`, then instead of running the generator require the extensions via Sprockets:

```coffee
# from .coffee file
#= require spine-extensions
```
or

```javascript
// from .js file
//= require spine-extensions
```


## License

MIT
