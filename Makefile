
NODE = /usr/bin/node 
CC = /emsdk/upstream/emscripten/emcc

hello: hello.js
	${NODE} hello.js 

hello.js: hello.cpp
	${CC}  hello.cpp -o hello.js

clean:
	rm -f hello.js hello.wasm