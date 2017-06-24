classdef NullableNegativeVector
    %NULLABLENEGATIVEVECTOR vector that can have negative indexes
    %   Detailed explanation goes here
    
    properties
        x
        y
    end
    
    methods
          function obj = NullableNegativeVector(y)
              obj.y=y;
              obj.x=0:1:size(y,2)-1;
          end
          
          function r = get(obj, index)
                xindex = find(obj.x == index);
                if isempty(xindex) 
                    r = 0;
                else    
                    r = obj.y(xindex);
                end    
          end
          
          function r = flip(obj)
                obj.y = fliplr(obj.y);
                obj.x = -fliplr(obj.x);
                r = obj;
          end
          
          function r = shift(obj, step)
            obj.x = obj.x + step;
            r = obj;
          end
          
          function r = getLeftOrdinate(obj)
             r = min(obj.x);   
          end
          
           function r = getRightOrdinate(obj)
             r = max(obj.x);   
          end
%           function r = add(nnv1, nnv2)
%               
%           end
          
          
    end
    
    
    
end

