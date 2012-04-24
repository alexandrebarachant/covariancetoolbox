# Covariance Toolbox
-------------------


## Installation

```matlab
installer
```

## List of functions

### Generate SPD matrices 

* Generate a set of SPD matrices according to a wishart distribution : ``` [COV, Sig] =  generate_wishart_set(N,I,Df,Sig)```
  * Inputs :
    * N : the size of the matrices
    * I : the number of matrices
    * Df : the degee of freedom
    * Sig : the parameter of the wishart disribution (if not set, take a random value)
  * Outputs :
    * COV : a set of I covariance matrices
    * Sig : the parameter of the wishart disribution
    
## Examples

#### Generate a set of covraiance matrices and estimate the riemannian mean

```matlab
COV = generate_wishart_set(5,10,11);
C = mean_covariances(COV,'riemann')

C =

   14.4625    1.4332   -3.7638   -2.0052   14.2517
    1.4332   11.5863   -2.2292    7.7445    8.8240
   -3.7638   -2.2292   24.4896   -0.3460   -3.9808
   -2.0052    7.7445   -0.3460   12.1740    6.2503
   14.2517    8.8240   -3.9808    6.2503   37.4416

```
