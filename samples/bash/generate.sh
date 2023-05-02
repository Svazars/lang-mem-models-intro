
for i in {1..100000}; do echo "$i $i $i $i" >> 100_000.txt; done

for j in {1..500}; do cat 100_000.txt >> 50_000_000.txt; done
