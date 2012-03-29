
function Feat = Tangent_space(COV,C)
NTrial = size(COV,3);
N_elec = size(COV,1);
Feat = zeros(N_elec*(N_elec+1)/2,NTrial);

if nargin<2
    C = riemann_mean(COV);
end

index = reshape(triu(ones(N_elec)),N_elec*N_elec,1)==1;

for i=1:NTrial
    %Tn =  C^-0.5*RiemannLogMap(C,COV(:,:,i))*C^-0.5;
    Tn = tangent_vector(C,COV(:,:,i));
    tmp = reshape(sqrt(2)*triu(Tn,1)+diag(diag(Tn)),N_elec*N_elec,1);
    Feat(:,i) = tmp(index);
end
