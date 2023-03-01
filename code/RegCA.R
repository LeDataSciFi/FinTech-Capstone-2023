# Regression test on R

#Loading dfs for both states
CA.df <- read.csv("/Users/juanmozosnieto/Desktop/FinTechCapstone/FinTech-Capstone-2023/input_data/CAreg.csv")

# Building CA hisp variables
CA.df$hisp_rate <- (CA.df$HispanicLatinoPop / CA.df$Tot.Pop) * 100
CA.df$hisp_over_med <- CA.df$hisp_rate > median(CA.df$hisp_rate, na.rm = TRUE)
CA.df$log_num_apps <- log(CA.df$num_applications)

CA.df$which_bank

# Building the initial models
# Fit the linear regression models
model1 <- lm(denial_rate ~ hisp_rate + which_bank, data = CA.df)
model2 <- lm(denial_rate ~ hisp_over_med + which_bank, data = CA.df)
model3 <- lm(log_num_apps ~ hisp_rate + which_bank, data = CA.df)
model4 <- lm(log_num_apps ~ hisp_over_med + which_bank, data = CA.df)

# Extract the coefficients
coef1 <- coef(model1)
coef2 <- coef(model2)
coef3 <- coef(model3)
coef4 <- coef(model4)

# Format the coefficients into equations
eq1 <- paste("denial_rate =", round(coef1[1], 5), "+", round(coef1[2], 5), "* hisp_rate +", round(coef1[3], 5), "* which_bankBank of West")
eq2 <- paste("denial_rate =", round(coef2[1], 5), "+", round(coef2[2], 5), "* hisp_over_med +", round(coef2[3], 5), "* which_bankBank of West")
eq3 <- paste("log_num_apps =", round(coef3[1], 5), "+", round(coef3[2], 5), "* hisp_rate +", round(coef3[3], 5), "* which_bankBank of West")
eq4 <- paste("log_num_apps =", round(coef4[1], 5), "+", round(coef4[2], 5), "* hisp_over_med +", round(coef4[3], 5), "* which_bankBank of West")

# Combine the equations
eqs <- cbind(eq1, eq2, eq3, eq4)
eqs


# Code With Interaction Terms between predictor variables
# Fit the linear regression models with an interaction term
model1 <- lm(denial_rate ~ hisp_rate * which_bank, data = CA.df)
model2 <- lm(denial_rate ~ hisp_over_med * which_bank, data = CA.df)
model3 <- lm(log_num_apps ~ hisp_rate * which_bank, data = CA.df)
model4 <- lm(log_num_apps ~ hisp_over_med * which_bank, data = CA.df)

# Extract the coefficients
coef1 <- coef(model1)
coef2 <- coef(model2)
coef3 <- coef(model3)
coef4 <- coef(model4)

# Format the coefficients into equations
eq1 <- paste("denial_rate =", round(coef1[1], 5), "+", round(coef1[2], 5), "* hisp_rate +", round(coef1[3], 3), "* which_bankBank of West +", round(coef1[4], 3), "* hisp_rate:which_bankBank of West")
eq2 <- paste("denial_rate =", round(coef2[1], 5), "+", round(coef2[2], 5), "* hisp_over_med +", round(coef2[3], 3), "* which_bankBank of West +", round(coef2[4], 3), "* hisp_over_med:which_bankBank of West")
eq3 <- paste("log_num_apps =", round(coef3[1], 5), "+", round(coef3[2], 5), "* hisp_rate +", round(coef3[3], 3), "* which_bankBank of West +", round(coef3[4], 3), "* hisp_rate:which_bankBank of West")
eq4 <- paste("log_num_apps =", round(coef4[1], 5), "+", round(coef4[2], 5), "* hisp_over_med +", round(coef4[3], 3), "* which_bankBank of West +", round(coef4[4], 3), "* hisp_over_med:carb")

# Combine the equations
eqs <- cbind(eq1, eq2, eq3, eq4)

# Display the equations
print(eqs)


















