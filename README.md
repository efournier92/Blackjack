##Blackjack

Here's my take on the classic `blackjack game` beginner programming challenge, written in Ruby.

Building this application gave me an opportunity to write a program with multiple classes, and to deal with complex logic between instance methods.

###Models

#####`Card`
* Initializes With:
  * `rank`
  * `suit`
* Methods:
  * `facecard?`
    * Checks whether or not a give card is a facecard

#####`Deck`
* Methods:
  * `build_deck`
    * creates a deck with 52 unique cards
  * `deal_one`
    * deals a card off top of deck
  * `deal_two`
    * deals two cards off top of deck

#####`Hand`
* Methods:
  * `hand_calculator`
    * calculates score of given hand
  * `bust?`
    * checks whether or not current hand is greater than 21
  * `printer`
    * outputs contents of current hand

## User Stories

#### Deal initial hand

```no-highlight
As a dealer
I want to initially deal out two cards to the current player
So that we can begin the game
```

#### Prompt for input

```no-highlight
As a player
I want to be prompted to hit or stand
So that I know when I have to act
```

#### Display score

```no-highlight
As a player
I want to know my current best possible score
So that I can decide whether to hit or stand
```

#### Player hits

```no-highlight
As a player
I want to hit
So that I can increase my score
```

#### Player stands

```no-highlight
As a player
I want to stand
So that I don't bust
```

#### Dealer hits until score threshold

```no-highlight
As a dealer
I want to continue hitting until my score is at least 17
So that I get close to 21 without too much risk of busting.
```

###Sample Gameplay

![Blackjack_Gameplay](http://gdurl.com/R_Uv)
