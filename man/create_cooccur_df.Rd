% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cooccur_pair.R
\name{create_cooccur_df}
\alias{create_cooccur_df}
\title{Create Co-occurrence Data Frame from Matrix}
\usage{
create_cooccur_df(input_matrix, threshold = NULL)
}
\arguments{
\item{input_matrix}{A matrix (dense or sparse) where non-zero entries represent co-occurring pairs. The function will automatically convert the matrix to a sparse format for efficiency.}

\item{threshold}{An optional numeric value to deal with rare code. If provided, the function filters out pairs with a count less than or equal to this threshold. The default is \code{NULL}, meaning no filtering is applied.}
}
\value{
A data frame with three columns:
\describe{
\item{code1}{The row index of the co-occurring pair (1-based).}
\item{code2}{The column index of the co-occurring pair (1-based).}
\item{count}{The number of co-occurrences between \code{code1} and \code{code2}.}
}
}
\description{
This function takes an input matrix (typically a sparse matrix) and returns a data frame representing the co-occurrences between pairs of items. Each pair consists of a row index and a column index (i.e., co-occurring pairs) with an associated count, representing the number of co-occurrences.
}
\examples{
# Example usage:
input_matrix <- matrix(c(0, 1, 2, 0, 3, 0, 4, 0), nrow = 4, ncol = 4)
cooccur_df <- create_cooccur_df(input_matrix, threshold = 1)

}
