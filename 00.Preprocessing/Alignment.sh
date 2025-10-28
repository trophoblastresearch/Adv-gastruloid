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


