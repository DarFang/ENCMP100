function [Vol,SA]=cone_vol_SA(r,h)
Vol=pi*r.^2*h./3;
SA= pi*r.*(r+sqrt(r.^2+h.^2));
end
