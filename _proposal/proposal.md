# Runlogr

[Heroku link][heroku]

[heroku]: http://runlogr.herokuapp.com/

## Minimum Viable Product
Runlogr is a clone of [Flotrackr][flotrack] built on Rails and Backbone with social and blogging components added. Users can:

[flotrack]: http://www.flotrack.org/page/Flotrackr

- [x] Create accounts
- [x] Create sessions (log in)
- [x] Create/view/edit blogs and running logs
- [x] Add shoes to logs, track mileage on shoes
- [x] Create comments on blogs and logs
- [x] Follow/unfollow other users
- [x] View a feed of followed users and their blogs/logs
- [X] Search for users by username and description

## Design Docs
* [Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Blog, Log, Shoe Creation (~2 days)

Add user sign up and sign in. Then, add initial blog, log, and shoe model creation. At the end of the phase a user will be able to sign up and create each of the different features.

[Details][phase1]

### Phase 2: Viewing Blogs and Logs, Commenting (~1 day)

Create views of blogs and logs. Add commenting feature to both.

[Details][phase2]

### Phase 3: User Profile View (~2 days)

Create view that other users will see, as well as editing capabilities if you view your own profile. User will see a feed of the user's blogs and logs.

[Details][phase3]

### Phase 4: Searching for Users, Following/Unfollowing, Importing Logs (~1 day)

Add user search so that users can find and follow/unfollow users of their choosing. Add follow/unfollow buttons to user view.

[Details][phase4]

### Phase 5: Feed / Index View (~2 days)

Create landing page after sign in. User will see a feed of blogs and logs of the users they follow. Clean and homogenize all views of blogs, logs, feeds, and comments. Refine heaeder/footer.

[Details][phase5]

[phase1]: ./docs/phases/phase1.md
[phase2]: ./docs/phases/phase2.md
[phase3]: ./docs/phases/phase3.md
[phase4]: ./docs/phases/phase4.md
[phase5]: ./docs/phases/phase5.md

### Bonus Features (TBD)
- [X] Users can sign in with Twitter
- [ ] Import/export running log data to CSV
- [ ] Blog preview when creating post
- [ ] Users create custom running maps/routes
- [ ] Blog, log, and route tags
- [ ] Blog, log, comment, and route "likes"
- [ ] Add user notifications
- [ ] Manipulate log data into different views/charts
- [ ] Log type classification and sorting (race, workout, training run)
- [ ] Add metric distance conversion
- [ ] Add shoe archive to store "retired" shoes
- [ ] Add pace/time/total runs to shoes
- [ ] ???
