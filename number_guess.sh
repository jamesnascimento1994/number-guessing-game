#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


echo "Enter your username:"
read USERNAME

IF_USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(total_guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

if [[ -z $IF_USER_EXISTS ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
COUNT=1
echo -e "\nGuess the secret number between 1 and 1000:"

while read NUM
do  
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
    echo -n "That is not an integer, guess again:"
  else
    if [[ $NUM -eq $RANDOM_NUMBER ]]
    then
      break;
    else
      if [[ $NUM -gt $RANDOM_NUMBER ]]
      then
        echo -n "It's lower than that, guess again:"
      elif [[ $NUM -lt $RANDOM_NUMBER ]]
      then
        echo -n "It's higher than that, guess again:"
      fi
    fi
  fi
  COUNT=$(( $COUNT + 1 ))
done
if [[ $COUNT == 1 ]]
then
  echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
else
  echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(total_guesses, user_id) VALUES ($COUNT, $USER_ID)")