# Vulnerabilities in WASM
This repository belongs to a project developed for the course DD2525 at KTH

## Getting started
For running this code it is required to compile the code using a C++ to wasm compiler. We recommend using the devcontainer provided in this repo with the VS Code extension. However, it is also possible to run and install all dependencies locally.

The project has a `Makefile` which allows us to execute all required programs:

### NoteApp 
You can run the vulnerable notetaking app 
```bash
make noteApp
```

You can log in as `pepe` and password `123`, then insert a new note with message `12345admin'.
### NoteApp secure
You can run a secure version of the app with
```bash
make noteApp_secure
```
### String format vulnerability
You can run the format string vulnerability proof of concept with
```bash
make strings
```
### BOF
You can run the boffer overflow proof of concept with
```bash
make main
```
