gdp <- read.csv("data/data-1952.csv")
new <- read.csv("data/data-1957.csv")
gdp <- rbind(gdp, new)

gdp$gdp  <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeexp', 'gdp')
gdp <- gdp[keep]
write.csv(gdp, "gdpc.csv")
