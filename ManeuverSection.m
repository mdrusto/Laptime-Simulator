classdef ManeuverSection
    
    properties
        StartTime       double {mustBeNonnegative}
        Duration        double {mustBeNonnegative}
        AxesSectionHandle
    end
    
    methods
        function obj = ManeuverSection(startTime, duration, handle)
            if nargin == 0
                obj.StartTime = 0;
                obj.Duration = 0;
                obj.AxesSectionHandle = [];
                disp('Default constructor called')
            elseif nargin == 1
                obj.StartTime = obj.StartTime;
                obj.Duration = obj.Duration;
                obj.AxesSectionHandle = obj.AxesSectionHandle;
            else
                obj.StartTime = startTime;
                obj.Duration = duration;
                obj.AxesSectionHandle = handle;
            end
        end
        
        function stopTime = getStopTime(obj)
            stopTime = obj.StartTime + obj.Duration;
        end
    end
end