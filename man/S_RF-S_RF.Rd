% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SRF.R
\name{S_RF-S_RF}
\alias{S_RF-S_RF}
\alias{S_RF}
\title{honstRF Constructor}
\usage{
S_RF(feat, tr, yobs, mtry = ncol(feat), nodesizeSpl = 1,
  nodesizeAvg = 3, replace = TRUE, ntree = 1000,
  sample_fraction = 0.9, nthread = 4, splitratio = 0.5,
  alwaysTr = FALSE)
}
\arguments{
\item{feat}{A data frame of all the features.}

\item{tr}{A numeric vector containing 0 for control and 1 for treated 
variables.}

\item{yobs}{A numeric vector containing the observed outcomes.}

\item{mtry}{Number of variables to try at each node.}

\item{nodesizeSpl}{Minimum observations contained in terminal nodes. The
default value is 1.}

\item{nodesizeAvg}{Minimum size of terminal nodes for averaging dataset. The
default value is 3.}

\item{replace}{An indicator of whether sampling of training data is with 
replacement. The default value is TRUE.}

\item{ntree}{Number of trees to grow. The default value is 1000.}

\item{sample_fraction}{TODO: Add Description}

\item{nthread}{Number of threads to train and predict the forest. The
default number is 4.}

\item{splitratio}{Proportion of the training data used as the splitting
dataset. The default value is 0.5.}

\item{alwaysTr}{weather or not we always test weather we should split on the
treatment assignment. Currently only alwaysTr=FALSE is implemented.}
}
\description{
This is an implementation of the S-learner combined with honest
  random forest for both response functions
}
