Welcome to the quiz-tracker-api!

# Getting Started

- Fork this repo
- [Follow instructions to setup fork locally if needed](https://github.com/jjseymour/quiz-tracker-api/wiki/Setup-local-fork)

## Setup

1. Install

    ```
    bundle install
    rake db:create
    rake db:migrate
    rake db:seed
    ```

2. Start server

    ```
    # server will run on localhost:3000
    rails s
    ```

# git workflow

This repo uses the forked model, where each person works on their own version of the repo.
When it is time to merge your changes:
- make a pull request from your branch to the master branch of what you forked
- when the pull request is approved, another member will merge into master

- main repository: master

## git commit messages

Good code comes with good commit messages. This [article](https://chris.beams.io/posts/git-commit/) is a good overview on commit messages and how to write good commit messages.

Add link to story/issue in the pull request message with full URL. (JIRA story numbers can change!)

# Specs

Reference: http://www.betterspecs.org
