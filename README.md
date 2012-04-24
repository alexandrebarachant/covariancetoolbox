# Covariance Toolbox
-------------------


## Instalation

```matlab
installer
```

## List of functions

### Generate SPD matrices 

* Generate a set of SPD matrices according to a wishart distribution : ```matlab [COV, Sig] =  generate_wishart_set(N,I,Df,Sig)```
```matlab

 Generate a set of covariance matrices according to a Wishart distrib.
  Inputs :
    N : the size of the matrices
    I : the number of matrices
    Df : the degee of freedom
    Sig : the parameter of the wishart disrib 
 
  Outputs :
    COV : a set of I covariance matrices
    Sig : the parameter of the wishart disrib 
```
