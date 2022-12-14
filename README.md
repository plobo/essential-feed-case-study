# essential-feed-case-study
A repository to practice TDD, design patterns and refactoring

[![CI](https://github.com/plobo/essential-feed-case-study/actions/workflows/CI.yml/badge.svg)](https://github.com/plobo/essential-feed-case-study/actions/workflows/CI.yml)

# Load Feed Use Case

Data:
 URL

Primary course (happy path):

1. Execute "Load Feed Items" command with above data.
2. System downloads data from the URL
3. System validates downloaded data.
4. System creates feed items from valid data.
5. System delivers feed items.

Invalid data - error course (sad path:)

 1. System deliver invalid data error.
 
 
 No connectivity - error course (sad path):

 1. System delivers connectivity error.



Cache:
As an offline customer
I want the app to show the latest saved version of my image feed
So I can always enjoy images of my friends

Scenarios(Acceptance criteria)

Given the customer doesn`t have connectivity
And there's a cached version of the feed
When the customer requests to see the feed
Then the app should display the latest feed saved

Given the customer doesn`t have connectivity
And the cache is empty
When the customer requests to see the feed
Then the app should display an error message



#### Load Feed from Cache Use Case

### Data:
- Max age (7 days)

#### Primary course:
1. Execute "Load Feed Items" command with above data.
2. System fetches feed data from cache.
3. System validates cache is less than 7 days old.
4. System creates feed items from cached data.
5. System delivers feed items.

### Error course (sad path)
1. System delivers error.

### Expired cache course (sad path)
1. System deletes cache.
2. System delivers no feed items.

### Empty cache course (sad path)
1. System delivers no feed items.


### Cache Feed Use Case

#### Data:
- Feed items

#### Pimary course (happy path):
1. Execute "Save Feed Items" command with above data.
2. System delete old cache data.
3. System encodes feed items.
4. System timestamps the new cache.
5. System replaces the cache with the new data.
6. System delivers success message.


### Deleting error course (sad path):
1. System delivers error.

### Saving error course (sad path):
1. System delivers error.
