#!/bin/bash

# Description: This script generates the parameters file to run the nf-core atac-seq pipeline
# Usage: generate_nf_core_params.sh <selected_samples_file> <full_info_rds_file> <output_directory> <refgenie_alias> [nf_options]

# Check if the correct number of arguments is provided
source ~/.bashrc
conda activate basicQC
unset PYTHONPATH
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <OUTPUT_DIRECTORY> <REFGENIE_ALIAS> [NF_OPTIONS_PARSED]"
    exit 1
fi

# Arguments
OUTPUT_DIRECTORY=$1 
REFGENIE_ALIAS=$2
NF_OPTIONS_PARSED=${3:-""}

# Split using colon as delimiter
alias="${REFGENIE_ALIAS%%:*}"
tag="${REFGENIE_ALIAS#*:}"

# get refgenie assets
GENOME_FASTA=$(refgenie seek $alias/fasta:$tag)


GENOME_GTF="$(refgenie seek $alias/toga_gtf)/geneAnnotation.gtf.gz"

# get refgenie assets
GENOME_FASTA=$(refgenie seek $alias/fasta:$tag)


GENOME_GTF="$(refgenie seek $alias/toga_gtf)/geneAnnotation.gtf.gz"

echo "Checking if the gtf and fasta match"
gtf_choice=$(bash /home/groups/compgen/lwange/Cryozoo_data/RNA-seq/scripts/check_fasta_gtf_match.sh $alias)

if [ "$gtf_choice" == "gtf1" ]; then 
  echo "Proceeding with $GENOME_GTF"
elif [ "$gtf_choice" == "gtf2" ]; then
  echo "Proceeding with modified GTF"
  MODIFIED_GTF="$OUTPUT_DIRECTORY/${alias}_modified.gtf.gz"
  zcat "$GENOME_GTF" | sed -E 's/^(\S+)/\1.1/' | gzip > "$MODIFIED_GTF"
  GENOME_GTF="$MODIFIED_GTF"
else
  echo "Error: No match between fasta and gtf file found!"
  exit 1
fi || exit 1


MITO_NAME=$(comm -12 <(zcat $GENOME_GTF | grep "COX1" | awk '{print $1}' | sort -u) \
                      <(zcat $GENOME_GTF | grep "CYTB" | awk '{print $1}' | sort -u))

if [[ -n "$MITO_NAME" ]]; then
    echo "Mitochondrial chromosome identified based on CYTB and COX1: $MITO_NAME"
else
    echo "No common chromosome found for COX1 and CYTB"
fi


# Check if NF_OPTIONS_PARSED is not empty and set the options accordingly
if [ -n "$NF_OPTIONS_PARSED" ]; then
    NF_OPTIONS_PARSED=",$NF_OPTIONS_PARSED"
fi


#### Check these parameters
params=$(cat <<EOF
{
    "input": "$OUTPUT_DIRECTORY/pipeline_info.csv",
    "outdir": "$OUTPUT_DIRECTORY/map_2_${alias}",
    "multiqc_title": "map_2_${alias}",
    "fasta": "$GENOME_FASTA",
    "gtf": "$GENOME_GTF",
    "save_reference": true,
    "mito_name" : "$MITO_NAME", 
    "read_length": 150 $NF_OPTIONS_PARSED
}
EOF
)


# Write the parameters to a JSON file
echo "$params" > $OUTPUT_DIRECTORY/nf_core_params.json