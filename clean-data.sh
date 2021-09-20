#!/bin/bash
BACKUP_DIR=/mnt/c/polaris_development/PILATES/Backup
SCENARIO_DIR=/mnt/c/polaris_development/PILATES/UrbanSim_files
SOURCE_DIR=/mnt/c/polaris_development/PILATES/campoInputs
MODEL_DIR=/mnt/c/polaris_development/PILATES/campoInputs
echo current directory: $PWD
echo scenario directory: $SCENARIO_DIR
echo source directory: $SOURCE_DIR
echo model directory: $MODEL_DIR

rm ./pilates/polaris/data/*
rm ./pilates/urbansim/data/*

cp $BACKUP_DIR/campo_skims.hdf5 pilates/polaris/data/
cp $BACKUP_DIR/custom_mpo_*.h5 pilates/urbansim/data/

cp $SCENARIO_DIR/*.json   $MODEL_DIR
cp $SCENARIO_DIR/*.csv    $MODEL_DIR
#cp $SOURCE_DIR/*.sqlite $MODEL_DIR
#cp $SOURCE_DIR/*.bin $MODEL_DIR
