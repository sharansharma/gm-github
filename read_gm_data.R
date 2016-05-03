gdp <- read.csv("data/data-1952.csv")

gdp$gdp  <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeexp', 'gdp')
gdp <- gdp[keep]
write.csv(gdp, "gdpc.csv")
