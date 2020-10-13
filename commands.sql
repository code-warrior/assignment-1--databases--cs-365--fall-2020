/*
   To get the commands to work the way I wanted IF statements were necesarry
   therefore i turned them into procedures that are loaded into the database
   with the setup.  the line number that each starts at in setup.sql
   is listed in the comments below.

   Due to the way I structured my database to have multiple users some of
   the commands function were interpreted somewhat differently.  Anytime it
   says to get something based on the passwotd, i considered that as based on
   the account entry(which contins the password)

   I also never directly searched for the password when looking for the account,
   I have the user input the key information into the function in order to get thedata

   Any time a password is requested from the database the user is required to
   provide the decrypt key
/*


/* create a new entry in the database (setup.sql LINE 186)
    There are multiple variabtions of this.
    1. add a new user, website and account information
    2. add a new websites + account information to an existing user
    3. add a new account under a website and user that exists
*/
/* FORMAT: AddEntry(<first_name>,<last_name>,<site_name>,<site_url>,<username>,<email>,<password>,<timestamp>,<comment>) */
CALL AddEntry("Damien","Wayne","Instagram","https://instagram.com", "rob4", "dwayne@gmail.com", "batmanismydad","Damien Waynes instragram account");

/* get the passwords ascociate with the URL of one of the entries (setup.sql LINE 231)*/
/* FORMAT GetSitePasswords(<site_url>,<Decrypt_Key>)*/
CALL GetSitePasswords("https://www.amazon.com/","DCrulz1639");

/*
  get all the password related data, including the passwords
  associated with URLs that have https (setup.sql LINE 250)
*/
/* FORMAT GetHTTPSPasswords(<Decrypt_Key>) */
CALL GetHTTPSPasswords("DCrulz1639");

/* change the URL associated with one othe passwords
   Two different functions
   1. edit the URL for all accounts associated with it (setup.sql LINE 274)
*/
/* FORMAT UpdateSiteURL(<Site_name>,<New_url>)  */
CALL UpdateSiteURL("Amazon","www.newamazonurl.com");

/*
   2. Change the URL of a specific account
        will wither switch it to another existing URLs
        OR create a new website entry to asociate with (setup.sql LINE 287)
*/
/* FORMAT UpdateAccountURL(<username>,<site_name>,<site_url>)
/* This command will switch the url associated with this
    account with to a preexisting one  */
CALL UpdateAccountURL("BruceWayneWork","Amazon","https://www.amazon.com/");
/* this command will cause the database to create a new site entry to accociate with the account */
CALL UpdateAccountURL("BruceWayneWork","NewSite","www.NewSiteAdded.com");


/* change any password
    Takes the site name and the username as an indication of which entry
    (setuo.sql LINE 309)
*/
CALL ChangePassword("OneDrive", "BruceWayneWork", "NewPass");

/* Remove a URL
  This command fins the url specified by the user then removes the URL as well
  as all accounts accociated with it
  The user inputs the site name to find the information to delete
  (setup.sql LINE 325)
*/
CALL DeleteURL("Amazon");


/* Remove a password
    also removes all account information acciciated with it
    (setup.sql LINE 342)
*/
CALL DeleteAccount("OneDrive","BruceWayneWork");



/* ADDITIONAL COMMANDS */
/* run this to just get a list of usernames and passwords */
select username, CAST(AES_DECRYPT(password,"DCrulz1639") AS CHAR) FROM accounts;
