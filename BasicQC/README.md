# BasicQC pipeline v1.3

## instalation/setup
 Set up a conda environment for the first and sec¡ond part of the pipeline

 ```bash
 conda create --name basicQC --file basicQC_env.txt
 ```

 ```bash
 conda create --name multiQC --file multiQC_env.txt
 ```

## generate the sample info files in R

The pipeline expects certain files to know sample names and fastq locations etc.

the cnag provides the following files:

using the information from the [sample submission](https://docs.google.com/spreadsheets/d/1s8lcAAyMSd7S2UNFEz9U4hxrLVun1K4W08UuKJZj4Is/edit?usp=sharing) we can create the necessary input for the pipeline.

 ```R


 ```

## run pipeline

```bash
### activate the conda environment
conda activate basicQC
```
To run the frist part of the pipeline:

```bash
## run QC version 1.3
bash runQC_1.3.sh </raw/data/path/> <cnag_project> </result/path/>
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_01 RNA-seq /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

```
Once this has finished, to run MultiQC

```bash
conda activate multiQC

sbatch runMultiQC.sh </result/path/cnag_project/>
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_01
```

## pipeline Output

insert image here

## ToDo

- integrate kraken module
- convert to nextflow pipeline
