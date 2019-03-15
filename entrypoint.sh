#!/usr/bin/env sh

ARGS=$@

showCows(){
    for cow in $(/bin/ls /usr/local/share/cows | grep -v ''.pm | sed 's/\.cow//g' );do
        /usr/local/bin/cowsay -f $cow "Hello my name is $cow"
    done

}

if [ $ARGS == list ];then
    showCows
    exit 0
fi

/usr/local/bin/cowsay $@