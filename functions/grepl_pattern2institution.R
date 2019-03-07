# ---- grepl_pattern2institution ----
# Assign the name of an institution based on the grepl(pattern) of the alias
# Generates an 'institution' column in dataframe passed to the function, and 
# converts this column to a factor for use by dplyr and ggplot2
# Of the 3 grepl_patterninstitution algorithms, this is the most versatile, most elegant, but least intuitive one
# This could be made more generalizable, by passing the grep-matching list, and the column to match from the data frame
grepl_pattern2institution <- function(df) {
  # Check the df for the alias column, if not is there a "Patient.Alias" column to rename
  if (!any(grepl("alias", names(df)))) {
    print("No alias column in the data frame")
    if (any(grepl("Patient.Alias", names(df)))) {
      names(df)[names(df)=="Patient.Alias"] <- "alias"
      print("Converted 'Patient.Alias' to 'alias' to run")
      }
    }
  # List containing grep pattern that is specific for the aliases of each institution
  # CHOP starts with 'P', BCH with 'BCH' and Vandy is just numbers.
  alias_institution_grep <-  list("chop"="^P.*","vandy"="^[0-9].*","bch"="^BCH.*")
  # Apply the grepl patterns to the alias column of the df ('df' in this case)
  # The zindex gives a boolean vector of pattern matches
  zindex <- lapply(alias_institution_grep, function(x) grepl(x,df$alias))
  # Loop through the indices and apply to a new column 'institutions' in the 'df' 
  # I tried many ways to use apply family to do this instead of for loop, and it didn't work
  for (i in names(zindex)) {df$institution[zindex[[i]]] <- i}
  # Convert 'institution' colvar into factor for use in `dplyr` & `ggplot2`
  df$institution <- factor(df$institution, levels=c("chop","vandy","bch"))
  return(df)
}
