
RUN = wasmtime
CC = /emsdk/upstream/emscripten/emcc

main: main.wasm
	${RUN} main.wasm 

main.wasm: main.cpp
	${CC}  main.cpp -o main.wasm

hello: hello.wasm
	${RUN} hello.wasm 

hello.wasm: hello.cpp
	${CC}  hello.cpp -o hello.wasm

clean:
	rm -f *.wasm *.o