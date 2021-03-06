% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TRF.R
\docType{class}
\name{T_RF-class}
\alias{T_RF-class}
\title{ThRF constructor}
\description{
The `T_RF` object is T-learner combined with honest random
forest used for both response functions
}
\section{Slots}{

\describe{
\item{\code{feature_train}}{A data frame of all training features.}

\item{\code{tr_train}}{A vector containing 0 for control and 1 for treated variables.}

\item{\code{yobs_train}}{A vector containing the observed outcomes.}

\item{\code{m_y_t}}{contains an honest random forest predictor for the treated group}

\item{\code{m_y_c}}{contains an honest random forest predictor for the control group}

\item{\code{creator}}{A function which creates a T_RF}
}}

