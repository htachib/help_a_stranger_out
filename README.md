# Help A Stranger Out

We spend our lives in tiny bubbles. Eat, sleep, work, repeat.

What's the glue sustaining this routine over time? It's kindness. And the human spirit.

Now you can be more thoughtful about applying it. **[Help A Stranger Out](https://helpastrangerout.com)** helps us be more intentional about showing kindness to strangers.

As Ronald Reagan said, "We can’t help everyone, but everyone can help someone ." All it takes is one tiny act to change the world.

This application is built with **[Blockstack JS](https://github.com/blockstack/blockstack.js/)**, a decentralized authentication strategy.

Sensitive user data, such as "claimed deeds" and completions, is stored in the user's `gaia` storage hub, provided through Blockstack.

Anonymized data, such as `smiles` (e.g. upvotes), # deeds in progress, and so on, are stored in Postgres tables. Users may also submit `stories`, an anonymous but publicly shared snippet of commentary about a good deed they accomplished.

**HASO** presents a great use case for the Blockstack identity library because it removes the ability to self-aggrandize, letting users celebrate good deeds instead of hubris.

Unlike most Dapps built in fancy JavaScript frameworks like React, **HASO** is built in Rails and Handlebars, and uses the open source **[Orange UI](https://orangecss.com)** design system.

## Installation
1. Clone the repo
2. `gem install bundle && bundle install`
3. `rails g rename:into new_app_name_here`
4. `rails db:setup && rails db:migrate` to create db
