#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
IntegerVector dbl2int_cpp(double x) {
  IntegerVector res(3);
  NumericVector x2(1); x2[0] = x;
  res[0] = x;
  res[1] = int(x);
  res[2] = as<IntegerVector>(x2)[0];
  return(res);
}
