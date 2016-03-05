# Clean postal codes

```{r}
cds <- c("A1B 2C3", "missing",
         "---  A    5G*****HHH5J4",
         "E9J6H2nnnn", "e6n8l0")
cleanPostalCodes(cds)
[1] "A1B 2C3" NA        NA        "E9J 6H2" "E6N 8L0"
```

Acknowledgements: [Ben](https://github.com/benrifkind) for help with regular expressions:

```{r}
'^(.*?)([A-Z][0-9][A-Z])(.*?)([0-9][A-Z][0-9])(.*?)$'
```
