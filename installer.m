% Installer for the Covariance toolbox


HOME = pwd;

if isunix
    path([HOME,'/lib'],path);
    path([HOME,'/lib/distance'],path);
    path([HOME,'/lib/geodesic'],path);
    path([HOME,'/lib/riemann'],path);
    path([HOME,'/lib/visu'],path);
    path([HOME,'/lib/estimation'],path);
    path([HOME,'/lib/mean'],path);
    path([HOME,'/lib/simulation'],path);
else
    path([HOME,'\lib'],path);
    path([HOME,'\lib\distance'],path);
    path([HOME,'\lib\geodesic'],path);
    path([HOME,'\lib\riemann'],path);
    path([HOME,'\lib\visu'],path);
    path([HOME,'\lib\estimation'],path);
    path([HOME,'\lib\mean'],path);
    path([HOME,'\lib\simulation'],path);
end    
disp('Covariance toolbox activated');
