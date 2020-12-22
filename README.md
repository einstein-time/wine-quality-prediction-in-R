# wine-quality-prediction-in-R
In this R tutorial, we will be estimating the quality of wines with regression trees and model trees. Machine learning has been used to discover key differences in the chemical composition of wines from different regions or to identify the chemical factors that lead a wine to taste sweeter. In most cases, wine experts rate wine that can predict whether the wine is labeled as the bottom or top shelf.  

The methods used will be regression trees and model trees to create a system capable of mimicking ratings of wine. This will allow the winemakers to identify the key factors that contribute to better-rated wines. 

The rpart() will be used to specify quality as the outcome variable and use the dot notation to allow all the other columns in the wine_train data frame to be used in predictors.fallen.leaves() addition to the decision tree This addition will show visualizations with the dissemination of regression tree results, as they are readily understood even without a mathematics background. 

The lead nodes are predicted values for the examples reaching that node. Correlation We can now check the correlation between the predicted and actual quality values provides a simple way to gauge the model’s performance. As one can see that the outcome is 0.54, which is acceptable but not ideal. This correlation only measures how strong the predictions are related to the true value. This is not a measure of how far off the predictions were from the true values. Conclusion: Decision trees were used for numeric prediction to model the wine data. The model trees, which builds a regression model at each leaf node in a hybrid approach. However, the latest cor() did not improve much, it did surpass the performance of the neural network model published. 

Our model output was close to the published mean absolute error value of 0.45 for the support vector machine model. This was a much simpler learning method for the data used.
