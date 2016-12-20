pollutantmean <- function(directory, pollutant, id){
    data <- list.files(directory) #return names of files in directory
    data <- data[id] #selects specific files
    values <- numeric() #empty numeric vector to place selected data in
    
    for(i in seq_along(data)){
        monitor <- read.csv(paste(directory, "/", data[i], sep=""))
        values <- c(values, if(pollutant == "sulfate") monitor$sulfate else monitor$nitrate)
    }
    
    mean(values, na.rm= TRUE)
}
