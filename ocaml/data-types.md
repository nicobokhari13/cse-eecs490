# Tour of OCaml

[Last read](https://ocaml.org/docs/tour-of-ocaml#data-and-typing)

## Floats + Ints

Floats use `+.` and `*.` to perform arithemtic between floats

Regular operators are used on Ints

To cast a resulting type to an operation with both floats and ints, use `float_of_int`
```
float_of_int 1 +. 2.5;;
// casts 1 to float
// perform addition between floats with +.
```
****
## Lists

