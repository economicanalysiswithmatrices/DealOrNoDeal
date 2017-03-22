function [boxes] = randbox()
boxes = ones(1,22);
values = [0.01,0.1,0.5,1,5,10,50,100,250,500,750,1000,3000,5000,10000,15000,20000,35000,50000,75000,100000,250000];
for i=1:22;
    v=randi(22);
    while(values(v)==0);
        v=randi(22);
    end
    boxes(i)=values(v);
    values(v) = 0;
end
end