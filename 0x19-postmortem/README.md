POSTMORTEM 
Web server (web-01) went offline on  9th of November 2022 between 4pm(WAT) and 8am (WAT), this caused the website to return “Error 404”  when the website was clicked, this left 99% of the user to be unable to use the website at the period in time. The root cause of this issue incured during the primary replica of the mysql database to the web-server-02. This issue was detected during the testing phase of mysql db on the backend side. Action was taken immediately to rectify this situation. Debugging work started immediately to get to the root of what was impeding the transfer of mysql database from web-server-01. The problem was detected and the solution that worked was uninstalling and reinstalling mysql server on web-01 server, which worked and tests were carried out on both servers to ascertain this issue. It is important to note the most important cause of this problem, this is because the database is a very essential part of the web since it stores all the information of the web, occurrences like this are very costly, so therefore all available resources should be deployed immediately to curb this issue.  
