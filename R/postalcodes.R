##' Clean postal codes
##'
##' @param codes vector that is coercible to a character vector of
##' postal codes
##' @param blank should there be a blank space between the two parts
##' of the code?
##' @export
##' @examples
##' cds <- c("A1B 2C3", "missing",
##'          "---  A    5G*****HHH5J4",
##'          "E9J6H2nnnn", "e6n8l0")
##' cleanPostalCodes(cds, TRUE)
##' cleanPostalCodes(cds, FALSE)
cleanPostalCodes <- function(codes,
                             blank = TRUE) {
    pat <- '^(.*?)([A-Z][0-9][A-Z])(.*?)([0-9][A-Z][0-9])(.*?)$'
    repl <- ifelse(blank, '\\2 \\4', '\\2\\4')
    codes <- as.character(codes)
    codes <-
        codes %>%
        toupper() %>%
        sub(pattern     = pat,
            replacement = repl)
    codes[!grepl(pat, codes)] <- NA
    return(codes)
}
