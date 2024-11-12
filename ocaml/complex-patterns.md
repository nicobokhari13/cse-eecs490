# Complex Pattern Matching 

https://ocaml.org/manual/5.2/patterns.html

Patterns allow the selection of data structures through templates, and binds identifiers to data structure components. 

They are linear, meaning a variable cannot be bound several times in a pattern. Use `when` guide keyword

```ocaml

let pair_equal = function 
    | x, y when x = y -> true
    | _ -> false;;
```

**General Form**
```ocaml
pattern	::=	value-name
 	∣	 _
 	∣	 constant
 	∣	 pattern as value-name
 	∣	 ( pattern )
 	∣	 ( pattern : typexpr )
 	∣	 pattern | pattern
 	∣	 constr pattern
 	∣	 `tag-name pattern
 	∣	 #typeconstr
 	∣	 pattern { , pattern }+
 	∣	 { field [: typexpr] [= pattern]{ ; field [: typexpr] [= pattern] } [; _ ] [ ; ] }
 	∣	 [ pattern { ; pattern } [ ; ] ]
 	∣	 pattern :: pattern
 	∣	 [| pattern { ; pattern } [ ; ] |]
 	∣	 char-literal .. char-literal
 	∣	 lazy pattern
 	∣	 exception pattern
 	∣	 module-path .( pattern )
 	∣	 module-path .[ pattern ]
 	∣	 module-path .[| pattern |]
 	∣	 module-path .{ pattern }
```

## Variable Patterns

`_` matches to any value but does not bind to any name in the type's structure.

**Alias Patterns**

```ocaml

let sort_pair ((x,y) as p) = 
    if x <= y then p else (y,x);;
```