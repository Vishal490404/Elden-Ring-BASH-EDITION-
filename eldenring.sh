#!/bin/bash
echo "Welcome to ELDEN RING(BASH EDITION)"
echo ""
beast=$(( $RANDOM % 2 ))
sleep 2
echo "Your first battle approaches.Prepare to battle. Pick a number between 0-1.(0/1)"

read tarnished

if [[ $beast == $tarnished ]]
then
        echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
        echo "You Died"
        exit 1
fi

sleep 2
echo ""
echo "Boss Battle!!. Get scared. It's Margit. Pick a number between 0-9. (0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $tarnished == $beast || $tarnished == "wildwarrior" ]]
then
        echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
        echo "You Died"
fi