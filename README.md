College Planner
===============

Small Rails application for managing semesters and users (college planner).

Quick start
-----------

Prerequisites:
- Ruby (3.x recommended)
- Bundler
- SQLite (development) or another supported DB

Install dependencies:

	bundle install

Set up the database:

	bin/rails db:create db:migrate db:seed

Run the app (development):

	bin/rails server

Then open http://localhost:3000 in your browser.

Running tests:

	bundle exec rails test

Docker (optional)
-----------------
If you prefer Docker, build and run the image (project contains a Dockerfile):

	docker build -t college_planner .
	docker run -p 3000:3000 college_planner

Notes
-----
- Configuration lives in `config/`.
- Main controllers are in `app/controllers/` and models in `app/models/`.
- To modify assets, edit `app/assets/`.


