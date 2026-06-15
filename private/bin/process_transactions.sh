#!/usr/bin/env bash

# Ստուգում ենք՝ ֆայլի path-ը տրված է, թե չէ
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_file>"
    exit 1
fi

# Կարդում ենք ֆայլը տող առ տող
while IFS= read -r line; do

    # Տողից հանում ենք ամսաթիվը
    date="${line##*,}"

    # Ամսաթվից հանում ենք տարին
    year="${date%%-*}"

    # Ստուգում ենք՝ տարին 2000-ից առաջ է, թե չէ
    if [[ $year -lt 2000 ]]; then
        # Տպում ենք stderr-ում
        echo "$line" >&2
    else
        # Տպում ենք stdout-ում
        echo "$line"
    fi
# բաց ենք թողնում առաջին տողը (header)
done < <(tail -n +2 "$1")
