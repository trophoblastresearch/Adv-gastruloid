module load singularity-ce/

cellsnpimg=$HOME/software/singularity/cellsnp-lite_1.2.3.sif
vireosnpimg=$HOME/software/singularity/vireoSNP_0.5.8.sif

BAM=possorted_genome_bam.bam
BARCODE=filtered_feature_bc_matrix/barcodes.tsv.gz
REGION_VCF=$HOME/Reference/genome1K.phase3.SNP_AF5e2.chr1toX.hg38.vcf

# EM_D0
cd $HOME/Data/scRNA/EmbryoModel/EM_D0/EM_D0/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=4

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30


#EM_D9
cd $HOME/Data/scRNA/EmbryoModel/EM_D9/EM_D9/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=4

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30


# EM_D9-2
cd $HOME/Data/scRNA/EmbryoModel/EM_D9-2/EM_D9-2/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=3

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30


#EM_D23
cd $HOME/Data/scRNA/EmbryoModel/EM_D23/EM_D23/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=2

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30


# EM_D35
cd $HOME/Data/scRNA/EmbryoModel/EM_D35/EM_D35/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=2

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30

# EarlyEM
cd $HOME/Data/scRNA/EmbryoModel/EarlyEM/Count/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=2

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30

# Heart_SoloCulture
cd $HOME/Data/scRNA/EmbryoModel/Heart_Solo/Count/outs

mkdir -p CellSNP
mkdir -p Demultiplex

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=3

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30

# Day9-Hhi
cd $HOME/Data/scRNA/EmbryoModel/D9-Treated/Count/outs    

mkdir -p CellSNP
mkdir -p Demultiplex
    
BAM=possorted_genome_bam.bam
BARCODE=filtered_feature_bc_matrix/barcodes.tsv.gz
REGION_VCF=$HOME/Reference/scRNA/genome1K.phase3.SNP_AF5e2.chr1toX.hg38.vcf

singularity exec $cellsnpimg cellsnp-lite -s $BAM -b $BARCODE -O CellSNP -R $REGION_VCF -p 30 --minMAF 0.1 --minCOUNT 20 --gzip

n_donor=2

singularity exec $vireosnpimg vireo -c CellSNP -N $n_donor -o Demultiplex -p 30


