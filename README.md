# Vulnerabilities in WASM
## Getting started
For running this code it is required to compile the code using a C++ to wasm compiler. We recommend using the devcontainer provided in this repo with the VS Code extension. However, it is also possibleto run install all dependecies locally.

The project has a `Makefile` which allow us to excute all required programs:

### NoteApp 
You can run the vulnerable notetaking app 
```bash
make noteApp
```

You can login as `pepe` and password `123`, then insert a new note with messages `12345admin'.
### NoteApp secure
You can run a secure version of the app with
```bash
make noteApp_secure
```
### String format vulnerability
You can run the format string vulnerability prrof of concept with
```bash
make strings
```
### BOF
You can run the boffer overflow prrof of concept with
```bash
make main
```
