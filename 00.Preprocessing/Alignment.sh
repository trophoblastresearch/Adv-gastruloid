# Day0
cd $HOME/Data/scRNA/EmbryoModel/EM_D0
cellranger count \
--id EM_D0_YSdiff \
--transcriptome $HOME/Reference/2024-A/GRCh38 \
--fastqs fastq/ \
--sample EM_D0_YSdiff \
--create-bam=true \
--expect-cells 7000

# Day9-1
cd $HOME/Data/scRNA/EmbryoModel/EM_D9
cellranger count \
--id EM_D9_YS2D \
--transcriptome $HOME/Reference/2024-A/GRCh38 \
--fastqs fastq/ \
--sample EM-D9_YS2D \
--create-bam=true \
--expect-cells 7000

# Day9-2
cd $HOME/Data/scRNA/EmbryoModel/EM_D9-2
cellranger count \
--id EM_D9-2 \
--transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
--fastqs fastq/ \
--sample EM_D9-2 \
--create-bam=true \
--expect-cells 10000

# Day23
cd $HOME/Data/scRNA/EmbryoModel/EM_D23
cellranger count \
--id EM_D23 \
--transcriptome $HOME/Reference/2024-A/GRCh38 \
--fastqs fastq/ \
--sample EM_D23 \
--create-bam=true \
--expect-cells 7000

# Day35
cd $HOME/Data/scRNA/EmbryoModel/EM_D35
cellranger count \
--id EM_D35 \
--transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
--fastqs fastq/ \
--sample EM_D35 \
--create-bam=true \
--expect-cells 10000

# Day1-6
cd $HOME/Data/scRNA/EmbryoModel/EarlyEM

nano SC3_v3_NextGem_DI_CellPlex_EarlyEM.csv

<< MULTICONFIG

[gene-expression]
ref,$HOME/Reference/scRNA/2024-A/GRCh38
create-bam,true

[libraries]
fastq_id,fastqs,lanes,feature_types
SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_gex,$HOME/Data/scRNA/EmbryoModel/EarlyEM/fastq/SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_gex,any,Gene Expression
SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_multiplexing_capture,$HOME/Data/scRNA/EmbryoModel/EarlyEM/fastq/SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_multiplexing_capture,any,Multiplexing Capture

[samples]
sample_id,cmo_ids,description
D1,CMO301,D1
D2,CMO302,D2
D3,CMO303,D3
D4,CMO304,D4
D6,CMO305,D6

MULTICONFIG

cd $HOME/Data/scRNA/EmbryoModel/EarlyEM
cellranger multi --id=EarlyEM --csv=SC3_v3_NextGem_DI_CellPlex_EarlyEM.csv

cd $HOME/Data/scRNA/EmbryoModel/EarlyEM
cellranger count \
--id Count \
--transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
--fastqs fastq/SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_gex \
--sample SC3_v3_NextGem_DI_CellPlex_EarlyEM_1_gex \
--create-bam=true \
--expect-cells 8000

# Heart_SoloCulture
cd $HOME/Data/scRNA/EmbryoModel/Heart_Solo

nano SC3_v3_NextGem_DI_CellPlex_Heart.csv

<< MULTICONFIG

[gene-expression]
ref,$HOME/Reference/scRNA/2024-A/GRCh38
create-bam,true

[libraries]
fastq_id,fastqs,lanes,feature_types
SC3_v3_NextGem_DI_CellPlex_Heart_1_gex,$HOME/Data/scRNA/EmbryoModel/Heart_Solo/fastq/SC3_v3_NextGem_DI_CellPlex_Heart_1_gex,any,Gene Expression
SC3_v3_NextGem_DI_CellPlex_Heart_1_multiplexing_capture,$HOME/Data/scRNA/EmbryoModel/Heart_Solo/fastq/SC3_v3_NextGem_DI_CellPlex_Heart_1_multiplexing_capture,any,Multiplexing Capture

[samples]
sample_id,cmo_ids,description
PSC_D1,CMO301,PSC_D1
NMLC_D1,CMO302,NMLC_D1
PSC_D2,CMO303,PSC_D2
NMLC_D2,CMO304,NMLC_D2
PSC_D3,CMO305,PSC_D3
NMLC_D3,CMO306,NMLC_D3
Heart,CMO307,Heart

MULTICONFIG

cd $HOME/Data/scRNA/EmbryoModel/Heart_Solo
cellranger multi --id=Heart --csv=SC3_v3_NextGem_DI_CellPlex_Heart.csv

cd $HOME/Data/scRNA/EmbryoModel/Heart_Solo
cellranger count \
--id Count \
--transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
--fastqs fastq/SC3_v3_NextGem_DI_CellPlex_Heart_1_gex \
--sample SC3_v3_NextGem_DI_CellPlex_Heart_1_gex \
--create-bam=true \
--expect-cells 8000

# Day9-Hhi
cd $HOME/Data/scRNA/EmbryoModel/D9-Treated

nano SC3_v3_NextGem_DI_CellPlex_Treated.csv

<< MULTICONFIG

[gene-expression]
ref,$HOME/Reference/scRNA/2024-A/GRCh38
create-bam,true

[libraries]
fastq_id,fastqs,lanes,feature_types
SC3_v3_NextGem_DI_CellPlex_Treat_1_gex,$HOME/Data/scRNA/EmbryoModel/D9-Treated/fastq/SC3_v3_NextGem_DI_CellPlex_Treat_1_gex,any,Gene Expression
SC3_v3_NextGem_DI_CellPlex_Treat_1_multiplexing_capture,$HOME/Data/scRNA/EmbryoModel/D9-Treated/fastq/SC3_v3_NextGem_DI_CellPlex_Treat_1_multiplexing_capture,any,Multiplexing Capture

[samples]
sample_id,cmo_ids,description
D9-1,CMO309,Treat-1
D9-2,CMO310,Treat-2
D9-3,CMO311,Treat-3

MULTICONFIG

cd $HOME/Data/scRNA/EmbryoModel/D9-Treated
cellranger multi --id=Treared --csv=SC3_v3_NextGem_DI_CellPlex_Treated.csv

cd $HOME/Data/scRNA/EmbryoModel/D9-Treated
cellranger count \
--id Count \
--transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
--fastqs fastq/SC3_v3_NextGem_DI_CellPlex_Treat_1_gex \
--sample SC3_v3_NextGem_DI_CellPlex_Traet_1_gex \
--create-bam=true \
--expect-cells 9000

# Tyser et al., 2020
module load singularity-ce/
fastpimg=$HOME/software/singularity/fastp_v0.23.4.sif
starimg=$HOME/software/singularity/star_2.7.11b.sif

cd $HOME/Data/scRNA/E-MTAB-9388_Tyser_Gastrula

mkdir -p fastq/trim
mkdir -p fastq/fastp
mkdir -p count

cd $HOME/Data/scRNA/E-MTAB-9388_Tyser_Gastrula/fastq

cat SRR_list.txt | while read srr; do
   singularity exec $fastpimg fastp \
       -i raw/${srr}_1.fastq.gz \
       -I raw/${srr}_2.fastq.gz \
       -o trim/${srr}_1_trim.fastq.gz \
       -O trim/${srr}_2_trim.fastq.gz \
       --adapter_sequence=AAGCAGTGGTATCAACGCAGAGTAC \
       --adapter_sequence_r2=AAGCAGTGGTATCAACGCAGAGTAC \
       --poly_x_min_len=10 \
       --trim_poly_g \
       --trim_poly_x \
       --length_required=20 \
       --qualified_quality_phred=20 \
       --unqualified_percent_limit=40 \
       --average_qual=20 \
       --n_base_limit=5 \
       --overrepresentation_analysis \
       --json=fastp/${srr}_fastp.json \
       --html=fastp/${srr}_fastp.html \
       --report_title="smart-seq2 FastP Report" \
       --thread=16
done

cd $HOME/Data/scRNA/E-MTAB-9388_Tyser_Gastrula

singularity exec $starimg STAR --runThreadN 48 \
     --genomeDir $HOME/Reference/scRNA/2024-A/GRCh38/star_2.7.11b \
     --readFilesCommand zcat \
     --outFileNamePrefix count/ \
     --soloType SmartSeq \
     --soloFeatures GeneFull_Ex50pAS \
     --readFilesManifest manifest.tsv \
     --soloUMIdedup Exact NoDedup \
     --soloStrand Unstranded \
     --outSAMtype BAM SortedByCoordinate \
     --outBAMsortingBinsN 200

# Zeng et al., 2023
cd $HOME/Data/scRNA/GSE155121_Zeng_Embryo

mkdir -p temp_fq
mkdir -p count

cat SRR_list.txt | while read srr; do
   cd $HOME/Data/scRNA/GSE155121_Zeng_Embryo
   
   fasterq-dump -p -e 60 fastq/raw/${srr}/${srr}.sralite -O fastq/raw
   
   pigz -p 60 -f fastq/raw/${srr}_1.fastq
   pigz -p 60 -f fastq/raw/${srr}_2.fastq
   
   rm -rf temp_fq/*
   
   mv fastq/raw/${srr}_1.fastq.gz temp_fq/${srr}_S1_L001_R1_001.fastq.gz
   mv fastq/raw/${srr}_2.fastq.gz temp_fq/${srr}_S1_L001_R2_001.fastq.gz
   
   cd count
   
   cellranger count \
     --id ${srr} \
     --transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
     --fastqs ../temp_fq/ \
     --sample ${srr} \
     --create-bam=false
done

# Xu et al., 2023
cd $HOME/Data/scRNA/GSE157329_Xu_Embryo

mkdir -p temp_fq
rm -rf temp_fq/*
mkdir -p count

cat Sample_list.txt | while read sample; do
   ls -1 fastq/$sample | grep SRR | while read srr; do
      echo "Sample: $sample | File: $srr"
      
      fasterq-dump -e 100 fastq/$sample/$srr/$srr.sralite -O temp_fq
      
      pigz -p 100 -f temp_fq/${srr}_1.fastq
      pigz -p 100 -f temp_fq/${srr}_2.fastq
      
      mv temp_fq/${srr}_1.fastq.gz temp_fq/${srr}_S1_L001_R1_001.fastq.gz
      mv temp_fq/${srr}_2.fastq.gz temp_fq/${srr}_S1_L001_R2_001.fastq.gz
      
   done
   
   srrs=$(ls -1 fastq/$sample | paste -s -d ',')
   
   cd count
   
   cellranger count \
     --id $sample \
     --transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
     --fastqs ../temp_fq/ \
     --sample $srrs \
     --create-bam=false
   
   cd ../
   
   if [[ -f count/$sample/outs/web_summary.html ]]; then
     rm -r temp_fq/*
   fi
   
done

# Rayon et al., 2021
cd $HOME/Data/scRNA/GSE171892_Rayon_SpinalCord

mkdir -p temp_fq
rm -rf temp_fq/*
mkdir -p count

cat Sample_list.txt | while read sample; do
   ls -1 fastq/$sample | grep SRR | while read srr; do
      echo "Sample: $sample | File: $srr"
      
      fasterq-dump -e 100 fastq/$sample/$srr/$srr.sralite -O temp_fq
      
      pigz -p 100 -f temp_fq/${srr}_1.fastq
      pigz -p 100 -f temp_fq/${srr}_2.fastq
      
      mv temp_fq/${srr}_1.fastq.gz temp_fq/${srr}_S1_L001_R1_001.fastq.gz
      mv temp_fq/${srr}_2.fastq.gz temp_fq/${srr}_S1_L001_R2_001.fastq.gz
      
   done
   
   srrs=$(ls -1 fastq/$sample | paste -s -d ',')
   
   cd count
   
   cellranger count \
     --id $sample \
     --transcriptome $HOME/Reference/scRNA/2024-A/GRCh38 \
     --fastqs ../temp_fq/ \
     --sample $srrs \
     --create-bam=false
   
   cd ../
   
   if [[ -f count/$sample/outs/web_summary.html ]]; then
     rm -r temp_fq/*
   fi
   
done




