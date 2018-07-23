-- here, undefined is part of the spine Prelude> let xs = [1, 2, 3, 4] ++ undefined

I was initially confused as to why undefined was 'part of the spine'. The reason has to do with
the type definition for the (++) operator (++) :: [a] -> [a] -> [a]. It expects both of it's arguments
to be lists, with a cons constructor and a leaf. Here, instead of giving it a list of values, we're
giving it a undefined, so it becomes part of the spine, as opposed to [1,2,3,4,undefined], where undefined is
a leaf value, not part of the spine;

I was confused as to why exaclty foldl associates from the left - why it starts with it's first expression in parens.
If we look at the type signature `foldl :: (b -> a -> b) -> b -> [a] -> b` we can think of b as the accumalted value.
Because the function passed to foldl takes this base, or accumlated value as its first argument, then the first item from the list,
it doesn't need to wait until the whole spine has been traveresed to reach a redex (reducable expression), it has what it needs right away-
there is a b present and an a present, so that function signature is satisfied, so `foldl (*) 1 [1..3]` can be written out as

```
  foldl f z []       = z
  foldl f z (x : xs) = foldl f (z `f` x) xs
  foldl f z (x : xs) = foldl f ( (z `f` x) `f` x) xs
  foldl f z (x : xs) = foldl f (((z `f` x) `f` x) `f` x) xs
                                    ^ this is the 'z' value from the signature, which is the accumulation of the previous expressions evaluated with the next item from the list

  foldl (*) [1..3]
  ((1 `*` 1))
```

Why does exercise 5 in 'Understanding folds' not work, unless you add (flip const)?

foldr const 'a' [1..5] -- this won't typecheck, because the type signature of foldr right states that it must return
the type of whatever 'b' is
foldr :: (a -> b -> b) -> b -> [a] -> b
so in this example, the b type variable is a Char, the 'a', and since that is what
must be returned from foldr, if we try to exectue the function as it is it will fail because const
returns it's first argument, which would be the 1 from the list, which is not of type char. By applying flip
to const though, it will flip which arguments const recives, and const will return the b type variable, or 'a' here,
and statisfy the type signature. It should also be noted that because const returns the argument without evaluating the other, the 
list here won't be traversed.
