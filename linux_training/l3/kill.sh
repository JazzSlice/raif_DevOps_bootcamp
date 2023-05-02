sleep 300 &
peed=$(pidof sleep)
kill -15 $peed
sleep 300 &
peed=$(pidof sleep)
kill -20 $peed
kill -18 $peed
kill -9 $peed
