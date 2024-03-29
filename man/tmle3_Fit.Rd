% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tmle3_Fit.R
\docType{data}
\name{tmle3_Fit}
\alias{tmle3_Fit}
\alias{fit_tmle3}
\title{TMLE fit object}
\format{\code{\link{R6Class}} object.}
\usage{
tmle3_Fit

fit_tmle3(...)
}
\arguments{
\item{...}{Passes all arguments to the constructor. See documentation for the
Constructor.}
}
\value{
\code{Param_base} object
}
\description{
A tmle_fit object, containing initial and updated estimates, as well as data
about the fitting procedure. TMLE updates are calculated when the object is
constructed.
}
\section{Constructor}{

  \code{fit_tmle3(tmle_task, likelihood, tmle_params, updater, max_it=100, ...)}
                     
  \describe{
    \item{\code{tmle_task}}{A \code{\link{tmle3_Task}} object defining the data and NP-SEM
    }
    \item{\code{likelihood}}{A \code{\link{Likelihood}} object defining the factorized likelihood
    }
    \item{\code{tmle_params}}{A list of parameters inheriting from \code{\link{Param_base}} defining the parameter(s) of interest
    }
    \item{\code{updater}}{A \code{\link{tmle3_Update}} object defining the update procedure, including submodel and loss function
    }
    \item{\code{maxit}}{integer, maximum number of TMLE iterations
    }
    \item{\code{...}}{Not currently used.
    }
    }
}

\section{Methods}{


\describe{
\item{\code{set_timings(start_time, task_time, likelihood_time, params_time, fit_time)}}{
  Provide the timings for the different steps of the TMLE procedure, for later reporting to the user

  \itemize{
    \item{\code{tmle_task}: \code{\link{tmle3_Task}} to get clever covariate values for. 
    If NULL, the \code{tmle_task} used to train the \code{observed likelihood will be used}
    }
  }
  }
\item{\code{estimates(tmle_task = NULL)}}{
  Get the parameter estimates and influence curve values.

  \itemize{
    \item{\code{tmle_task}: \code{\link{tmle3_Task}} to get clever covariate values for. 
    If NULL, the \code{tmle_task} used to train the \code{observed likelihood will be used}
    }
  }
  }
}
}

\section{Fields}{

\describe{
    \item{\code{tmle_task}}{A \code{\link{tmle3_Task}} object defining the data and NP-SEM
    }
    \item{\code{likelihood}}{A \code{\link{Likelihood}} object defining the factorized likelihood
    }
    \item{\code{tmle_params}}{A list of parameters inheriting from \code{\link{Param_base}} defining the parameter(s) of interest
    }
    \item{\code{tmle_names}}{A list of parameter names, obtained by calling \code{param$name} on each parameter
    }
    \item{\code{updater}}{A \code{\link{tmle3_Update}} object defining the update procedure, including submodel and loss function
    }
    \item{\code{steps}}{integer, he number of steps until TMLE converged
    }
    \item{\code{ED}}{vector, the mean of the EIF for all the parameters
    }
    \item{\code{initial_psi}}{vector, the initial parameter estimates
    }
    \item{\code{estimates}}{list, final parameter estimates and ICs
    }
    \item{\code{summary}}{data.table, summary of results
    }
    \item{\code{timings}}{data.frame, timings for each step (provided by \code{tmle3_Fit$set_timings})
    }
}
}

\seealso{
Other Parameters: \code{\link{Param_ATE}},
  \code{\link{Param_ATT}}, \code{\link{Param_TSM}},
  \code{\link{Param_base}}, \code{\link{Param_delta}},
  \code{\link{Param_mean}}, \code{\link{define_param}}
}
\concept{Parameters}
\keyword{data}
