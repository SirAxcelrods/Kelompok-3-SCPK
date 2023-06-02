function conn = createDatabaseConnection()
    % Database connection configuration
    %databaseName = 'saw_laptop';
    %username = 'root';
    %password = '';
    %server = 'localhost';
    % conn = database(databaseName, username, password, 'MySQL', server);
    
    username = 'root';
    password = '';
    name = 'saw_laptop3';
    % Establish the database connection
  
    conn = database(name, username, password);
