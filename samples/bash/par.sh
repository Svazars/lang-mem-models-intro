echo "Parallel (2 processes)"
 { ( head -n 25000000 50_000_000.txt  | wc) & }
 { ( tail -n 25000000 50_000_000.txt  | wc) & }

wait
