library(ggplot2)
library(scales)

# https://docs.google.com/spreadsheets/d/1D2qoPJS2D4l0YotTsV1HLJxbTTjD0m6hTfBJ8s8Pnlk/edit#gid=0
# Open the Excel file containing your data: select and copy the data (ctrl + c)
my_data <- read.table(file = "clipboard", sep = "\t", header = TRUE)

p <- ggplot(my_data, aes(x=Time, y=Averages, color = Condition)) +
  geom_line() +
  ylab(label = "Recovery index") +
  xlab(label = "Time (min)")+
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  guides(col=guide_legend("Different experimental conditions")) +
  geom_errorbar(aes(ymin=Averages-Sd, ymax=Averages+Sd), width=.2,
                position=position_dodge(.5)) +
  theme_bw()


p
