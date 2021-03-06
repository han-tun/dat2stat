% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dat2tib.R
\name{dat2tib}
\alias{dat2tib}
\title{dat2tib}
\usage{
dat2tib(data, model, outcome, trt, tran = NULL, nest_var, contrast)
}
\arguments{
\item{data}{A data frame}

\item{model}{Full modeling function}

\item{outcome}{Outcome variable used in the model}

\item{trt}{Treatment arm or grouping variable used in the model}

\item{tran}{Specify how outcome was previously transformed prior to modeling}

\item{nest_var}{Grouping variable to be used for the data nesting}

\item{contrast}{Specify if difference or ratio should be provided for group comparison}
}
\value{

}
\description{
This function accepts data, grouping, and model specifications from the user and produces a Master Tibble.  The Master
Tibble contains summary statistics, estimated marginal means, and contrasts for all possible combinations of nest_var and trt.
}
\examples{
\dontrun{
dat2tib(data = cdisc_data, 
        model = lm(aval ~ arm + age + sex),
        outcome = aval,
        trt = arm,
        nest = param,
        tran = "none")
        }

}
