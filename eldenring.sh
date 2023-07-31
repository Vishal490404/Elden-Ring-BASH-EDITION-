                                                                                                                                                                                                                                                                                                     
#!/bin/bash
HP=0
first_fight() {
    sleep 0.25
    echo "Your first battle approaches. Prepare to battle. Pick a number between 0-1. (0/1)"

    while [ $HP -ge 0 ]; do
        beast=$(( $RANDOM % 2 ))
        read tarnished

        if [[ $beast == $tarnished ]]; then
            echo "Beast VANQUISHED!! Congrats fellow tarnished"
            break
        else
            echo "Enemy is hurting, keep fighting (0/1)"
            HP=$(( HP - 1 ))
            echo "HP remaining $HP"
        fi

        if [[ $HP == 0 ]]; then
            echo "You Died"
            exit
        fi
    done
}

second_fight() {
    sleep 0.25
    echo "Your second battle approaches. Prepare to battle. Pick a number between 0-5."

    while [ $HP -ge 0 ]; do
        beast=$(( $RANDOM % 5 ))
        read tarnished

        if [[ $beast == $tarnished ]]; then
            echo "Beast VANQUISHED!! Congrats fellow tarnished"
            break
        else
            echo "Enemy is hurting, keep fighting (0-5)"
            HP=$(( HP - 1 ))
            echo "HP remaining $HP"
        fi

        if [[ $HP == 0 ]]; then
            echo "You Died"
            exit
        fi
    done
}
boss_fight() {
    sleep 0.25
    echo "Boss Battle!! Get scared. It's Margit. Pick a number between 0-9."


    while [ $HP -ge 0 ]; do
        beast=$(( $RANDOM % 10 ))
        read tarnished

        if [[ $beast == $tarnished || $USER == "root" ]]; then
            echo "Beast VANQUISHED!! Congrats fellow tarnished"
            break
        else
            echo "Enemy is hurting, keep fighting (0-9)"
            HP=$(( HP - 1 ))
            echo "HP remaining $HP"
        fi

        if [[ $HP == 0 ]]; then
            echo "You Died"
            echo ""
            echo "Here's a Cheat:\"If you want to beat Margit ,be the most powerful user\""
            exit
        fi
    done
}



clear
echo "Welcome to ELDEN RING(BASH EDITION)"
echo ""
sleep 1.25
echo "Choose your character(1-5)"
sleep 0.25
echo "1) Prisoner"
sleep 0.25
echo "2) Samurai"
sleep 0.25
echo "3) Warrior"
sleep 0.25
echo "4) Vagabond"
sleep 0.25
echo "5) Astrologer"
sleep 0.25

read character
case $character in
    1) echo "Your HP is 11."
       HP=11
       first_fight $HP;;
    2) echo "Your HP is 12."
       HP=12
       first_fight $HP;;
    3) echo "Your HP is 10."
       HP=10
       first_fight $HP;;
    4) echo "Your HP is 15."
       HP=15
       first_fight $HP;;
    5) echo "Your HP is 8."
       HP=8
       first_fight $HP;;
    *) echo "Invalid character choice,try again"
       exit;;
esac
sleep 2
second_fight
sleep 2
echo "HP remaining $HP"
echo ""
boss_fight
sleep 1
echo "Congrats!! You are the new Elden Lord..."
echo ""
sleep 1
echo "Thank's for Playing.."