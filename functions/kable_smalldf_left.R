# ---- kable_smalldf_left ----
# A function to make nice kable tables in the R Markdown files for small data frames
# This makes it easier to quickly use kableExtra with a number of parameters already set up

#### Ensure the necessary packages have been downloaded
if(!is.element('knitr', installed.packages()[,1])){
  install.packages('knitr')} else {
    library(knitr)}
if(!is.element('kableExtra', installed.packages()[,1])){
  install.packages('kableExtra')} else {
    library(kableExtra)}

#### Define the function
kable_smalldf_left <- function(df, table_caption){
  knitr::kable(df, caption = table_caption) %>%
    kableExtra::kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), 
                              full_width = FALSE,
                              position = "left") %>%
    kableExtra::column_spec(1:2, width = "11em")
}