# The Podcast App

### Summary:
This mini Rails project dives farther into object relational mapping, ERB views and token authentication.

This application has been deployed on Heroku.com.</br>
Check it out [here](https://rocky-tor-98947.herokuapp.com/podcasts)

![imageDescrip](https://i.imgur.com/toaICNQ.png)

#### Technologies:
Ruby on Rails</br>
Embedded ERB</br>
Token storage

#### How to install:
git clone this-repo</br>
bundle install</br>
</br>


### Development Process:

#### Approach Taken:
With this project I wanted to make a simple application that explored Rails and Active Record farther than I had previously. The web app does not use an external API, but instead let's users add whichever podcasts they'd like without searching a database. The main feature of the app is that it allows users to see what other people have added and then view other posts by that user.

#### User story:
1. User logs into the application and immediately sees a feed of all podcasts that have been added to the site.
2. The user can then choose any of the following options

   - SINGLE VIEW: click on 'more details' to find out more about that podcast, including who added it. If the user added this podcast, they have the option to edit or delete it. The user can also who added this particular podcast and navigate to their profile.

   - USERS: see a list all users on the site. From here you can click on a username and see all of the podcasts they added.

   - ADD: user can add a new podcast

   - PROFILE: on the top lefthand corner, the user can click directly into their profile for a list of the podcasts they previously added.


#### Unsolved Problems and Next Steps:
1. I'd like to fix the CSS so that the page is responsive

2. I'd like to flesh out the profile pages as well. Currently they appear as simple lists.
