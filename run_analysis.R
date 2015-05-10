
#--------------------------------
# Required libraries

library(dpylr)

#--------------------------------
# Settings and constants

# Filename for final produced data set
final_dataset_file <- "HAR.txt"

# Data file download link, and destination (local) filename
download_link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download_file <- "HAR.zip"

# Directory downloaded ZIP file becomes when unpacked
data_dir <- "UCI HAR Dataset"

# File containing mapping of activity id's to activity labels
activity_names_file <- file.path(data_dir, "activity_labels.txt")

# Files for train and test sets of feature, activity id, and subject id data
x_train_file       <- file.path(data_dir, "train", "X_train.txt")
y_train_file       <- file.path(data_dir, "train", "y_train.txt")
subject_train_file <- file.path(data_dir, "train", "subject_train.txt")
x_test_file        <- file.path(data_dir, "test",  "X_test.txt")
y_test_file        <- file.path(data_dir, "test",  "y_test.txt")
subject_test_file  <- file.path(data_dir, "test", "subject_test.txt")

# Column numbers for features to retain (those with mean and std data)
feature_columns <- c(
    1:6, 
	41:46, 
	81:86, 
	121:126, 
	161:166,
	201:202,
	214:215,
	227:228,
	240:241,
	253:254,
	266:271,
	345:350,
	424:429,
	503:504,
	516:517,
	529:530,
	542:543
	)

# Names for retained columns, corresponding to numbers in feature_columns.
# Use short variables (xyz, mean_std) to improve readability
xyz <- c("X", "Y", "Z")
mean_std <- c("mean", "std")
feature_names <- c(
    paste("time.body.acceleration", rep(mean_std, each=3), xyz),
    paste("time.gravity.acceleration", rep(mean_std, each=3), xyz),
    paste("time.body.acceleration.jerk", rep(mean_std, each=3), xyz),
    paste("time.body.gyroscope", rep(mean_std, each=3), xyz),
    paste("time.body.gyroscope.jerk", rep(mean_std, each=3), xyz),
    paste("time.body.acceleration.magnitude", mean_std),
    paste("time.gravity.acceleration.magnitude", mean_std),
    paste("time.body.acceleration.jerk.magnitude", mean_std),
    paste("time.body.gyroscope.magnitude", mean_std),
    paste("time.body.gyroscope.jerk.magnitude", mean_std),
    paste("frequency.body.acceleration", rep(mean_std, each=3), xyz),
    paste("frequency.body.acceleration.jerk", rep(mean_std, each=3), xyz),
    paste("frequency.body.gyroscope", rep(mean_std, each=3), xyz),
    paste("frequency.body.acceleration.magnitude", mean_std),
    paste("frequency.body.acceleration.jerk.magnitude", mean_std),
    paste("frequency.body.gyroscope.magnitude", mean_std),
    paste("frequency.body.gyroscope.jerk.magnitude", mean_std)
	)


#-----------------------------------
# Active code to obtain and process the data

# Get and unpack the data files
download.file(download_link, destfile=download_file)
unzip(download_file)

# Read the training and test feature data, and merge the two
x_train <- read.table(x_train_file, header=FALSE)
x_test <- read.table(x_test_file, header=FALSE)
x <- rbind(x_train, x_test)

# Retain only the desired mean and std features, and name the columns
x <- x[,feature_columns]
names(x) <- feature_names

# Read the y (activity) test and train data, and merge the two
y_test <- read.table(y_test_file, header=FALSE)
y_train <- read.table(y_train_file, header=FALSE)
y <- rbind(y_train, y_test)
names(y) <- c("activity_id")

# Read the id->label mapping for activities, and merge the train+test 
# activity id's with the associated labels
activity_names <- read.table(activity_names_file, header=FALSE)
names(activity_names) <- c("id","activity")
activities <- merge(y, activity_names, by.x="activity_id", by.y="id")

# Read the subject id's for the train and test data, and merge the two
subjects_train <- read.table(subject_train_file, header=FALSE)
subjects_test <- read.table(subject_test_file, header=FALSE)
subjects <- rbind(subjects_train, subjects_test)

# Merge the activity labels, subject ids, and feature data into one 
# tidy data set
data_set <- cbind("activity"=activities$activity, "subject"=subjects[,1], x)
data_set$subject <- factor(data_set$subject)

# Create a tidy data set with the averaged feature values by each 
# activity and subject
averaged_data_set <- aggregate(. ~ activity*subject, data=data_set, FUN=mean)

# Write the resulting data set to file
write.table(averaged_data_set, file=final_dataset_file, row.names=FALSE)
