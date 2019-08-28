# Help A Stranger Out

This application is built with [Blockstack JS](https://github.com/blockstack/blockstack.js/), a decentralized authentication strategy.

Sensitive user data, such as "claimed deeds" and completions, is stored in the user's `gaia` storage hub, provided through Blockstack.

Anonymized data, such as `smiles` (e.g. upvotes), # deeds in progress, and so on, are stored in Postgres tables. Users may also submit `stories`, an anonymous but publicly shared snippet of commentary about a good deed they accomplished.

Unlike most Dapps built in fancy JavaScript frameworks like React, **HASO** is built in Rails and Handlebars, and uses the open source [Orange UI](https://orangecss.com) design system.

## Installation
1. Clone the repo
2. `gem install bundle && bundle install`
3. `rails g rename:into new_app_name_here`
4. `rails db:setup && rails db:migrate` to create db
