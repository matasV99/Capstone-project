library(dplyr)
library(dabestr)
df <- data.frame(first_column = c(0.011208276, 0.012068966, 0.024482759, 0.012561379, 0.002155172, 0.007241379, 0.013546207, 0.030677241, 0.016790345, 0.014079310,
                                  0.009606897, 0.004244138, 0.008868276, 0.002988276, 0.011493103, 0.004460690, 0.015631034, 0.004282759, 0.001607586, 0.001903448,
                                  0.022351724, 0.033689655, 0.032606897, 0.014206897, 0.018159310, 0.019310345, 0.021164828, 0.006306897, 0.031034483, 0.019770345, 0.019211724, 0.024694483, 0.013794483, 0.006897931, 0.019739310, 0.014777241, 0.030219310, 0.034227586, 0.029584138, 0.027822069, 0.018966897, 0.034482069, 0.036551034, 0.037469655 ,
                                  0.036089655, 0.017951724, 0.028268966, 0.012642069, 0.026396552, 0.012873103, 0.013792414, 0.015631724, 0.017837241, 0.033333793, 0.017837241, 0.009192414, 0.018621379, 0.015694483, 0.016157241, 0.018909655, 0.014031034, 0.015024828, 0.010940690, 0.015171034, 0.016009655, 0.014778621, 0.016409655, 0.022469655,
                                  0.03724138, 0.04642290, 0.03085379, 0.02092690, 0.04195379, 0.03448414, 0.01034552, 0.01671034, 0.03148621 ,
                                  0.04023048, 0.03425310, 0.02804483, 0.03980414, 0.03152690, 0.03065241, 0.03846207, 0.02873448, 0.03770069, 0.03329517,
                                  0.020002000, 0.011164000, 0.014295862, 0.013191724, 0.024058621, 0.019164138, 0.019170345, 0.008334483, 0.015386000, 0.025334000, 0.012643448, 0.017700414, 0.021150069,
                                  0.004116000, 0.003570000, 0.004000000, 0.009790345, 0.007111034, 0.002068966, 0.009195172, 0.000000000, 0.001380000, 0.001480000, 0.006894483, 0.011036552,
                                  0.02283077, 0.02657077, 0.02909172, 0.02459793, 0.02597724, 0.03809517, 0.02536483, 0.03724207, 0.04202828, 0.03379448,
                                  0.01846000, 0.02769077, 0.01384615, 0.01747103, 0.02689586, 0.01394207, 0.02227586, 0.01989586, 0.03781241, 0.02469379,
                                  0.02358138, 0.02202483, 0.03353172, 0.02436621, 0.01521172, 0.02687379, 0.03325172, 0.01594828, 0.03329379, 0.01747103, 0.02400897, 0.01640966, 0.02222414, 0.03210345,
                                  0.01067793,
                                  0.01736138, 0.02942414, 0.01103517, 0.02850483, 0.02068759, 0.01594828, 0.03329379 ,0.01747103 ,0.02687379, 0.03325172, 0.02734828 ,0.02996414 ,0.01569586 ,0.02873586, 0.02513655
                                  
                                  
                                  
                                  
),


second_column = c("Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM", "Nicotine 10 mM",
                  "Sucrose", "Sucrose", "Sucrose", "Sucrose", "Sucrose","Sucrose", "Sucrose", "Sucrose", "Sucrose", "Sucrose",
                  "Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM","Nicotine 4 mM", "Nicotine 4 mM", "Nicotine 4 mM",
                  "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2","Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2","Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2","Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2", "Sucrose2",
                  "Nicotine 1 mM", "Nicotine 1 mM", "Nicotine 1 mM", "Nicotine 1 mM", "Nicotine 1 mM", "Nicotine 1 mM","Nicotine 1 mM", "Nicotine 1 mM", "Nicotine 1 mM",
                  "Sucrose3", "Sucrose3", "Sucrose3", "Sucrose3", "Sucrose3","Sucrose3", "Sucrose3", "Sucrose3", "Sucrose3", "Sucrose3",
                  "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM", "Caffeine 10 mM",
                  "Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4","Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4", "Sucrose4",
                  "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM", "Caffeine 5 mM",
                  "Sucrose5", "Sucrose5", "Sucrose5", "Sucrose5", "Sucrose5","Sucrose5", "Sucrose5", "Sucrose5", "Sucrose5", "Sucrose5",
                  "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM", "Caffeine 1.1 mM",
                  "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6","Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6", "Sucrose6"
)
)        

colnames(df)[1] <- "Slope_of_Recovery"
colnames(df)[2] <- "condition"


multi.two.group.unpaired <- df %>% dabest(condition, Slope_of_Recovery,
                                          idx = list(c("Sucrose", "Nicotine 10 mM"),
                                                     c("Sucrose2", "Nicotine 4 mM"),
                                                     c("Sucrose3", "Nicotine 1 mM"),
                                                     c("Sucrose4", "Caffeine 10 mM"),
                                                     c("Sucrose5", "Caffeine 5 mM"),
                                                     c("Sucrose6", "Caffeine 1.1 mM")),
                                          paired = FALSE)
multi.two.group.unpaired.meandiff <- mean_diff(multi.two.group.unpaired)
mean_diff(multi.two.group.unpaired)
plot(multi.two.group.unpaired.meandiff)

# get slope ratios of all comparisons

# subset and get average for each condition

# 0.9729611
mean(df$Slope_of_Recovery[df$condition== "Caffeine 1.1 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose6"])
# df$Slope_of_Recovery[df$condition== "Caffeine 1.1 mM"]/df$Slope_of_Recovery[df$condition== "Sucrose6"]

# 1.370473
mean(df$Slope_of_Recovery[df$condition== "Caffeine 5 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose5"])
#df$Slope_of_Recovery[df$condition== "Caffeine 5 mM"]/df$Slope_of_Recovery[df$condition== "Sucrose5"]

# 3.373033
mean(df$Slope_of_Recovery[df$condition== "Caffeine 10 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose4"])
#df$Slope_of_Recovery[df$condition== "Caffeine 10 mM"][-1:-2]/df$Slope_of_Recovery[df$condition== "Sucrose4"][-8]

# 0.8767682
mean(df$Slope_of_Recovery[df$condition== "Nicotine 1 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose3"])
#df$Slope_of_Recovery[df$condition== "Nicotine 1 mM"]/df$Slope_of_Recovery[df$condition== "Sucrose3"][-1]

# 1.300356
mean(df$Slope_of_Recovery[df$condition== "Nicotine 4 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose2"])
#df$Slope_of_Recovery[df$condition== "Nicotine 4 mM"]/df$Slope_of_Recovery[df$condition== "Sucrose2"]

# 2.224911
mean(df$Slope_of_Recovery[df$condition== "Nicotine 10 mM"])/mean(df$Slope_of_Recovery[df$condition== "Sucrose"])
