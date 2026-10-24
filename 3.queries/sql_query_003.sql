/*==================================================================================================
  Description of the SQL query
  
                                       "T-SQL from 0 to 100"
  
           .--.                  
          |o_o |         
          |:_/ |           ---------------------------------------------------
         //   \ \                     Inserting data into tables in SQL
        (|     | )         ---------------------------------------------------        
        /'\_   _/`\   
        \___)=(___/
    
  Outline
    -- Keyboard shortcuts
    -- Use Database "StackOverflow2010"
    -- Query 1 and 6    

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
    select top (10)
        Id,
        DisplayName,
        Reputation
    from Users
    order by Reputation desc;
    go

-- Query 2
    select top (10)
        Id,
        DisplayName,
        Reputation
    into Usuarios
    from Users
    order by Reputation desc;
    go

-- Query 3
    select * from Usuarios;
    go

-- Query 4
    insert into Usuarios (DisplayName, Reputation)
    select top (10)
        DisplayName,
        Reputation
    from Users
    order by Reputation asc;
    go

    select * from Usuarios;
    go 

-- Query 5
    insert into Usuarios 
        (DisplayName, Reputation)
    values 
        ('CR7', 7);
    go

    select * from Usuarios;
    go

    insert into Usuarios 
        (DisplayName, Reputation)
    values 
        ('Messi', 10);
    go

    select * from Usuarios;
    go


-- Query 6
    insert into Usuarios 
        (DisplayName, Reputation)
    values 
        ('Name 1', 1001), 
        ('Name 2', 1002),
        ('Name 3', 1003),
        ('Name 4', 1004);
    go

    select * from Usuarios;
    go

