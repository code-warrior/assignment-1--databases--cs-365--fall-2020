/* Setup encryption, for passwords */
SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = UNHEX(SHA2('password', 512));
SET @init_vector = 0x1359CDDF0B3A74D5918E55B6EE758A87;
/* Yes, the encryption key is a hash of the word 'password'. Not the most secure. */
/* This was used for testing that the encryption worked.
SET @foo = 'Some text here, or something.';
SET @crypt = AES_ENCRYPT(@foo, @key_str, @init_vector);
SET @uncrypt = CAST(AES_DECRYPT(@crypt, @key_str, @init_vector) AS CHAR);
SELECT @foo, @crypt, @uncrypt;
*/
