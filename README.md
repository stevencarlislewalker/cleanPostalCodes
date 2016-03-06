# Clean postal codes

#### Example use

```{r}
cds <- c("A1B 2C3", "missing",
         "---  A    5G*****HHH5J4",
         "E9J6H2nnnn", "e6n8l0")
cleanPostalCodes(cds)
[1] "A1B 2C3" NA        "A5G 5J4" "E9J 6H2" "E6N 8L0"
```

#### Algorithm

1. Coerce input to a character vector.
2. Change all lower case letters to upper case.
3. Remove everything that isn't a digit or letter.
4. Find the first instance of letter-number-letter.
5. In the remaining characters, find the first instance of
   number-letter-number.
6. If these two patterns can be found, return them, otherwise return
   `NA`.

#### Acknowledgements

[Ben](https://github.com/benrifkind) for help with regular
expressions.

