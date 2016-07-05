classdef TestToBeTestedGUIDE < matlab.unittest.TestCase
%Tester Automatic tests of GUIDE programs
% Author: Zaki
% 5 July 2016
% Tested on R2013b
%
% I'm trying to emulate Android's espresso styled GUI testing framework
% https://developer.android.com/training/testing/ui-testing/espresso-testing.html
%
%
% This MATLAB implementation was helped by the following posts:
% https://www.mathworks.com/matlabcentral/answers/161545-call-callback-without-mmouse
% and http://stackoverflow.com/questions/5798109/how-can-i-mimic-a-user-click-to-invoke-a-callback-function-for-a-gui-object

properties
    prevDir
end

methods (TestClassSetup)
    function addPath(testCase)
        testCase.prevDir = pwd;
        testCase.addTeardown(@testCase.changeDirectoryBack);
        import matlab.unittest.fixtures.PathFixture

        f = testCase.applyFixture(PathFixture('..'));
        disp(['Added to path: ' f.Folder])
    end
end
    
methods (Test)
    function test1(testCase)
        % open GUI
        h = toBeTested;

        % 
        pop = findobj(h, 'Tag','popupmenu1');
        set(pop, 'Value', 2)

        OKbut = findobj(h, 'Tag','OKButton');
        performCallback(OKbut);

        close(h);
        
            function performCallback(hObject)
                callbackCell = get(hObject,'Callback');
                feval(callbackCell,hObject,[]);
            end
    end
end

methods
    function changeDirectoryBack(testCase)
        cd(testCase.prevDir);
    end
end

end % classdef