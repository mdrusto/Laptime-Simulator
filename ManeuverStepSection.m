classdef ManeuverStepSection < ManeuverSection
    
    properties
        Value       double
    end
    
    methods
        function obj = ManeuverStepSection(startTime, stopTime, handle, value)
            obj = obj@ManeuverSection(startTime, stopTime, handle);
            obj.Value = value;
        end
    end
end

