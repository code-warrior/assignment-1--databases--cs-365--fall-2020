INSERT INTO account(uid,fname,lname) VALUES
  (1000001,'Brandon','Spada'),
  (1000002,'Roy','Vanegas')
  ON DUPLICATE KEY UPDATE uid=uid
  ;
INSERT INTO account_info(uid,account_instance_id,email,username,pass,site,sitename,timestamp,comment) VALUES
  (1000001,1,'test@test.com','testAccount',AES_ENCRYPT('password', UNHEX(SHA2('password encrypt code',512))),'https://www.Facebook.com/','Facebook',CURRENT_TIMESTAMP(),'Facebook Account'),
  (1000001,2,'spada@spada.com',NULL,AES_ENCRYPT('password', UNHEX(SHA2('password encrypt code',512))),'https://www.yahoo.com/','Yahoo',CURRENT_TIMESTAMP(),'Yahoo Account'),
  (1000001,3,'test@admin.com',NULL,AES_ENCRYPT('testing', UNHEX(SHA2('password encrypt code',512))),'https://www.google.com/','Google',CURRENT_TIMESTAMP(),'Google'),
  (1000001,4,'no@yes.com','nope121',AES_ENCRYPT('password', UNHEX(SHA2('password encrypt code',512))),'http://www.FakeWebsite.com/','Not a Real Website',CURRENT_TIMESTAMP(),'Fake Website'),
  (1000001,5,'joebob@fakeaccount.com','weTest121',AES_ENCRYPT('testing', UNHEX(SHA2('password encrypt code',512))),'https://www.hartford.edu/','Uhart',CURRENT_TIMESTAMP(),'University of Hartford'),
  (1000002,6,'palindrome@test.com','account',AES_ENCRYPT('user', UNHEX(SHA2('password encrypt code',512))),'https://www.speedtest.net/','Speedtest',CURRENT_TIMESTAMP(),'Speedtest'),
  (1000002,7,'test@notreal.com','root',AES_ENCRYPT('admin', UNHEX(SHA2('password encrypt code',512))),'https://www.gitub.com/','Github',CURRENT_TIMESTAMP(),'Github Account'),
  (1000002,8,'account@test.com','root',AES_ENCRYPT('admin', UNHEX(SHA2('password encrypt code',512))),'https://www.aws.amazon.com/','AWS',CURRENT_TIMESTAMP(),'Amazon Web Services'),
  (1000002,9,'test@admin.com','No1439',AES_ENCRYPT('No', UNHEX(SHA2('password encrypt code',512))),'https://www.apple.com/','Apple',CURRENT_TIMESTAMP(),'Apple Account'),
  (1000002,10,'root@root.com','bobjoe',AES_ENCRYPT('bobjoe', UNHEX(SHA2('password encrypt code',512))),'https://www.workday.com/','Workday',CURRENT_TIMESTAMP(),'Clock In')
  ON DUPLICATE KEY UPDATE account_instance_id=account_instance_id
  ;
