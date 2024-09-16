# Etc Code 

issues with coding in browser

```
eval $e in 
let num_zeros : [Int] -> Int = 
    fun xs ->
        case xs
        | [] => 0
        | hd::tl => (
            if hd == 0 then 1 + num_zeros(tl)
            else num_zeros(tl)
        )
    end
in 
pause num_zeros($v) in 
test num_zeros([]) == 0 end;
```

DRY Principles (Don't Repeat Yourself)

`````
let fold_right = 
    fun (xs, base, f) -> 
        case xs 
            | [] => base
            | hd::tl => f(hd, fold_right(tl, base, f))
        end
    in 
let length = fun xs -> fold_right(xs,0, 
    fun (hd, length_tl) -> 1 + length_tl
    ) in 
let sum = fun xs -> fold_right(xs, , ) in 
let num_zeros = fun xs -> fold_right(xs, , ) in 
```