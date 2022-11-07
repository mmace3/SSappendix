This directory contains code to create an appendix for the 2022 Benchmark Stock Assessment
for Black Drum, conducted through the Atlantic States Marine Fisheries Commission. The appendix
is for describing some different Stock Synthesis models that attempted with the Black
Drum data for this assessment.


Structure of directory

.gitignore - used by git
README.txt - file you are currently reading

-------------------------------------------
# Rmarkdown/bookdown related files
# for details on Rmarkdown/bookdown see:
#

build_book.R - use this file to create word document. External R libraries needed are in index.Rmd
_bookdown.yml
_output.yml
01-Introduction.Rmd
02-methods.Rmd
03-results.Rmd
04-discussion.Rmd
06-Tables.Rmd
07-Figures.Rmd
index.Rmd
references.bib

- extra (subdirectory) - contains Rmarkdown/bookdown related files and one image used in appendix
  
  author-info-blocks.lua
  Length_by_TimePeriod.pnd
  manuscript_template-1.docx
  pandoc-crossref.exe
  scholarly-metadata.lua

-------------------------------------------
# Stock Synthesis related files
#
# Could use some cleaning up! A lot of files created when SS runs are in some folders and are not
# strictly necessary. Also some files in top of sss (e.g., data.ss, Report.sso, starter.ss) and ss
# (e.g., data.ss_new) subdirectories should be moved down into a subdirectory for better organization.
# 
# There are a couple different ways to run SS. One way is to open the command line, navigate to the
# directory that has the SS files and executable (e.g., SSmodels\ss\SS.v01.02) and type ss.exe. Also
# there should be an .R file in each of those subdirectories thas has some code to run the model. For
# example, in the SSmodels\ss\SS.v01.03 directory there is file SS.v01.03.R that has a line of code:
#
# shell("ss.exe -nohess -nox")
#
# that will run SS. This will work for all the SS models except for the SSS.v05.00 where the code
# in run_mc_SSS.R will run the SS model.
#

- SSmodels (subdirectory)

  - sss (subdirectory)
  
   README.txt
   data.ss
   Report.sso
   starter.ss

    - SSS.v05.00 (subdirectory) - contains code for primary SSS model results presented in appendix

      run_mc_SSS.R - contains code to run replicate model runs and collect output into one place
      SSS_out_df.csv - collected output from all replicate model runs

    - SSwMRIP (subdirectory) - contains code for SSS model that included the MRIP CPUE index

  - ss (subdirectory)

   data.ss_new
    
    - SS.v01.02 (subdirectory) - contains code for SS model fit to length data using double normal selectivity

    - SS.v01.03 (subdirectory) - contains code for SS model fit to length data using spline selectivity


