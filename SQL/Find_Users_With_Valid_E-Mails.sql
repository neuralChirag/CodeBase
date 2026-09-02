Select * from Users 
where regexp_like(mail, '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$', 'c')