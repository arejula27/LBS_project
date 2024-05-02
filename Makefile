
RUN = wasmtime
CC = /emsdk/upstream/emscripten/emcc

hello: hello.wasm
	${RUN} hello.wasm 

hello.wasm: hello.cpp
	${CC}  hello.cpp -o hello.wasm

clean:
	rm -f hello.wasm