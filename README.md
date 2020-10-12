# Fall 2020 Principles of Databases — Assignment 1

* **Do not start this project until you have read these instructions carefully.**  
* **Read these instructions repeatedly until you understand, then begin your project. If something is not clear, ask.**  

## ❖・Introduction・❖
Create a database of passwords associated with web sites. Your database should consist of the following information:

* Website name and URL
* User’s first and last name, email address, and username
* Password, of course
* Comment
* Timestamp related to when the password was created

The database should handle the following operations:

* _Create new entries_. For example, you’ve just registered for a new account at `mysql.com`.
* _Update existing entries_. For example, the URL goes from `http` to `https`, or you changed your password.
* _Retrieve an entry_. For example, you want to know when you registered at `mysql.com`, or you want to retrieve the password to your `hartford.edu` account.
* _Remove an entry_. For example, you close your account at `mysql.com`.

Start by designing the database’s ER model on paper or in digital format. Apply everything we’ve learned about the ER model: attributes, keys (weak, strong, primary), entities (weak, strong), relations, participation, and cardinality. Employ any or all of these concepts in your ER model design as you see fit.

At the syntax level, implement the database to handle the aforementioned operations. For the passwords themselves, use MySQL’s `AES_ENCRYPT`. **Do not enter plain text passwords into the database**. And, _don’t use your own passwords_. Once complete, populate the included `setup.sql` with the SQL syntax required to stand up and populate your database with 10 unique entries — some of which must have `https` URLs — of your own choosing.

Create MySQL commands to do the following:

   * Create a new entry into the database, which already has your 10 initial entries
   * Get the password associated with the URL of one of your 10 entries | DONE
   * Get all the password-related data, including the password, associated with URLs that have `https` in one of your 10 entries | DONE
   * Change a URL associated with one of the passwords in your 10 entries | DONE
   * Change any password | DONE
   * Remove a URL | DONE?
   * Remove a password | DONE?

## ❖・Rules・❖
* The database name **must** be `passwords`.
* The rendering of your ER model must be named `er-model.png`. Replace the existing `er-model.png` in this repo with your own image. Ensure it’s under 1MB.
* `setup.sql` should contain all the SQL code needed to stand up your database. Should you need more files, place them in the root of this repo, and ensure they have `.sql` extensions.
* All the commands mentioned at the end of the **Introduction** section **must** be included in the included `commands.sql` file.

## ❖・Due・❖
Tuesday, 13 October 2020, at 7:00 AM.

## ❖・Grading・❖
| Item                                       | Points |
|--------------------------------------------|:------:|
| *Project Implementation (works or not)*    | `30`   |
| *ER Model (quality and accuracy)*          | `25`   |
| *SQL (syntax quality and implementation)*  | `25`   |
| *Following these instructions*             | `20`   |

**NO late submissions will be accepted.**

## ❖・Submission・❖
You will need to issue a pull request back into the original repo, the one from which your fork was created for this project. See the **Issuing Pull Requests** section of [this site](http://code-warrior.github.io/tutorials/git/github/index.html) for help on how to submit your assignment.

**Note**: This assignment may *only* be submitted via GitHub. **No other form of submission will be accepted**.
