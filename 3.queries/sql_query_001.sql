/*==================================================================================================
  Description of the SQL query
  
                                        "T-SQL from 0 to 100"
  
           .--.                  
          |o_o |         
          |:_/ |           ---------------------------------------------------
         //   \ \                     Learn how to read data in SQL
        (|     | )         ---------------------------------------------------        
        /'\_   _/`\   
        \___)=(___/
    
  Outline
  -- Keyboard shortcuts
  -- Use Database "StackOverflow2010"
  -- Query 1 and 12 

                                         Jhon R. Ordoñez
                                    (rolyordonezleon@gmail.com)
                                                                                            ><(((º>
==================================================================================================*/


-- Keyboard shortcuts
    -- Ctrl + s: save
    -- Ctrl + e or F5: execute the code (Remember to select the code that is to be executed)
    -- Select the code --> right-click --> Execute: execute the code (I like this option better)
    -- Reference: SoyDBA
	-- ... 

-- Use Database "StackOverflow2010"
    use StackOverflow2010;
    go

-- Query 1
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation = 1); 
    go
    
-- Query 2
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation <> 1); 
    go

-- Query 3
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation = 1 or Reputation = 10); 
    go

-- Query 4
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation in (1,3,5,7,9)); 
    go

-- Query 5
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation not in (1,3,5,7,9)); 
    go

-- Query 6
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (Reputation between 2 and 10); 
    go

-- Query 7
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where DisplayName like 'user36406'; 
    go

-- Query 8
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where DisplayName like 'user%'; -- All "DisplayName" values ​​that begin with "user"
    go

-- Query 9
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where DisplayName like '%user%'; -- All "DisplayName" values ​​that contain "user"
    go

-- Query 10
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where DisplayName like '%user'; -- All "DisplayName" values ​​that end with "user"
    go


-- Query 11
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (DisplayName like '%user' and Reputation > 1000);
    go


-- Query 12
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (DisplayName like '%user' or Reputation > 1000);
    go


