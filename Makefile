

build:
	emcc hello.cpp -o index.html

serve: 
	@echo "Starting server..."
	@python3 -m http.server 8000