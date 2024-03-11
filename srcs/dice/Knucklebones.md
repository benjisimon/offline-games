# Knucklebones

### Goal

Win the most points

## Setup


The game is designed to be played with 18 dice, but can be simulated with paper, pen and 1 dice.

On a sheet of paper, set up a grid like so:

```
____ | ____
____ | ____
____ | ____

```

Players are assigned a column.


## Game Play

Each row in th player's column can hold up to 3 numbers.

A player rolls their dice and gets a number.

A player can place that number on any row that has not been filled up yet.

Placing a number in a row causes any of the matching numbers in you
your opponent's row to be X'd out. It's as if the opponent has not
filled in that spot.

Placing a number in a row with with that same number has positive
scoring implementations.

### Example

The board looks like:

```
3 2 3 | 6 _ _
3 _ _ | 4 5 _
6 6 1 | 4 _ _
```

If player 2 rolls a 6, they can opt to disrupt Player 1 by putting the 6 in row 3:


```
3 2 3 | 6 _ _
3 _ _ | 4 5 _
_ _ 1 | 4 6 _
```

Or, try to score more points by putting it in Row 1:

```
3 2 3 | 6 6 _
3 _ _ | 4 5 _
6 6 1 | 4 _ _
```





## Conclusion

Players keep rolling and filling in numbers until one player has all 3
rows filled with 3 numbers. The game is over and the total added.


## Scoring

The numbers in each row is added up. By default, each number's value
is that of the number itself. If there are two of the number, the
number's value doubles. If there are three, the value is trippled.

### Example:

3 4 2 = 3 + 4 + 2 = 9

3 4 4 = 3 + (2x4) + (2x4) = 19

4 4 4 = (3x4) + (3x4) + (3x4) =  36


## References

* [How To Play](https://www.youtube.com/watch?v=84Mew5TDNpE)
