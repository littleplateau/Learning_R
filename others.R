# find the gene symbol according to the ensembl ID
#ENSG00000000003.13
#ENSG00000000005.5
#ENSG00000000419.11
#ENSG00000000457.12
#ENSG00000000460.15
#ENSG00000000938.11
library(org.Hs.eg.db)
g2s = toTable(org.Hs.egSYMBOL)
g2e = toTable(org.Hs.egENSEMBL)
ensg = read.table("ensg")
a = read.table("ensg",sep = ".")[1]
names(a) = "ensembl_id"
b = merge(a, g2e, by = "ensembl_id")
c = merge(b, g2s, by = "gene_id")
for (i in 1:nrow(b))
{
  print(paste(ensg$V1[i], "=", c$symbol[i]))
}

#find the gene symbol according to the probes
rm(list = ls())
library(hgu133a.db)
ids = toTable(hgu133aSYMBOL)
probes = read.table("probe", col.names = "probe_id")
prob_name = merge(ids, probes)
prob_name

#Find the expression level of the TP53 gene in the R package CLL
#draw the graph in the boxplot of progres.-stable expression 
suppressPackageStartupMessages(library(CLL))
data(sCLLex)
sCLLex
exprSet = exprs(sCLLex)
pheno_data = pData(sCLLex)
library(hgu95av2.db)
prob = toTable(hgu95av2SYMBOL)
probchoose = subset(prob, prob$symbol == "TP53")
TP53_id = probchoose$probe_id
draw = Vectorize(function(n){
  boxplot(exprSet[n,]~pheno_data$Disease)
})
draw(TP53_id)
