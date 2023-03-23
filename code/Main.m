clc,clear;
load("roads.mat");

n=582;
matrix=zeros(n);

for i=1:1:n
    node1=roads(i,1);
    node2=roads(i,2);
    weight=roads(i,3);
    matrix(node1,node2)=weight;
    matrix(node2,node1)=weight;
end

for i=1:1:n
    for j=1:1:n
        if matrix(i,j)==0
            matrix(i,j)=inf;
        end
    end
end

[D,P,min,path]=floyd(matrix,1,582);


load("shortestPath.mat");
load("data.mat")
path=D*100;
pathA=zeros(92,20);
frateA=zeros(92,20);
for i=1:1:92
    for j=1:1:20
        pathA(i,j)=D(i,j);
        frateA(i,j)=frate(i,1);
    end
end

v=60/(3.6);

% 求解整数规划


xij=optimvar('xij',92,20,'Type','integer',"LowerBound",0,"UpperBound",1);

prob = optimproblem;
prob.Objective=sum(frateA.*xij.*pathA/v,"all");
prob.Constraints.c1 = sum(xij,2) == 1;
prob.Constraints.c2 = xij.*pathA/v <= 180;
%prob.Constraints.c3 = sum(xij,1) <= 8;

%problem = prob2struct(prob);
[sol,fval,exitflag] = solve(prob);
