# 1. Install and load ggplot2
install.packages("ggplot2")
library(ggplot2)

# 2. Create simple scatter plot using qplot
x <- 1:10
y <- x^2
qplot(x, y)

# 3. Save plot as JPEG
jpeg("scatterplot.jpg")
qplot(x, y)
dev.off()

# 4. Line plot using ggplot and geom_line
df <- data.frame(x, y)
ggplot(df, aes(x, y)) + geom_line()

# 5. Add title and axis labels
ggplot(df, aes(x, y)) + geom_line() +
  labs(title = "Line Plot", x = "X-Axis", y = "Y-Axis")

# 6. Use geom_point() with size and shape
ggplot(df, aes(x, y)) + geom_point(size = 4, shape = 17)

# 7. List files in current directory
list.files()

# 8. Set working directory
setwd("C:/your/folder/path")

# 9. Read CSV from local
local_df <- read.csv("localfile.csv")

# 10. Read CSV from online
url <- "https://people.sc.fsu.edu/~jburkardt/data/csv/hw_200.csv"
online_df <- read.csv(url)

# 11. ggplot scatter colored by category
iris_plot <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()

# 12. Save plot as PDF
pdf("iris_plot.pdf")
print(iris_plot)
dev.off()

# 13. Add horizontal and vertical lines
iris_plot + geom_hline(yintercept = 3) + geom_vline(xintercept = 6)

# 14. ggplot with custom colors
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() + scale_color_manual(values = c("red", "blue", "green"))

# 15. Add annotations
ggplot(df, aes(x, y)) +
  geom_line() +
  annotate("text", x = 5, y = 25, label = "Mid Point") +
  annotate("segment", x = 4, xend = 6, y = 16, yend = 36, arrow = arrow())

# 16. Plot with fixed x and y limits
ggplot(df, aes(x, y)) + geom_line() + xlim(0, 12) + ylim(0, 120)

# 17. Use logical condition to color subset
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Sepal.Length > 6)) +
  geom_point()

# 18. Add legend manually
ggplot(df, aes(x, y)) + geom_line(aes(color = "Data Line")) +
  scale_color_manual(name = "Legend", values = c("Data Line" = "purple"))

# 19. Different line types and widths
ggplot(df, aes(x, y)) + geom_line(linetype = "dashed", size = 1.5)

# 20. Add segments with custom lines
ggplot(df, aes(x, y)) + geom_line() +
  geom_segment(aes(x = 2, xend = 8, y = 4, yend = 64), color = "red")

# 21. Function to read and plot from file
plot_from_file <- function(filepath) {
  data <- read.csv(filepath)
  ggplot(data, aes(x = data[[1]], y = data[[2]])) + geom_point()
}

# 22. Combine geom_point, line, hline
ggplot(df, aes(x, y)) +
  geom_point(color = "blue") +
  geom_line(color = "black") +
  geom_hline(yintercept = 50, color = "red")

# 23. Custom scales and guides
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  scale_color_discrete(name = "Flower Species")

# 24. Read CSV with missing values
na_df <- read.csv("missing.csv", na.strings = c("", "NA"))

# 25. Categorize by two conditions
ggplot(iris, aes(Sepal.Length, Sepal.Width,
                 color = Species, shape = Petal.Length > 3)) +
  geom_point()

# 26. Complex plot with multiple geoms
ggplot(df, aes(x, y)) +
  geom_point(color = "blue") +
  geom_line(color = "darkgreen") +
  theme_minimal()

# 27. Plot with shape and color by condition
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(aes(color = Sepal.Length > 6, shape = Petal.Length > 3))

# 28. Function to save plot as PDF and JPEG
save_plots <- function(plot, name) {
  ggsave(paste0(name, ".pdf"), plot)
  ggsave(paste0(name, ".jpeg"), plot)
}
p <- ggplot(df, aes(x, y)) + geom_line()
save_plots(p, "myplot")

# 29. Custom theme
ggplot(df, aes(x, y)) + geom_line() +
  theme(panel.grid.major = element_line(color = "gray"),
        plot.background = element_rect(fill = "lightyellow"),
        text = element_text(family = "serif", size = 14))

# 30. Use ifelse() to create new variable and plot
iris$SizeGroup <- ifelse(iris$Sepal.Length > 6, "Large", "Small")
ggplot(iris, aes(Sepal.Width, Petal.Length, color = SizeGroup)) + geom_point()
