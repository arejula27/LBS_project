
RUN = wasmtime
CC = /emsdk/upstream/emscripten/emcc

noteApp: noteApp.wasm
	${RUN} noteApp.wasm 

noteApp.wasm: noteApp.cpp
	${CC}  noteApp.cpp -o noteApp.wasm

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