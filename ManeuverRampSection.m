classdef ManeuverRampSection < ManeuverSection
    
    properties
        InitialValue        double
        FinalValue          double
    end
    
    methods
        function obj = ManeuverRampSection(startTime, stopTime, handle, initialValue, finalValue)
            obj = obj@ManeuverSection(startTime, stopTime, handle);
            obj.InitialValue = initialValue;
            obj.FinalValue = finalValue;
        end
    end
end
