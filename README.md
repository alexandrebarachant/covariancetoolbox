# Covariance Toolbox
-------------------


## Installation

```matlab
installer
```

## List of functions

### Generate SPD matrices 

* Generate a set of SPD matrices according to a wishart distribution : ``` [COV, Sig] =  generate_wishart_set(N,I,Df,Sig)```

### Distances

* Distance between two covariance matrices (by default euclidean metric) : ```d = distance(C1,C2,metric)```
* Kullback-Leibler distance : ```d = distance_kullback(C1,C2)```
* Log-euclidean distance  : ```d = distance_logeuclid(C1,C2)```
* Riemannian distance  : ```d = distance_riemann(C1,C2)```
* Optimal transportation distance :  ```d = distance_opttransp(C1,C2)```

### Estimation 

* SCM
* Fixed point
* Normalized SCM
* MCD

### Geodesic

* Geodesic between two covariance matrices (by default euclidean metric) : ```Ct = geodesic(C1,C2,t,metric)```
* Euclidean geodesic : ```Ct = euclidean_geodesic(C1,C2,t)```
* Log-euclidean geodesic : ```Ct = logeuclidean_geodesic(C1,C2,t)```
* Riemannian geodesic : ```Ct = riemann_geodesic(C1,C2,t)```
* Optimal transpotation geodesic : ```Ct = opttransp_geodesic(C1,C2,t)```



## Examples

#### Generate a set of covraiance matrices and estimate the riemannian mean

```matlab
% generate a wishart set of 10 5x5 covariances matrices with a degree of freedom equal to 11
COV = generate_wishart_set(5,10,11);

% estimate the Riemannian mean of this set.
C = mean_covariances(COV,'riemann')

C =

   14.4625    1.4332   -3.7638   -2.0052   14.2517
    1.4332   11.5863   -2.2292    7.7445    8.8240
   -3.7638   -2.2292   24.4896   -0.3460   -3.9808
   -2.0052    7.7445   -0.3460   12.1740    6.2503
   14.2517    8.8240   -3.9808    6.2503   37.4416

```
