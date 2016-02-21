# Engagement vs. Performance on the MedU Platform
Repo for Charlie Guthrie's EDSP 2016 project

I'm building a model to predict a student's performance in an online course from his/her level of engagement in the class.  The ultimate goal is to determine which engagement activities contribute most to student performance and understanding.  I'm using a data set from NYU Langone from MedU, an online learning platform for medical courses.  

I spent the day exploring the data and this is what I plan to do to see if I can draw a relationship between student engagement and formative assessment performance. The goal will be to first see if there is a relationship between engagement metrics and aggregate performance across all 23 course cards; and then to see which engagement activities have the biggest influence on that aggregate performance. Later on I'd like to build individual models for each of the different assessment cards (there are about 6 cards with multiple-choice questions on them), to see whether engagement with each activity associated with a unit's assessment contributed to performance.  

##Feature extraction:
1. Create performance score: unweighted average of scores on cards where answertype = MCAD and hasbeenrated = 1.
1. create binary expert variable for every card where expert button is available: #5,9,14-17, 19 and 21
1. create binary hyperlink variable for every card where hyperlinks were available
1. create binary multimedia magnification variable for every card where mm was available
1. Draw histogram of scores and other metrics.

##Modeling
1. build linear regression model for aggregate performance
1. build decision tree model for aggregate performance
1. model performance on each unit

