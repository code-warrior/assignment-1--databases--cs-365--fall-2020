
   #Create a new entry into the database, which already has your 10 initial entries
    INSERT INTO website
    (web_name, url_name, web_id)
    VALUES
    ("fitment industries", "https://www.fitmentindustries.com/", 11);
    
    
   #Get all the password-related data, including the password, associated with URLs that have https in one of your 10 entries
    SELECT * FROM website WHERE url_name LIKE "https%";
    SELECT * FROM login WHERE user_id <= 11;
    
 #Change a URL associated with one of the passwords in your 10 entries
    SELECT url_name, pass
    FROM website
    INNER JOIN login
    ON website.web_id = login.user_id;

    UPDATE website SET url_name = 'http://formula1.com/' WHERE web_id = 6;
    
  #Change any password
  UPDATE login SET pass = null WHERE user_id = 6;
  UPDATE login SET pass=AES_ENCRYPT('12341qaz', 'key') WHERE user_id=6;
    
  #Remove a URL
    DELETE FROM website WHERE url_name = "https://www.aopa.org/";
    
  #Remove a password
   UPDATE login SET pass = null WHERE user_id = 6;























UPDATE website SET url_name = 'http://formula1.com/' WHERE web_id = 6;