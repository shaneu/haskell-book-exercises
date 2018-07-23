The declaration of a typeclass defines how a set of types are consumed or used in computations.

By typing `:info` or `:i` into the repl, we can see information about types. Doing so for Bool shows us the typeclasses it has instances of.

For example, it has an instance of `Bounded` which is for types that have an upper and lower bound. `Enum` for things that can be enumerated. `Ord` for things that can be up into a sequential order. `Show` renders things into strings.

It implements `Read` but at the authors suggestion we should never use it.

>Eq
Eq implements two functions
```
(==) :: a -> a -> Bool
```
and 
```
(/=) :: a -> a -> Bool
```
Additionally in the information about Eq we can see the instances of Eq in the language.

<h3>Typeclass deriving</h3>
We can derive from Eq, Ord, Enum, Bounded, Read (don't), and Show, meaning we don't have to manually write instance of these typeclasses for each new datatype we create