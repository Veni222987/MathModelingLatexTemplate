load("roads.mat");
n=582;
matrix=9999*ones(n);

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