% tutorial 7 t6
% N=6;
% input=[[0;1],[3;5],[5;4],[5;6],[8;7],[9;7]];
% x_mean=[sum(input(1,:))/N;sum(input(2,:))/N];
% input_update = input-x_mean
% C=(1/N)*(input_update*input_update.')
% [V,D]=eig(C)
% if D(1)>D(4)
%     Vs=V(:,1);
% else
%     Vs=V(:,2);
%     Vs
% end
% y=transpose(Vs)*input_update
 
 % tutorial 7 t4  
 N=4;
input=[[-1;-1;0],[0;0;0],[1;2;0],[0;-1;0]];
x_mean=[sum(input(1,:))/N;sum(input(2,:))/N;sum(input(3,:))/N];
input_update = input-x_mean
C=(1/N)*(input_update*input_update.')
[V,D,]=eig(C)
if D(1)>max(D(5),D(9))
        if D(5)>D(9)
        Vs=[V(:,1),V(:,2)];
        else
        Vs=[V(:,1),V(:,3)];
        end
elseif D(5)>max(D(1),D(9))
    if D(1)>D(9)
        Vs=[V(:,2),V(:,1)];
        else
        Vs=[V(:,2),V(:,3)];
        end
elseif D(9)>max(D(1),D(5))
    if D(1)>D(5)
        Vs=[V(:,3),V(:,1)];
        else
        Vs=[V(:,3),V(:,2)];
    end
    Vs
end
y=transpose(Vs)*input_update
x_mean=[sum(y(1,:))/N;sum(y(2,:))/N];
y_update = y-x_mean
C1=(1/N)*(y_update*y_update.')
