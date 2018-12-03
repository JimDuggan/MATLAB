  t = table(randi(3,15,1),randn(15,1),rand(15,1),'VariableNames',{'g' 'x' 'y'})
          groupMeansTable = varfun(@mean,t,'GroupingVariables','g','OutputFormat','table')