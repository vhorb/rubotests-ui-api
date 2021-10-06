# Rubotests-ui-api

The Ruby framework which cover as UI tests, as API tests

## Main technologies

Framework build on Ruby 2.7. Main stack:
- ruby
- webdrivers
- cucumber (BDD approach)
- site_prism (Page Object for UI tests)
- rest-client (For API tests)
- docker
- TBD (allure reporting, logging)

## Instruction

To use this framework you need to clone this repo and install `rbenv`
Simple commands after this:
1. `rbenv install 2.7.1`
2. `bundle install`
3. `bundle exec cucumber`

For docker environment please perform:
1. `docker build -t rubotests .`
2. `docker run rubotests`

## TODO list:
- [ ] Add config file (for URLs and browser config)
- [ ] Add PR and Issue template (.github folder)
- [ ] Add dependency bot (.github folder)
- [ ] Add something for CI/CD (CircleCI or github action)
- [ ] Add reporting (allure or something from cucumber)
- [ ] Add additional tests for test sites

