# Learn OCaml (See [A2](/A2/A2.pdf))

* Understanding complex types requires analysis of OCaml code
* OCaml and ALFA have similarities, and synthesizing solutions for both will help finish A6

## **Hazel to OCaml**
* Primitive types use lower case letters (`int` not `Int`)
* Define recursion with `rec` keyword
    ```ocaml
    let rec fib = fun n -> 
        if n < 2 then 1 else n * fac(n-1)
    ```
* Top level `let` does NOT require `in` (let bindings in functions require it)
* **Syntactic Sugar to define functions** 
    * `fib` function can be defined as:
    ```ocaml
    let rec fib = 
        if n < 2 then 1 else n * fac(n - 1)
    ```
* Function Composition Operator `%`

    ```ocaml
    let y = f % g
    (*Same as the below code*)
    let y = fun x -> f(g(x))
    ```
* Function Application: **Spaces** used, not parentheses
  * **Currying** used by single-argument functions
  * Left association operator

    ```ocaml
    f x y z 
    (* 
        Evaluates to (((f x) y) z)
    *)
    ```

* Tuples formed with `*`, not commas
* List elements separated by `;`, empty list = `[]`
* Types + Functions can be parameterized over arbitrary types. Example: `'a, 'b, 'c`
  * Parameterized types written before type name
    * **Example:** `'a list'` means the type of list with elements of type `a`
  * Multiple parameters grouped with parentheses 
    * **Example:** `('a, 'b) p` means type p has parameter types `a` and `b` 
    * *NOTE: Syntax has nothing to do with tuples*
  * Functions can be parameterized, as in arbitrary types can be defined
    * **Example:** `fold_left:` takes in a function, base case, and variable to operate on: `fold _left f a xs`
    * 


## First Program

OCaml source files use `.ml` extension. 

`dune-project`file holds metadata include:
* project name
* dependencies
* global setup

Build Project with: `opam exec -- dune build`

*NOTE: This generates an opam binary file called *

Launch Executable with: `opam exec -- dune exec hello`

*NOTE: `hello` is the name of the project*

### NO MAIN FUNCTION

- Compiled OCaml File behaves as if a file was entered line by line into the toplevel
- An executable OCaml file's entry point is its first line
- Double semicolons not necessary in source files (like top level)
- Definitions added to the environment
- Values resulted form nameless expressions are ignored

`let () =` is used to trigger all side effects, and mark as intended main entry point. It evaluates the expression on the right without creating a name.


## Goal: Understand List Logic

* [Filter Odds](http://eecs490.eecs.umich.edu/exercises/filter-odds/#tab=text&prelude=shown)

## Goal: Complete Q6 on A2

* Evaluator (interpreter) for AL in OCaml following rules defined in A2
* Evalutor Correctness Theorem
  * e is an input expression using ALF syntactic structure
  * v is the output of evaluator
  * OCaml encodings of e & v are logically equivalent **iff** the ALF expressions e & v are logically equivalent (according to the rules of ALF)
  * If premise is an evaluation judgement, then this is a recursive call
    * pattern match on the recursive call's output