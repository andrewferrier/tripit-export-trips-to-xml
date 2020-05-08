# What is this?

A quick and dirty script that exports your TripIt trip information to an XML file.

# Rough Setup Instructions

* Log into [your TripIt account online](http://www.tripit.com/web/)

* Go to [Developer API](http://www.tripit.com/developer/)

* Use the link on the left-hand-side to 'Register an App'.

* Register an App (Full API Application). Ensure you note the `consumer_key` and
  `consumer_secret` values you are given. Make a copy of the `creds.yml.skel`
  file in this repo, call it `creds.yml`, and fill in the values as appropriate.

* Run the `export-trips-to-xml` script and follow the instructions. The first
  time it will give you data to put in `permcreds.yml`. Then re-run the script
  and the second time you'll get XML data on stdout.
