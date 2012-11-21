# Covariance Toolbox
-------------------
This toolbox contain a set of matlab functions dedicated to covariance matrices estimation and manipulation.
The key functions mainly focus on Riemanian geometry of SPD matrices, with distance, geodesic, tangent space and mean estimation of covariance matrices under different metrics.

This toolbox is licenced under GPLv3.
 

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
* Set of covariance matrices for a set of 3D signals X : Nchannels x Tsamples x Ntrials ```COV = covariances(X)```

### Geodesic

* Geodesic between two covariance matrices (by default euclidean metric) : ```Ct = geodesic(C1,C2,t,metric)```
* Euclidean geodesic : ```Ct = euclidean_geodesic(C1,C2,t)```
* Log-euclidean geodesic : ```Ct = logeuclidean_geodesic(C1,C2,t)```
* Riemannian geodesic : ```Ct = riemann_geodesic(C1,C2,t)```
* Optimal transpotation geodesic : ```Ct = opttransp_geodesic(C1,C2,t)```

### Mean

* Mean of a set of covariances matrices ( by default euclidean metric) : ```C = mean_covariances(COV,metric)```
* Riemannian mean : ```C = riemann_mean(COV)```
* Riemannian median : ```C = riemann_median(COV)```
* Riemannian trimmed mean (excluding outliers) : ```C = riemann_trimmed_mean(COV)```
* Log-euclidean mean : ```C = logeuclid_mean(COV)```
* Optimal transportation mean : ```C = opttransp_mean(COV)```
* Geodesic iterative mean : ```C = geodesic_mean(COV,metric)```

### Riemannian utils

* Canonical logarithm of a covariance matrix : ```lC = logm(C)```
* Canonical exponential of a covariance matrix : ```eC = expm(C)```
* Riemannian logaritmic map : ```S = RiemannLogMap(C)```
* Riemannian exponential map : ```C = RiemannExpMap(S)```
* Tangent space mapping of a set of covariance matrices : ```T = Tangent_space(COV,C)```
* Manifold mapping of a set of tangent vectors : ```COV = UnTangent_space(T,C)```
* Tangent vector of a covariance matrix : ```t = tangent_vector(C1,C)```
* Geodesic filtering of a set of covariance matrices : ```COVf = geodesic_filter(COV,C,W)```

### Visualisation

* plot the manifold of a set of 2x2 covariance matrices : ```manifold_plot(COV,label,boundary)```

## Examples

#### Generate a set of covariance matrices and estimate the riemannian mean

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
