#Set working directory
setwd()
#Load libraries#
library (Rsubread)
library(VariantAnnotation)
#for dealing with Bam and Sam files#

VCF_WT_E_B2 <- Rsubread::exactSNP (readFile = "C://Rawdata (1)/OsM2/0.2-5/Sorted_WT02-05B2.rap.bam", isBAM = T,
                                   refGenomeFile = "D://IGV/RAP REF GENOME/IRGSP-1.0_genome.fasta", outputFile ="VCF_WT_B2.VCF",
                                   minAllelicFraction = 0.4)

VCF_WT_E_B2 <- VariantAnnotation::readVcf("VCF_WT_B2.VCF")
variants <-as.data.frame(VCF_WT_E_B2@rowRanges)
View (variants)
