% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coloring.R
\name{get.balanced.coloring.Kamei}
\alias{get.balanced.coloring.Kamei}
\title{Find the minimal balanced coloring of the graph using the algorithm introduced by Kamei and Cock.}
\usage{
get.balanced.coloring.Kamei(
  raw_edges = NA,
  file = NA,
  sep = " ",
  header = F,
  directed = F,
  look.for.no.input.nodes = T
)
}
\arguments{
\item{raw_edges}{2 or 3 column data frame specifying the list of edges (specify only one file or raw_edges)}

\item{file}{Path to the file with the edgelist. Make sure to specify "sep" (if different from " ") and "header" (if different from FALSE) to be passed to the read.table function.}

\item{sep}{To be used with the "file" variable. Defines the field separator character to be used in the read.table() function. Is set with " " by default.}

\item{header}{To be used with the "file" variable. A logical value indicating whether "file" contains the names of the variables as its first line. Is set as FALSE by default.}

\item{directed}{A logical value indicating whether the network is directed or not. Is set as FALSE by default.}

\item{look.for.no.input.nodes}{Only valid for the directed case.
Coloring is balanced if all the nodes of the same color have same ISCVs (Input Set Color Vectors as defined in SI VI of Leifer I, Morone F, Reis SDS, Andrade JS, Sigman M, Makse HA. Circuits with broken fibration symmetries perform core logic computations in biological networks).
Obvious problem with this definition is that all the nodes that have no inputs have the same ISCVs and therefore have to be the same color.
This may cause a cascade effect where nodes that receive from nodes with no inputs will also have the color same to each other.
There is no reason for the nodes that are assigned the same color as a result of this problem to be synchronized, because the information they receive is different.
To fight this, the algorithm will force all the nodes with no inputs to have different colors at every iteration.
To turn this functionality off set "look.for.no.input.nodes" as FALSE. Make sure you understand what you are doing.}
}
\value{
Data frame with 2 columns: Name (for the node name) and Color (for the node color id corresponding to the minimal balanced coloring).
}
\description{
The get.balanced.coloring.Kamei() function finds a minimal balanced coloring based on the algorithm developed in (1).
This function supports directed and undirected cases as well as weighted and unweighted cases.
Directionality is defined by the variable "directed" and weightedness is defined by the number of columns in the input data (2 for undirected and 3 for directed).
Input graph is specified using "raw_edges", "file", "sep" and "header" variables.
(1) Kamei H, Cock PJ. A. Computation of balanced equivalence relations and their lattice for a coupled cell network. SIAM J Appl Dyn Syst. 2013;12,352-382.
}
