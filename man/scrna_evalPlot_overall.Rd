% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrna_plot.R
\name{scrna_evalPlot_overall}
\alias{scrna_evalPlot_overall}
\title{scrna_evalPlot_overall}
\usage{
scrna_evalPlot_overall(
  res,
  agg.by = NULL,
  width = NULL,
  datasets_as_columnNames = TRUE,
  rowAnnoColors = NULL,
  column_names_gp = gpar(fontsize = 10),
  column_title_gp = gpar(fontsize = 12),
  heatmap_legend_param = list(by_row = TRUE, direction = "horizontal", nrow = 1),
  ...
)
}
\arguments{
\item{res}{Aggregated pipeline results (i.e. the output of `runPipeline` or
`aggregateResults`)}

\item{agg.by}{The paramters by which to aggregate.}

\item{width}{The width of individual heatmap bodies.}

\item{datasets_as_columnNames}{Logical; whether dataset names should be 
printed below the columns (except for silhouette) rather than using a
legend.}

\item{rowAnnoColors}{Optional list of colors for the row annotation variables
(passed to `HeatmapAnnotation(col=...)`)}

\item{column_names_gp}{Passed to each calls to `Heatmap`}

\item{column_title_gp}{Passed to each calls to `Heatmap`}

\item{heatmap_legend_param}{Passed to each calls to `Heatmap`}

\item{...}{Passed to each calls to `Heatmap`}
}
\value{
A HeatmapList
}
\description{
Plots a multi-level summary heatmap of many analyses of the `scrna_pipeline`.
}
\examples{
library(ComplexHeatmap)
data("exampleResults")
h <- scrna_evalPlot_overall(exampleResults)
draw(h, heatmap_legend_side="bottom")
}
