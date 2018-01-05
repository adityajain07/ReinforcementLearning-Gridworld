%% Basic Grid 4

% 4x4 grid with nodes
% 1  2  3  4
% 5  6  7  8
% 9  10 11 12
% 13 14 15 16

%Adjacency Matrix
Adj=zeros(4*4);

Adj(1,[2,5])=1;
Adj(2,[1,6,3])=1;
Adj(3,[2,7,4])=1;
Adj(4,[3,8])=1;
Adj(5,[1,6,9])=1;
Adj(6,[2,5,7,10])=1;
Adj(7,[3,6,8,11])=1;
Adj(8,[4,7,12])=1;
Adj(9,[5,10,13])=1;
Adj(10,[6,9,11,14])=1;
Adj(11,[10,7,12,15])=1;
Adj(12,[8,11,16])=1;
Adj(13,[9,14])=1;
Adj(14,[10,13,15])=1;
Adj(15,[11,14,16])=1;
Adj(16,[12,15])=1;

G = biograph(Adj~=0);

distances=zeros(16,1);
for s=1:16
    [dist, path, pred] = shortestpath(G,s,1,'Method','BFS');
    [dist1, path, pred] = shortestpath(G,s,16,'Method','BFS');
    distances(s)=min(dist,dist1);
end

disp('Shortest Path Length (using BFS)');
disp('from each state to closest');
disp('terminal state:')
distances=reshape(distances,4,4);
disp(distances);