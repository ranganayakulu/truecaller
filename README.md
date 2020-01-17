# Setup

## Software requirements

`Ruby v2.7.0`
`Rails v6.0.2.1`
`OS: Ubuntu/MacOS`


## Application Setup

`cd /path/to/project/director`

### Update config/database.yml as per the required.(for ease of use password and username not provided)
$ `rails db:create` (or) `rails db:setup`

### Migrate dummy data to database(seed)
$ `rails db:seed`

### Starting the server(PUMA)
$ `rails server` or `rails s`


### RESTful API for accessing fake users data

  curl -X GET http://localhost:3000/users

  - without any filters
      - `seed` integer
          curl -X GET http://localhost:3000/users?seed=1234
      - `size` and  `offset`  - pagination
          curl -X GET http://localhost:3000/users?size=10&offset=1
      - `region` comma separated string
          curl -X GET http://localhost:3000/users?region=Tamil Nadu,Karnataka

FYI, Authentication and Versioning is not added
