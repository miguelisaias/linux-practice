#!/bin/bash
CONTADOR=1
while [ $CONTADOR -le 5 ]; do
echo "Vuelta numero $CONTADOR"
CONTADOR=$((CONTADOR + 1))
done
