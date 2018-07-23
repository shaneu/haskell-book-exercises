takeWhile can be described as 'take this item while _ is true'

for example takeWhile (<3) [1..10]
[1,2]

This can be spoken aloud as take while the item from the list is less than 3

dropWhile can be describe as 'get rid of this item while _ is true'

For both functions, they return their failure conditions when the first item from the list returns false, however their failure conditions are opposites.

takeWhile (>6) [1..10]
[]

the very first item returns false, so it returns it's failure case, which for takeWhile is the empty list. It can't take anything, so it fails

dropWhile (>6) [1..10]
[1,2,3,4,5,6,7,8,9,10]

here the first item , 1, is not greater than 6, so there's nothing for dropWhile to drop, so it returns it's failure case, the whole list
