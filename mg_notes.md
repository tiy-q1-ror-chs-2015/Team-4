1 Feb 2015:

-added user_id to programs table

-added "last updated by" to programs show page and edited the program create and update controllers.  must have data in the "user_id" field in programs table or will not work.  I can't get rake tasks to automatically populate.

-would like to add last updated to the comments section but will work on that later.

- removed extraneous README_backups


31 Jan 2015:

-updated layout for all program views

-added option to select clients from form page

-cleaned up javascript error in assets on CMD

-add comments section using polymorphic relationship for all 3 areas

-added email link to "Contact" on Navbar - opens in new tab with subject line: "Employee Input"

-added user authentication required to enter any pages on programs controller




30 Jan 2015:
-added static navbar theme for bootstrap

-changed /views/layouts/application.html.erb to .haml

-added login/logout/register to navbar.

-removed active_link highlighting on navbar.  can't figure out how to move between contoller pages (welcome and about are in welcome controller).


29 Jan 2015
-installed devise gem - user login for employees

-installed quiet_assets gem - stop rendering assets in CMD

-created user sign up, sign in, sign out links on programs index page to test