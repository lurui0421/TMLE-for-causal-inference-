% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Param_TSM.R
\docType{data}
\name{Param_TSM}
\alias{Param_TSM}
\title{Treatment Specific Mean}
\format{\code{\link{R6Class}} object.}
\usage{
Param_TSM
}
\value{
\code{Param_base} object
}
\description{
Parameter definition for the Treatment Specific Mean (TSM): $E_W[E_{Y|A}(Y|A=a|W)|$. Currently supports multiple static intervention nodes.
Does yet not support dynamic rule or stochastic interventions.
}
\section{Current Issues}{

\itemize{
  \item clever covariates doesn't support updates; always uses initial (necessary for iterative TMLE, e.g. stochastic intervention)
  \item doesn't integrate over possible counterfactuals (necessary for stochastic intervention)
  \item clever covariate gets recalculated all the time (inefficient)
}
}

\section{Constructor}{

  \code{define_param(Param_TSM, observed_likelihood, intervention_list, ..., outcome_node)}

  \describe{
    \item{\code{observed_likelihood}}{A \code{\link{Likelihood}} corresponding to the observed likelihood
    }
    \item{\code{intervention_list}}{A list of objects inheriting from \code{\link{LF_base}}, representing the intervention.
    }
    \item{\code{...}}{Not currently used.
    }
    \item{\code{outcome_node}}{character, the name of the node that should be treated as the outcome
    }
    }
}

\section{Fields}{

\describe{
    \item{\code{cf_likelihood}}{the counterfactual likelihood for this treatment
    }
    \item{\code{intervention_list}}{A list of objects inheriting from \code{\link{LF_base}}, representing the intervention
    }
}
}

\seealso{
Other Parameters: \code{\link{Param_ATE}},
  \code{\link{Param_ATT}}, \code{\link{Param_base}},
  \code{\link{Param_delta}}, \code{\link{Param_mean}},
  \code{\link{define_param}}, \code{\link{tmle3_Fit}}
}
\concept{Parameters}
\keyword{data}
