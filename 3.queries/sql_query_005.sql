/*==================================================================================================
  Description of the SQL query
  
                                       "T-SQL from 0 to 100"
  
           .--.                  
          |o_o |         
          |:_/ |           ---------------------------------------------------
         //   \ \                      Working with SSMS in SQL
        (|     | )         ---------------------------------------------------        
        /'\_   _/`\   
        \___)=(___/
    
  Outline
    -- Keyboard shortcuts
    -- Use Database "StackOverflow2010"
    -- Query 1
    -- Using SSMS via mouse clicks

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
    select * from Usuarios;
    go

    insert into Usuarios (DisplayName, Reputation)
    select top (1000) DisplayName, Reputation 
    from Users 
    order by newid() 

-- Using SSMS via mouse clicks
    
