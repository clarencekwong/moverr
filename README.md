# Moverr

### Installation Guide:
1. Fork the repository
2. Clone the repository down to your local machine and `cd` into the folder
3. Run `bundle install`
4. Run `rails s` and head to localhost:3000 in your browser to reach the page

Moverr is an app that allows you to offer your unwanted furniture for free pickup or, if you're in the market for free furniture, browse other users' offerings.

### Signup

Users can sign up with a username, password, address and contact information.

### Posting and browsing pickups

Logged-in users can then "post" a new "pickup" with at least one item of furniture and a date and time. They can also browse other users' posted "pickups" to find items of furniture they might be interested in.

Browsing can be filtered by the status of the pickup (pending, accepted, completed, canceled) and the items of furniture on offer.

### Accepting a pickup

Users can "accept" a pickup, meaning they want to come get the furniture, in which case the pickup's status changes from "pending" to "accepted," and the user becomes the pickup's "mover." The poster's address and contact information (except email) are only visible to the mover.

Pickups the logged-in user has posted or accepted are listed under the "My Pickups" tab.

### Completing or canceling a pickup

Either the poster or the mover can mark the pickup "complete." The poster can cancel the pickup, which archives it. If the the mover hits "cancel," the pickup's status reverts to "pending."

### Ratings and reviews

Posters and movers can review a completed pickup using a 1-to-5 rating system and an optional description. These ratings are associated with the other user involved in the job, and an average rating is shown on each user's profile page.

### Specs

*We have specs.*
