function m_new = impute(m,iv)
  [nrow, ncol] = size(m);
  m_new = m;
 
  for i = 1:ncol
      data = m(:,i);
      invalid_rows = iv(:,i);
      if(any(invalid_rows))
          mean_data = mean(data(~invalid_rows));
          m_new(invalid_rows,i) = mean_data;
      end
  end
  
end