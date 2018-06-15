# CrowdPublish.TV

The intention of this repository is to be used as a project for developers of all skill levels to improve their skills by contributing code and by assisting junior developers with their code contributions. The founder, Lisa Schaefer, Ph.D., has taught a beginners Ruby on Rails course at George Mason University and encourages women entrepreneurs to be the primary mentors, mentees, and leaders in this project. Dr. Schaefer also advocates for women's voices to be heard and heeded in the software development community.

RoleModel Enterprises, LLC, owns the copyright to all code, design, and graphics contributed to this repository. Contributors grant copyright of any code, design, and graphics they contribute to this repository to RoleModel Enterprises, LLC. Contributors may reuse their code contributions and the knowledge gained from working on this project, provided it meets the following criteria:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form are not permitted.

3. Redistribution of the entire code repository is not permitted. Use of the entire code repository is encouraged, but only for developers and their mentees who are using it for the specific educational purposes endorsed by RoleModel Enterprises, LLC.

4. Neither the name of CrowdPublish.TV, RoleModel Enterprises, LLC, nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

This software is provided by the copyright holders and contributors "as is" and any express or implied warranties, including, but not limited to the implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event shall the copyright owner of contributors be liable for any direct, indirect, incidental, special, exemplary or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.
 
This README file may change at any time.



### QUIZ FOR POTENTIAL DEVELOPERS
To determine current skill level -
Send your responses to info@CrowdPublish.TV. 

Refer to http://github.com/crowdpublishtv/crowdpublishtv and use tutorials, Google, etc. to help you figure out the answers. 

1. What is the design of the CrowdPublish.TV database? Submit as a jpg or png (You may draw on paper & submit as a photo).

2. Which file/view is the users' home page? What information do authors get to display on their home page? Where is this information stored in the CrowdPublish.TV database?

3. What pages/views do authors get in their web site when they sign up for CrowdPublish.TV?

4. What are the default views for all Rails apps?

5. What are the routes that were added to the CrowdPublish.TV app so the non-default/extra views for user pages could be displayed?

6. What are the methods that were added to the CrowdPublish.TV app so the non-default/extra user views/pages could be displayed? What file are they in?

7. Where is the method to add_bank_account to users? What gem does it use?

8. Fork a copy of the crowdpublishtv github repo (url above) into your GitHub account. Make a minor change that does not affect functionality (such as add a dummy file to the root directory) and request that the CrowdPublishTV admin pull your changes.

9. Summarize your Ruby & Rails skill level/what you know in your own words.

When you have completed the quiz, download and start working on the tutorial at https://github.com/crowdpublishtv/crowdpublishtv/blob/master/public/LearnRailsIn2Minutes.odt 

### TO USE THE CROWDPUBLISHTV GITHUB

For a list of helpull git commands use the git cheetsheet: https://services.github.com/on-demand/downloads/github-git-cheat-sheet/

1. Forking from crowdpublishtv and bringing the code to your local machine

Begin by forking the crowdpublishtv code by pressing the fork button located at http://github.com/crowdpublishtv/crowdpublishtv. Forking will allow you to have a copy of the crowdpublishtv code in your personal github and will give you a way to request crowdpublishtv to pull your changes. 

In order to bring the crowdpublishtv code to your local machine you must make a clone of the fork you have created. Open a commandline in the location you would like your code to be saved and use the command:

```
 git clone https://github.com/YOUR-GITHUB_USERNAME/YOUR-CROWDPUBLISHTV-REPOSITORY
```

2. Pulling changes from crowdpublishtv into your local machine

When changes have been made to the code http://github.com/crowdpublishtv/crowdpublishtv, your github will be behind. So you will have to pull the changes to your local machine and then push them to your repository. To pull changes from crowpublishtv, be sure to be in the correct directory, and use the command: 

```
git pull https://github.com/crowdpublishtv/crowdpublishtv.git master
```

3. Saving your changes to your repository

In order to push your code to your repository you will have to stage your files to commit. You can stage your files by using the following commands:

"Adds all modified file changes to the stage"
```
git add -u :/
```

"Adds modified and new files that are not .ignored to the stage"
```
git add * :/
```

To finish your commit (which will save your current files) use the command:
```
git commit -a -m "Usefull_Comment_of_Your_Changes/Additions"
```

Now you can push your comitted changes to your repository with the following commands:

```
git push origin master
```
or

```
git push https://github.com/YOUR-GITHUB_USERNAME/YOUR-CROWDPUBLISHTV-REPOSITORY master
```

4. Getting your code onto crowdpublishtv

Once you have made changes to your personal repository you can request for crowdpublishtv to pull your changes into the original repository. To do this you have to create a pull request. One way of creating a pull 
request is to go to http:/github.com/YOUR-GITHUB-USERNAME/YOUR-CROWDPUBLISHTV-REPOSITORY and there is a button labeled "New Pull Request". After creating a pull request your changes have to be reviewed and then either accepted or denied.

### TO USE THE CODE IN YOUR LOCAL TEST ENVIRONMENT

Files To Check/Change/Create: 

* gemfile: 
    Delete 'pg' and replace with 'sqlite3'

The ENV variables may already be commented out, depending upon what the last developer pushed. ENV variables are for Heroku. Therefore the last commit before pushing to Heroku must have those variables set. The non-ENV variables use the initializer files, which are for use on local machines. 

* config/initializers/fakekeys.rb: 
    Create this file DO NOT CHANGE THE NAME (note that it is listed in .gitignore) & paste the following into it:

```
DEVISE_SECRET_KEY = 'fake'
AWS_KEY = 'morefake'
AWS_SECRET_KEY = 'pretend' 
STRIPE_SECRET_KEY = "madeup"
STRIPE_PUBLIC_KEY = "allfake"
GMAIL_PWD = "superfake"
Stripe.api_key = STRIPE_SECRET_KEY
```

Of course, with the fake keys, you will not be able to use AWS (upload files to user profiles), Devise (logins), or Stripe (purchase items from authors). If you have your own AWS, Devise, or Stripe accounts, you may replace the keys in config/initializers/fakekeys.rb with your accounts' keys. 

*config/database.yml

Create this file DO NOT CHANGE THE NAME (note that it is listed in .gitignore) & paste the following into it:

```
default: &default
  adapter: sqlite3
  pool: 5
  timeout: 5000
```
```
development:
  <<: *default
  database: db/development.sqlite3
```
```
test:
  <<: *default
  database: db/test.sqlite3
```

Then type
```
>bundle install
```
at the command line to install all the necessary gems.

Then type
```
>rake db:migrate
```
at the command line to build the database with the correct schema.

Then type
```
>bin/rails server
```
at the command line to start the server.

Copyright &copy; 2018, RoleModel Enterprises, LLC. All rights reserved.
