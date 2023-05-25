#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only  -c"
SYMBOL=$1

if [[ -z $1 ]]
then 
  echo "Please provide an element as an argument."
  else
  if [[ ! $SYMBOL =~ ^[0-9]+$ ]]
  then
    INPUT=$(echo -n "$SYMBOL" | wc -m)
    if [[ $INPUT -gt 2 ]]
    then
      ELEMENT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE name='$SYMBOL'")
      if [[ -z $ELEMENT ]]
      then
        echo "I could not find that element int the database."
      else
        echo "$ELEMENT" | while read BAR BAR ATOMICNUM BAR SYM BAR NAME BAR ATOMICMASS BAR MELP BAR BOILP BAR TYPE 
        do
        echo "The element with atomic number $ATOMICNUM is $NAME ($SYM). It's a $TYPE, with a mass of $ATOMICMASS. $NAME has a melting point of $MELP celsius and a boiling point of $BOILP celsius."
        done
      fi
    else
      ELEMENT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$SYMBOL'")
      if [[ -z $ELEMENT ]]
      then
        echo "I could not find that element int the database."
      else
        echo "$ELEMENT" | while read BAR BAR ATOMICNUM BAR SYM BAR NAME BAR ATOMICMASS BAR MELP BAR BOILP BAR TYPE 
        do
        echo "The element with atomic number $ATOMICNUM is $NAME ($SYM). It's a $TYPE, with a mass of $ATOMICMASS. $NAME has a melting point of $MELP celsius and a boiling point of $BOILP celsius."
        done
      fi
    fi
  else 
    ELEMENT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number='$SYMBOL'")
    if [[ -z $ELEMENT ]]
    then
      echo "I could not find that element int the database."
    else
      echo "$ELEMENT" | while read BAR BAR ATOMICNUM BAR SYM BAR NAME BAR ATOMICMASS BAR MELP BAR BOILP BAR TYPE 
      do
      echo "The element with atomic number $ATOMICNUM is $NAME ($SYM). It's a $TYPE, with a mass of $ATOMICMASS. $NAME has a melting point of $MELP celsius and a boiling point of $BOILP celsius."
      done
    fi
  fi
fi
    
