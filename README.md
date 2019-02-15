# Moverr

### Installation Guide:
1. Fork the repository
2. Clone the repository down to your local machine and `cd` into the folder
3. Run `bundle install`
4. Run `rails s` and head to localhost:3000 in your browser to reach the page

Moverr is an app that allows you to offer your unwanted furniture for free pickup or, if you're in the market for free furniture, browse free offerings you can pick up.

Users can sign up with a username, password, address and contact information. They can then post a new "pickup" with at least one item of furniture and a date and time; or browse other users posted "pickups" to find items of furniture they might be interested in. Browsing can be filtered by the status of the pickup (pending, accepted, completed, canceled) and the items of furniture on offer.

When a user is browsing, they can "accept" a pickup, in which case the pickup's status changes from "pending" to "accepted" and the user becomes the pickup's "mover." The poster's address and contact information are not visible to anyone but the mover.

Either the "poster" (the user who created the pickup) or the mover can mark the pickup "complete." The poster can cancel the pickup.

Posters and movers can review a completed pickup using a 1-to-5 rating system and an optional description. These ratings are associated with the other user involved in the job, and an average rating is shown on each user's profile page.
