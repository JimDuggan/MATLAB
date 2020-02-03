function m_out = swap(m, t, r)

m_out = m;
m_out(m_out == t) = r;

end