#!/bin/bash

ROOT_PATH=$(pwd)
WORK_PATH="${ROOT_PATH}/Temp"

if test -d ${WORK_PATH} -o -f ${ROOT_PATH}/ST-Models-Complete.pk3
then
    echo -e 'Error: "Temp" or "ST-Models-Complete.pk3" is already existed.' \
            "Check and remove it first.\n" 2>&1
    exit 1
else
    echo -e "Creating temporary directory under ${ROOT_PATH}\n"
    sleep 1
    mkdir -p ${WORK_PATH}/Models
fi

echo -e "Copying files\n"
sleep 1

# GZ-Models

for DEF_FILE in \
    $(find ${ROOT_PATH}/GZ-Models/Build -maxdepth 2 -type f -name "*.def")
do
    cp ${DEF_FILE} ${WORK_PATH}
done

for MODEL_DIR in \
    $(find ${ROOT_PATH}/GZ-Models/Build -maxdepth 2 -mindepth 2 -type d)
do
    cp -R ${MODEL_DIR} ${WORK_PATH}/Models/
done

cp -R ${ROOT_PATH}/GZ-Models/Build/Hires ${WORK_PATH}/

# ST-Models

for DEF_FILE in \
    $(find ${ROOT_PATH}/ST-Models/Build -maxdepth 2 -type f -name "*.def")
do
    cp ${DEF_FILE} ${WORK_PATH}
done

for MODEL_DIR in \
    $(find ${ROOT_PATH}/ST-Models/Build -maxdepth 2 -mindepth 2 -type d)
do
    cp -R ${MODEL_DIR} ${WORK_PATH}/Models/
done

echo -e "Zipping contents of temporary directory\n"
sleep 1

cd ${WORK_PATH}
zip -r ../ST-Models-Complete.pk3 ./*.def ./Hires ./Models

echo -e "Removing temporary directory\n"
sleep 1

rm -rf ${WORK_PATH}

echo -e "All done\n"
