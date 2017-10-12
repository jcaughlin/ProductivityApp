# ProductivityApp
Get Stuff Done

ProductivityApp

Application to gather data on common tasks to analyze completion time, time estimation accuracy, and schedule adherence Problem Statement: The psychology of scarcity suggests that when one lacks a particular resource, one's mindset changes in regards to that particular resource. This mindset can be extremely advantageous or it can be extremely debilitating depending on the context.

In my case, I lack time. I work too much. I have a family. I go to school. I want to have 300 hobbies. I want to be great at all of these things. There is always something that needs to be done. Because time is scarce, I am always doing something that needs to be done. That sounds awesome doesn't it? Sometimes it is, but I do a terrible job of knowing how long a particular task is going to take. I am constantly trying to do that one "extra thing" and because of this, I am constantly late to pretty much everything. Furthermore, because I am constantly busy, I am typically not fully present for the current task as my mind is churning in the background regarding what needs to be done next. ...And just to make my life extra fun, I am time blind.

In some ways this is a personal kaizen project as well as a gut check. I plan to create a list of tasks that I do on a daily basis. In addition, I will have a feature where I can add other frequent events as well as unplanned exceptions.

* App will be a daily task list with a stop watch that one can start upon commencement of tasks and ends when said task is complete

* User will be provided a list of basic every day tasks and will have the capability to customize

* Task lists will be integrated will a calendar API so user can view task list by day, week and month. In addition, the user will be able * to integrate existing calendars in order to measure completion time

* User data will be cross referenced to calendar API to determin if weather and/or affects productity. Client will have weather widget

* The application will generate motivational quotes etc. i.e. quote of the day

* The application will provide report both to user and admin



# Technologies
* MySQL db
  * Store User Information
  * User Task History with start and end times
  * Maintain db of weather data crossreference by date and user region
* Security
 * Admin Role
 * User Registration & Login
 * Login persistance
* CRUD
  * User profile pictures
* Independant Research Topic
 * JavaScript
 * DataAnalysis Jython(JVM)? Hadoop? R?
* API's
 * [OpenWeatherMap] [https://openweathermap.org/examples]
 * [Google Calendar] [https://developers.google.com/google-apps/calendar/]
 * [Google Calendar Java Quickstart] https://developers.google.com/google-apps/calendar/quickstart/java
 * [Google Task] [https://developers.google.com/google-apps/tasks/]
 * Stop Watch
* Deploy to AWS per requirements
* Logging
* Unit Testing
* iOs/Java Integration ???
