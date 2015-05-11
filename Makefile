bot:
	./BadRegEx.rb

deploy:
	git remote update origin
	git reset --hard origin/master

test:
	bundle exec rspec

.PHONY: bot deploy test
