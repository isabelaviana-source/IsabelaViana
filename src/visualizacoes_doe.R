# Visualization Functions in R

This file contains various functions for generating visualizations in R, including:

## 1. Pareto Plot
```R
pareto_plot <- function(data, response) {
    # Create Pareto plot
    library(ggplot2)
    ggplot(data, aes_string(x = response)) + 
        geom_bar() + 
        ggtitle("Pareto Plot") + 
        theme_minimal()
}
```

## 2. Main Effects Plot
```R
main_effects_plot <- function(model) {
    # Main effects plot
    library(ggplot2)
    emmeans::emmip(model)
}
```

## 3. Interaction Contour Plots
```R
interaction_contour <- function(model) {
    # Interaction contour plots
    library(ggplot2)
    library(plotly)
    p <- ggplot(model, aes(x = factor1, y = factor2, z = response)) + 
        geom_contour_filled() + 
        theme_minimal()
    ggplotly(p)
}
```

## 4. Correlation Matrix
```R
correlation_matrix <- function(data) {
    # Create correlation matrix 
    library(corrplot)
    cor_matrix <- cor(data)
    corrplot(cor_matrix, method = 'circle')
}
```

## 5. Box Plots
```R
box_plot <- function(data, group_var) {
    # Create box plots
    library(ggplot2)
    ggplot(data, aes_string(x = group_var, y = "response")) + 
        geom_boxplot() + 
        theme_minimal()
}
```

## 6. Heatmaps
```R
heatmap_plot <- function(data) {
    # Create heatmap
    library(ggplot2)
    ggplot(data, aes(x = Var1, y = Var2, fill = value)) + 
        geom_tile() + 
        theme_minimal()
}
```
