# atlas-the-joy-of-painting-api
Using ETL (Extract, Transform, Load), which is the process of taking data from multiple unique sources, modifying them in some way, and then storing them in a centralized database, I am going to accomplish the following:
Design a UML document that incorporates the ability to filter TV episodes based on Colors Used, Subject Matter, and Episode Dates.
Create the SQL scripts required to create your database from scratch based on the design document
* The SQL scripts must run locally when building your database
* You may use any SQL database you choose
Build a databse out of provided data and an API that can access it.

## In the provided UML Class Diagram:

* The TVEpisode class has a one-to-many relationship with ColorPalette, which represents the colors used in the episode.
* The TVEpisode class also has a many-to-many relationship with SubjectMatter, which represents the topics or subject matter covered in the episode.
* The FilterCriteria class has attributes to hold filtering criteria for genre, air date range, series name, colors list, and topic list.

## With this design, you can filter TV episodes based on:

* Colors Used: By specifying a list of colors in the 'colorList' attribute of the 'FilterCriteria' class, you can filter episodes that have those colors in their 'ColorPalette' class.
* Subject Matter: By specifying a list of topics in the 'topicList' attribute of the 'FilterCriteria' class, you can filter episodes that cover those topics in their 'SubjectMatter' class.
* Episode Dates: By specifying an air date range in the 'FilterCriteria' class, you can filter episodes that fall within that date range using the 'airDate' attribute of the 'TVEpisode' class.

This design allows for flexible filtering based on the specified requirements and can be extended further if additional filtering criteria are needed in the future.

# DEV NOTES
the 0 or 1 values on colors are not neccessary