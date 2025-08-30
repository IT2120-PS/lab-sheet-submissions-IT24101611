setwd ("C:\\Users\\User\\OneDrive\\Desktop\\IT24101611")
getwd()

#Q1
# Read data into a dataframe
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times
fix(Delivery_Times)



#2
# Histogram with 9 classes (20–70)
hist(Delivery_Times$Delivery_Time,
     breaks = seq(20, 70, by = (70-20)/9),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "pink",
     border = "black")




#Q4
# Make sure the column is named properly
colnames(Delivery_Times) <- c("Delivery_Time")

# Define class intervals (same as histogram: 9 classes, 20–70)
breaks <- seq(20, 70, by = (70-20)/9)

# Create histogram object without plotting
hist_data <- hist(Delivery_Times$Delivery_Time,
                  breaks = breaks,
                  right = FALSE,
                  plot = FALSE)

# Get cumulative frequencies
cum_freq <- cumsum(hist_data$counts)

# Midpoints of intervals
midpoints <- hist_data$mids

# Plot ogive
plot(midpoints, cum_freq, type = "o", col = "blue", lwd = 2, pch = 16,
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")







