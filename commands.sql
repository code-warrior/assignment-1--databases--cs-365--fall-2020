--CREATE new entry
/* Not sure how this differs from INSERT INTO for the intial 10 entries */



--GET password from URL
SELECT websites.website_name, website_password
FROM websiteInfo
INNER JOIN websites ON websites.website_id = websiteInfo.website_id
WHERE website_URL="https://github.com";

--GET all password data
SELECT websites.website_URL, websiteInfo.*
FROM websiteInfo
INNER JOIN websites ON websites.website_id = websiteInfo.website_id
WHERE websites.website_URL = "https://twitter.com";

--Decryption not working not sure why
SELECT website_password, AES_DECRYPT(website_password, 'fas21')
FROM websiteInfo
INNER JOIN websites ON websites.website_id = websiteInfo.website_id
WHERE websites.website_URL = "https://twitter.com";

--UPDATE url of one password
UPDATE websites
SET website_URL = "http://github.com"
WHERE website_URL = "https://github.com";


--UPDATE password
UPDATE websiteInfo
INNER JOIN websites ON websites.website_id = websiteInfo.website_id
SET website_password = AES_ENCRYPT("SQLISMOREFUNTHANMONGOFORSURE", "RELATIONAL")
WHERE website_URL = "http://github.com";


--DELETE URL (IS IT WHOLE RECORD OR JUST URL? || just url doesnt makes sense since it is not null)
DELETE
FROM websites
WHERE website_url="https://github.com";

--DELETE password (CONSIDER REVISING || nah)
DELETE
FROM websiteInfo
WHERE website_password=AES_ENCRYPT("tylerissosososocool", "tyler");
