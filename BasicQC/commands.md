# BASICQC pipeline

### activate the conda environment
conda activate basicQC

## run QC version 1.3
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_01 RNA-seq /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_02 ATAC-seq /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_03 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_04 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_05 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_06 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_07 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_08 RNA-seq /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_14 ATAC-seq /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_09 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_10 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_11 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_12 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_13 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_15 RNA /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_16 ATAC /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_17 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_18 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_19 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC


bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_21 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_22 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_23 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_20 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_24 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC
bash runQC_1.3.sh /scratch_isilon/groups/compgen/data_transfer CGLZOO_25 WGS /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC

### run MultiQC version 1
conda activate multiQC

sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_01
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_02
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_03
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_04
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_05
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_06
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_07

sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_08
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_14

sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_09
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_10
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_11
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_12
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_13

sbatch --dependency afterok:41775390 runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_15
sbatch --dependency afterok:41775671 runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_16
sbatch --dependency afterok:41776045 runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_17
sbatch --dependency afterok:41776286 runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_18
sbatch --dependency afterok:41776407 runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_19

sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_21
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_22
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_23

sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_20
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_24
sbatch runMultiQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/CGLZOO_25

## previous versions and testing

## start an interactive session
int_bg 
cd /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/


## test files
bash runQC.sh /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/test/20241128/FASTQ/ /scratch_isilon/groups/compgen/data/Illumina_CryoZoo/BasicQC/test/test.xls test WGS
bash runQC.sh /scratch_isilon/groups/compgen/data_transfer/CGLZOO_01/20241128/FASTQ/ /scratch_isilon/groups/compgen/data_transfer/CGLZOO_01/CGLZOO_01.xls CGLZOO_01 RNA-seq
