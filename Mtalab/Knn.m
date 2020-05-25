clc
clear
%% knn 
% variable b:  distance between existing points and new sample

% Euclidean distance of vectors 2D
a=[4,0]; % newSample new data

b=[5,1;  % existing data point (2D) 
   5,-1;
   3,0;
   2,1;
   4,2];

sizeb=size(b);
length_b=[sizeb(1)];
% distance=zeros(length_b,1); % b lines * 1 column

% calculate distance form all old points to one new point
for i =0: length_b-1 % 
    i=i+1;
    pix_1 = [a(1,1),a(1,2)]; % new point
    pix_2 = [b(i,1),b(i,2)];
    
    b(i,3) = sqrt( (pix_1(1,1)-pix_2(1,1)  )^2 + ( pix_1(1,2)-pix_2(1,2)  )^2 );
end

% find closest point
ranked_distance=sortrows(b,sizeb(2)+1);



% %% ---------------------------------------------------------
% %% Euclidean distance of vectors 3D
% a=[4,0,0]; % newSample new data 
% 
% b=[1,2,1;  % old data (3D) 
%    1,3,1;
%    1,8,1;
%    1,5,1;
%    1,6,1];
% 
% sizeb=size(b);
% length_b=[sizeb(1)];
% distance=zeros(length_b,1); % b ? 1? 
% 
% % calculate distance form all old points to one new point
% for i =0: length_b-1 
%     i=i+1;
%     pix_1 = [a(1,1),a(1,2),a(1,3)];
%     pix_2 = [b(i,1),b(i,2),b(i,3)];
%     
%     distance(i) = sqrt( (pix_1(1,1)-pix_2(1,1)  )^2 + ( pix_1(1,2)-pix_2(1,2)  )^2 + ( pix_1(1,3)-pix_2(1,3)  )^2);
%     b(i,4) = sqrt( (pix_1(1,1)-pix_2(1,1)  )^2 + ( pix_1(1,2)-pix_2(1,2)  )^2 );
% end
% sizeb(2)
% % find closest point
% ranked_distance3D=sortrows(b,sizeb(2)+1);

