#define your methods in .R files like this one in the methods subdirectory
#each method should take arguments input and args, like the example
#the output should be a list of the appropriate "output" format (defined in the README)
library(smash)

#runs wavelet denoising with TI-thresholding in matlab and jointly estimates the variance function
#inputs:
#input: a list containing x: the data, sig.true the true sigma values, and sig.est: the estimated sigma values
#args: a list containing family and filter.number, which determine the wavelet basis used, and method: used to estimate the variance function, using either "rmad" or "smash"
#
#returns the estimated mean function
tithresh.wrapper = function(input, args) {
  mu.est = ti.thresh(input$x, method = args$method, filter.number = args$filter.number, family = args$family)
  return(mu.est)
} 