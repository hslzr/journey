# Journey

This is a simple "journaling" app built with the sole purpose of testing the
[marksmith gem](https://github.com/avo-hq/marksmith). It's a simple Rails app
built with Rails 8.0.1, Ruby 3.4.1 and SQLite as a database.

## Installation

1. Clone the repository
2. Run `bundle install`
3. Run `rails db:migrate`
4. Update the `bin/dev` file to use Foreman if needed. I personally prefer
   [Overmind](https://evilmartians.com/opensource/overmind) though.
5. Run `bin/dev` to start the server

## Usage

1. Visit `http://localhost:3000` in your browser
2. Click on the "New Entry" button to create a new entry
3. Fill in the form and click "Save"
4. You can edit or delete the entry by clicking on the respective buttons

## Contributing

I'm not looking for contributions to this project. It's a simple playground.
