classdef TestCornerSubPix
    %TestCornerSubPix
    properties (Constant)
        img = im2uint8([...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 1 1 1 1 0 0 0 0 0;...
            0 0 0 0 1 1 1 1 0 0 0 0 0;...
            0 0 0 0 1 1 1 1 0 0 0 0 0;...
            0 0 0 0 1 1 1 1 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0 0 0 0;...
            ]);
    end
    
    methods (Static)
        function test_1
        	im = TestCornerSubPix.img;
        	corners = {[3,3],[8,8]};
            result = cv.cornerSubPix(im,corners);
        end
        
        function test_error_1
            try
                cv.cornerSubPix();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end

