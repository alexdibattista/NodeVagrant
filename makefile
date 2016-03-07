install: ## Install npm dependencies for the api, admin, and frontend apps
	@echo "Installing Node dependencies"
	@npm install

update: ## Update node_modules
		@echo "Updating node_modules....."
		git pull --rebase
		npm install

start: ## Starting the server with forever
		@echo "Starting the server"
		forever start server/server.js

stop: ## Stopping the server with forever
		@echo "Starting the server"
		forever stop server/server.js

watchify: ## Run watchify to compile React frontend, we use polling because working on your local machine won't trigger watchify to compile
		@echo "Starting watchify..."
		watchify src/main.jsx -v -t [ babelify --presets [ react ] ] -o public/js/main.js --poll

clean: ## Delete node_modules folder
		@echo "Deleting node_modules"
		rm -rf node_modules

.PHONY: help
help:
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
