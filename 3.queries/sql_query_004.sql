/*==================================================================================================
  Description of the SQL query
  
                                       "T-SQL from 0 to 100"
  
           .--.                  
          |o_o |         
          |:_/ |           ---------------------------------------------------
         //   \ \                    Editing and deleting data in SQL
        (|     | )         ---------------------------------------------------        
        /'\_   _/`\   
        \___)=(___/
    
  Outline
    -- Keyboard shortcuts
    -- Use Database "StackOverflow2010"
    -- Query 1 and 5    

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

    update Usuarios 
    set Reputation = 9 
    where Id = 157895;
    go

-- Query 2
    select * from Usuarios;
    go

    update Usuarios 
    set 
        Reputation = 7,
        DisplayName = 'C. Ronaldo'
    where Id = 157895;
    go

-- Query 3
    select * from Usuarios;
    go

    delete from Usuarios
    where Id = 157894; -- Never forget the "WHERE" clause when deleting data from a table.
    go 

-- Query 4
    select * from Usuarios;
    go

    begin transaction;
        -- 1.- Make changes
            update Usuarios set DisplayName = 'CR7' where Id = 157895;
            update Usuarios set Reputation = 5, DisplayName = 'Leo' where Id = 157896;
            go

        -- 2.- Check the results
            select * from Usuarios;
            go

        -- 3.- Choose "commit transaction" or "rollback transaction"
            commit transaction;
            rollback transaction;
    go
    
-- Query 5
    select * from Usuarios;
    go

    truncate table Usuarios; -- Warning: Never do it
    go

