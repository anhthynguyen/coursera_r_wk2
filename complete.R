complete <- function(directory, id){
    data <- list.files(directory)
    data <- data[id]
    dataNobs <- data.frame()

    for(i in seq_along(id)){
        file <- read.csv(paste(directory, "/", data[i], sep=""))
        nobs <- sum(complete.cases(file))
        fileNobs <- cbind(id = id[i], nobs)
        dataNobs <- rbind(dataNobs, fileNobs)
    }
    dataNobs
}
