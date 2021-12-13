A = [1 -4 2 1 16 4 ; -5 3 -21 -2 -4 5 ; 20 5 1 -1 1 5; -2 8 0 -1 0 1; 4 -2 5 -25 -5 0; 2 -1 5 0 -4 -24];
B = [-25;-68;22;12;20;67];
P = [1; 0; 1; 0; 1; 1];
n = input('Enter enter no of iterations: ');
e = 0.0001;
N = length(B);
X = zeros(N,1);
Y = zeros(N,1);

for j=1:n
    for i=1:N
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i) = X(i)
    end
    fprintf('Iteration no %d\n',j);
    X
    if abs(Y-X)<e
        break
    end
    Y = X;
end
        
     
%[1 -4 2 1 16 4 ; -5 3 -21 -2 -4 5 ; 20 5 1 -1 1 5; -2 8 0 -1 0 1; 4 -2 5 -25 -5 0; 2 -1 5 0 -4 -24]
%[-25;-68;22;12;20;67]
%[1; 0; 1; 0; 1; 1]
