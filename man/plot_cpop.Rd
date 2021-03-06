% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_cpop.R
\name{plot_cpop}
\alias{plot_cpop}
\title{Plot cpop coefficients}
\usage{
plot_cpop(cpop_result, type = "point", s = "lambda.min")
}
\arguments{
\item{cpop_result}{The output of cpop_model}

\item{type}{One of "point", "bar", "text" and "ggraph"}

\item{s}{lasso s}
}
\description{
Plot cpop coefficients
}
\examples{
data(cpop_data_binary, package = 'CPOP')
attach(cpop_data_binary)
set.seed(1)
z1 = pairwise_col_diff(x1)
z2 = pairwise_col_diff(x2)
cpop_result = cpop_model(z1, z2, y1, y2, alpha = 1, n_features = 10)
plot_cpop(cpop_result, type = "point")
plot_cpop(cpop_result, type = "text")
plot_cpop(cpop_result, type = "bar")
plot_cpop(cpop_result, type = "ggraph")
}
