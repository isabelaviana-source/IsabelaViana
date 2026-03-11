# Factorial Design Analysis Function

factorial_design_analysis <- function(data, factors) {
  model <- aov(response ~ as.factor(factors), data=data)
  summary(model)
}

# Response Surface Methodology Function

response_surface_methodology <- function(data, predictors) {
  model <- lm(response ~ ., data=data)
  summary(model)
}

# ANOVA with Blocks Function

anova_with_blocks <- function(data, blocks, factors) {
  model <- aov(response ~ as.factor(blocks) + as.factor(factors), data=data)
  summary(model)
}

# Model Diagnostics Function

model_diagnostics <- function(model) {
  par(mfrow=c(2,2))
  plot(model)
}

# Insights Extraction Function

insights_extraction <- function(model) {
  summary(model)
  anova(model)
}