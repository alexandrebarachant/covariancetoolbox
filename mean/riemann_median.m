% A = riemann_median(B,epsilon,tol)
%
% Calcul du barycentre des matrice de covariances.
% A : baricentre des K matrices NxN
%
% B : Matrice NxNxK
% epsilon : Pas de la descente de gradient
% tol : arret de la descente si le critère < tol


function [A critere niter] = riemann_median(B,args)

N_itermax = 100;
if (nargin<2)||(isempty(args))
    tol = 10^-5;
    A0 = mean(B,3);
else
    tol = args{1};
    A0 = args{2};
end

T = Tangent_space(B,A0);
TA = median(T,2);
fc = sum(mean(abs(T),2));
A = UnTangent_space(TA,A0);
niter = 1;


while (niter<N_itermax)
    niter = niter+1;
    T = Tangent_space(B,A);
    TA = median(T,2);
    fcn = sum(mean(abs(T),2));
    A = UnTangent_space(TA,A);
    conv = abs((fcn-fc)/fc);
    if conv<tol
       break; 
    end
    fc = fcn;
end

if niter==N_itermax
    disp('Warning : Nombre d''itérations maximum atteint');
end

critere = fc;
