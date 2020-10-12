INSERT INTO account_info(uid,account_instance_id,email,username,pass,site,sitename,timestamp,comment) VALUES
  (1000001,11,'test@test.com','testAccount',AES_ENCRYPT('password', UNHEX(SHA2('password encrypt code',512))),'https://www.microsoft.com/','Microsoft',CURRENT_TIMESTAMP(),'Microsoft Account')
  ON DUPLICATE KEY UPDATE account_instance_id=account_instance_id
  ;
SELECT pass FROM account_info WHERE uid = 1000001 AND sitename LIKE 'Facebook';
SELECT site,email,username,pass WHERE uid = 1000001 AND site LIKE 'https%';
UPDATE account_info SET site ='http://www.microsoft.com' WHERE uid=1000001 AND sitename = 'Microsoft';
UPDATE account_info SET pass =AES_ENCRYPT('yes', UNHEX(SHA2('new encrypt',512))) WHERE uid=1000001 AND sitename = 'Microsoft';
UPDATE account_info SET site =NULL WHERE uid=1000002 AND sitename = 'Workday';
UPDATE account_info SET pass =NULL WHERE uid=1000002 AND sitename = 'Apple';
