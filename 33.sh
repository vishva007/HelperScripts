a=("job1,67.txt" "job2,logs.txt")

for i in ${a[@]}; do
    IFS=',' read -ra ADDR <<< "$i"
    wc -l ${ADDR[1]}
    echo ${ADDR[0]}
done
