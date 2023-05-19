hapsPath=${1}

q=0

for i in ${1}/*
do
((q=q+1))
echo the hap is analysing is $q
bash ./runCiD4OhOs.sh $i ohos-framework
done
