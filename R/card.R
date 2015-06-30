
words = c(
    "%>%",
    "CRANdalf",
    "shiny",
    "RConsortium",
    "mtcars",
    "diamonds",
    "Hadleyverse",
    "ArrCeePeePee",
    "cats",
    "kittens",
    "StackOverflow",
    "Data Science",
    "rainbow",
    "pie chart",
    "SAS",
    "SPSS",
    "Excel",
    "R4",
    "R5",
    "R6",
    "Splus",
    "Tibco",
    "R-forge",
    "library!=package",
    "%<>%",
    "sell out",
    "cloud"
    )

card <- function(rows=5, cols=5){
    mywords=sample(words, rows*cols)
    grid = expand.grid(x=0.5+(1:cols), y=0.5+(1:rows))
    grid$text = mywords
    attr(grid,"rows")=rows
    attr(grid,"cols")=cols
    grid
}

cardplot <- function(card){
    ggplot(card, aes(x=x,y=y)) + geom_text(aes(label=text)) + xlim(c(1,1+attr(card,"cols"))) + ylim(c(1,1+attr(card,"rows"))) + theme_light() + 
        theme(axis.text.x=element_blank(),axis.text.y=element_blank()) +
            theme(axis.title.x=element_blank(),axis.title.y=element_blank())

}

    

