classdef Account
    %UNTITLED7 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        balance = 0.0;
    end
    
        properties (Access = protected)
        p_balance = 99.1;
    end
    
    properties 
        g_balance = 0.0;
    end
    
    methods
        function o = Account(b)
            %UNTITLED7 Construct an instance of this class
            %   Detailed explanation goes here
            o.balance = b;
        end
        
        function  o = debit(o,amt)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            o.balance = o.balance - amt;
        end
        
        
        function  o = credit(o,amt)
            %credit credits the account
            %   Detailed explanation goes here
            o.balance = o.balance + amt;
        end
        
        function  y = get_balance(o)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            y = o.balance;
        end
        
    end
    
end

