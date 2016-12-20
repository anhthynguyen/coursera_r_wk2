corr <- function(directory, threshold = 0){
    data <- list.files(directory)
    result <- numeric()
    
    for(i in seq_along(data)){
        file <- read.csv(paste(directory, "/", data[i], sep=""))
        if(sum(complete.cases(file)) > threshold){
            corrs <- cor(file[2:3], use = "complete.obs")
            result <- c(result, corrs[2,1]) 
        }
    }
    
    result
}

