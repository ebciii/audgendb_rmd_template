### AudGenDB Template for R Markdown ###

*Date:* 16-Sep-2015 (Last modified 06-Mar-2019)  
*Author:* E. Bryan Crenshaw III, PhD  

**Description:** R Markdown Template for use on the Audiological and Genetic Database (AudGenDB) Project.

**Contents:** This folder contains 3 files in addition to this README.md file:

- The 'Rmarkdown document Template HowTo.txt' file
- The 'audgendb_template' folder.
- The 'LoadAudGenDB_Rmarkdown_Template.Rmd' file, which contains a `bash` script that can be run in RStudio to load the template.

The txt file will give links to support pages in explaining how to make and use templates.  The folder is ready to place in the template folder for your computer system.   

**Implementation:** The folder 'audgendb_template' should be copied to the Template directory for R on your computer. Alternatively, use the 'LoadAudGenDB_Rmarkdown_Template.Rmd' file that contains a `bash` script that will run in R Studio.

The files/subfolder structure must be maintained for the template to work.

The `template.yml` is written in the YAML markdown language, and provides metadata for the template.

The `skeleton.Rmd` file contains the R Markdown for the template. It must reside in the skeleton subfolder to work properly

Added on 29-Nov-2017 (Updated 30-Sep-2018 & 07-03-2019)  
Template folder on Mac OS X using Current R version:
/Library/Frameworks/R.framework/Versions/Current/Resources/library/rmarkdown/rmarkdown/templates

*NOTE: only put the skeleton.Rmd file in the skeleton folder or RStudio will make a new directory for each page*

##### Features #####
- YAML Header Features (Header delimited above and below with `---`)
  - `title:` uses `doc_title` variable to capture the page title for use below
  - `author:` uses the working directory in an `ifelse` query for the user (in Mac OS X)
  - `date:` automatically inserts date
  - `output:` sets up theme, and makes a table of contents based on headers in markdown below
- R Markdown Body
  - `setup` chunk needed to import R scripts into file
  - `LoadLibraries` chunk for including packages and R scripts (see link for loading R scripts)
  - `LoadData` designed to read csv files, and capture file names in one place
  - Several standard chunks set up with headers, which will get incorporated into the table of contents automatically
  - `OutputData` designed to output data, and to generate a metadata file with information on source and purpose of output file
  - `SessionInfo` chunk saves technical information about the environment in which the file was run, which is hidden on the output using the html `detail` tag. Saving this information is good practice, but clutters the output, so it is hidden until detail summary is clicked on.  
  - The `notifier` package is used to send a message to the operating system when the file is done, if the user is not in the RStudio environment (Useful for long runs where folks are working on something else waiting for the script to run).

##### Further Reading #####
- ["Efficient Input/Output" chapter from *Efficient R programming* ](https://bookdown.org/csgillespie/efficientR/input-output.html) - More info on utility of `readr` versus `data.table` package functions.
