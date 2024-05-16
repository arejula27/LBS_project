
RUN = wasmtime
CC = /emsdk/upstream/emscripten/emcc

noteApp: noteApp.wasm
	${RUN} noteApp.wasm 

noteApp.wasm: noteApp.cpp
	${CC}  noteApp.cpp -o noteApp.wasm

noteApp_secure: noteApp_secure.wasm
	${RUN} noteApp_secure.wasm 

noteApp_secure.wasm: noteApp.cpp
	${CC}  noteApp_secure.cpp -o noteApp_secure.wasm


strings: strings.wasm
	${RUN} strings.wasm 

strings.wasm: strings.cpp
	${CC}  strings.cpp -o strings.wasm

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