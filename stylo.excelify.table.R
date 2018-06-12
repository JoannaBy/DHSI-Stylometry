excelify.table <- function(txtfile = "./table_with_frequencies.txt") {
  # this adds `idx_` as a dummy header to the wordlist table
  # for an easier import into Excel.
  # creates a copy of the file, with the suffix `_xl`
  baseName <- tools::file_path_sans_ext(txtfile)
  fileExt <- tools::file_ext(txtfile)
  firstLine <- scan(file = txtfile, what = "list", sep = "\n", n = 1)
  rest <- scan(file = txtfile, what = "list", sep = "\n", skip = 1)
  firstLine <- paste("\"idx_\"", firstLine)
  outFile <- paste0(baseName, "_xl.", fileExt)
  conn <- file(outFile, "w")
  writeLines(c(firstLine, rest), con = conn)
  close(conn)
}

####################################
### sed [stream editor] solution ###
####################################
#
# if you have sed installed, running this from the
# command line is a bit more performant:
#
## sed "1 s/^/\"idx_\" /" table_with_frequencies.txt > table_with_frequencies_xl.txt ##
# 
## sed's -i flag allows making this change in-place, but this breaks stylo's ability
## to use the frequencies table.
#

###########################
### Excel-only solution ###
###########################
#
# If you'd rather just do this in Excel (which is simplest!):
# According to Microsoft's docs, this should work on Excel for Windows and
# Excel for Mac, although I don't have a Mac for verifying that myself.
#
# 1. Import the file as usual -- data has headers; delimited on Space
# 2. Go to cell "A1" (which will almost certainly be selected by default)
# 3. Press [ CONTROL + SHIFT + = ] to bring up the `Insert Cell` dialog
# 4. Select [ Shift cells right ]
# 5. Don't save changes on exit to maintain compatibility with stylo
#
