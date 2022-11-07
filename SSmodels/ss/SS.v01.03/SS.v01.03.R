
library(r4ss)

# mydir<-"D:\\Working\\Documents\\projects\\ASMFC\\BlackDrum\\SSS\\SSS.v03.00"
mydir <- getwd()
# read the model output and print diagnostic messages
replist <- SS_output(dir = mydir,
                     verbose = TRUE,
                     printstats = TRUE,
                     forecast = FALSE,
                     warn = FALSE)



#replist <- SS_output(mydir)
SS_plots(replist)


shell("ss.exe -nohess -nox")
