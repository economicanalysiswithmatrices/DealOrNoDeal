function [offer] = bankersoffer(boxes, size, yourbox)
if size > 16
    offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([30,40])/100);
    offer = round(offer, -2);
elseif size > 12
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([35,45])/100);
    offer = round(offer, -2);
elseif size > 8
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([40,50])/100);
    offer = round(offer, -2);
elseif size > 5
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([45,55])/100);
    offer = round(offer, -2);
elseif size > 3
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([55,65])/100);
    offer = round(offer, -2);
elseif size > 2
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([60,70])/100);
    offer = round(offer, -2);
elseif size > 0
        offer = (sum(boxes)+yourbox)/(size+1);
    offer = offer*(randi([60,70])/100);
    offer = round(offer, -2);
    
end
end

