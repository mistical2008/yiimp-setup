daemons=(sparks phoenix ufo trezarcoin sigil gobyte tune neodash qbic brofist corez superlumic proton g$
read -p "Stop(stop) or start(start)?: " que1;
if [[ $que1 == "stop" ]]; then
        for item in ${daemons[*]}
        do
                find "/usr/bin" -name "$item*-cli" -type f -exec {} stop \;
        done
elif [[ $que1 == "start" ]]; then
        for item in ${daemons[*]}
        do
                read -p "Continue? Yes(y) or No(n): " que2;
                if [[ $que2 == "y" || $que2 == "Y" ]]; then
                        find "/usr/bin" -name "$item*d" -type f -exec {} \;
                fi
                exit 0;
        done
fi
