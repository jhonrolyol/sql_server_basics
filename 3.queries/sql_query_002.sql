/*==================================================================================================
  Description of the SQL query
  
                                       "T-SQL from 0 to 100"
  
           .--.                  
          |o_o |         
          |:_/ |           ---------------------------------------------------
         //   \ \                    Sorting and Grouping Data in SQL
        (|     | )         ---------------------------------------------------        
        /'\_   _/`\   
        \___)=(___/
    
  Outline
    1.- Keyboard shortcuts
    2.- Use Database "StackOverflow2010"
    3.- Query 1 and 11    

                                         Jhon R. Ordoñez
                                    (rolyordonezleon@gmail.com)
                                                                                            ><(((º>
==================================================================================================*/


-- 1.- Keyboard shortcuts
    -- Ctrl + s: save
    -- Ctrl + e or F5: execute the code (Remember to select the code that is to be executed)
    -- Select the code --> right-click --> Execute: execute the code (I like this option better)
    -- Reference: SoyDBA
	-- ... 

-- 2.- Use Database "StackOverflow2010"
    use StackOverflow2010;
    go 
    
-- Query 1
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (DisplayName like '%user' and Reputation > 1000)
    order by Reputation asc;
    go

-- Query 2
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (DisplayName like '%user' and Reputation > 1000)
    order by Reputation desc;
    go

-- Query 3
    select 
        Id,
        DisplayName,
        Reputation
    from Users
    where (DisplayName like '%user' and Reputation < 1000)
    order by Reputation asc, DisplayName asc; -- El orden por defecto es ascendente "asc"
    go 

-- Query 4
    select 
        DisplayName,
        count(Id)
    from Users
    where (DisplayName like '%user' and Reputation < 1000)
    group by DisplayName;
    go 


-- Query 5
    select 
        DisplayName,
        count(Id)
    from Users
    where (DisplayName like '%user' and Reputation < 1000)
    group by DisplayName
    order by count(Id) desc; 
    go


-- Query 6
    select 
        DisplayName,
        count(Id)
    from Users
    group by DisplayName
    order by count(Id) desc; 
    go

-- Query 7
    select 
        Reputation,
        count(Id)
    from Users
    group by Reputation
    order by count(Id) desc; 
    go


-- Query 8
    select 
        avg(Reputation)
    from Users
    go

-- Query 9
    select 
        max(Reputation)
    from Users
    go

-- Query 9
    select 
        DisplayName,
        avg(Reputation)
    from Users 
    group by DisplayName; 
    go

-- Query 10
    select 
        DisplayName,
        avg(Reputation)
    from Users 
    group by DisplayName
    order by avg(Reputation) desc;
    go

-- Query 11
    select 
        DisplayName,
        avg(Reputation),
        count(1) -- Este "1" hace referencia al primer campo seleccionado "DisplayName"
    from Users 
    group by DisplayName
    order by avg(Reputation) desc;
    go


-- Query 11
    select 
        DisplayName,
        avg(Reputation),
        count(1) -- Este "1" hace referencia al primer campo seleccionado "DisplayName"
    from Users 
    group by DisplayName
    having count(1) > 1
    order by avg(Reputation) desc;
    go

