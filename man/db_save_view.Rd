% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/src-vertica.R
\name{db_save_view}
\alias{db_save_view}
\title{Saves a tbl object as a view in Vertica.}
\usage{
db_save_view(table, name, temporary = FALSE)
}
\arguments{
\item{table}{The local R-variable name of the tbl_vertica object to be saved as a view in Vertica.}

\item{name}{The name with which to associate the new view in Vertica.}

\item{temporary}{(Default: FALSE) TRUE if the saved view is to be a local temporary one. Note that saving locally will reduce
available parallelism to the native data loader.}
}
\value{
A new tbl_vertica reference to the saved view.
}
\description{
If the save is defined to be temporary (non-default behavior), the view will be deleted
upon termination of the session.
}
\details{
Note that all views (temporary and permanent) are treatable as tbl objects in vertica.dplyr.
}
\examples{
\dontrun{
vertica <- src_vertica("VerticaDSN")
table1 <- tbl(vertica,"some_table")
table1_modified <- filter(table1,foo > 3)
new_view <- db_save_view(table1_modified,name="some_table_filtered")
}
}

