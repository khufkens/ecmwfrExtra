proposal<-"ecmwfrExtra ISC Proposal"
proposal.file<-"ecmwfrExtra.Rmd"
author<-"Koen Hufkens"

rmarkdown::render(proposal.file, output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render(proposal.file, output_format="pdf_document",
                  output_dir="out", quiet=TRUE)