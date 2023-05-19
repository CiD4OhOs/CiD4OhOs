hapPath=${1}
hapFramework=${2}

HapDir=${hapPath%*.hap}
HapName=${HapDir##*/}

unzip -o ${1} -d ${HapDir} >nothing.txt
rm -rf nothing.txt
if grep 038 ${HapDir}/classes.dex ; then sed -i "2 s/038/035/g" ${HapDir}/classes.dex;fi

if [ ! -d ./out ];then mkdir out;fi

java -jar CiD4OhOs.jar ${HapDir} ${hapFramework} >./out/${HapName}.txt

rm -rf ${HapDir}

