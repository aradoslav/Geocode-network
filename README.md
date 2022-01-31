# Geocode network
 Framework for geocoding a network of customers

1.Requirements:

Jupyter notebook
Anaconda
Python + pip install all packages used in geocoder
MSSQL server
Kepler.gl


2.Input files are in the Input folder:

Customer
Region Indicators

3.Please import the first in a database in 2 separate tables:

[dbo].[Customer]
[dbo].[Region_indicators]

Columns provided in csv files, but they have only sample data

4.The SQL queries used are in the SQL file

5.The python code used for GEOCODING and indicator processing are in the Geocoder and Correlation file

Go through steps 1 - 5 in the Geocoder in Jupyter 

If a table is not created - please refer to the SQL files for create scripts - they are included in the python script but they will not run directly from Jupyter unless passed manually
