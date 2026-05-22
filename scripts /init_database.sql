

/* 
=============================================
create database and schema 

=============================================

script purpose :
     
     this script creates a new database named ' datawarehouse' afteer checkimg if it already exists.
     if the database exists, it is dropped and recreated. additionally, the script sets up three schemas withiin the database: ' bronze','sliver' and ' gold'

     warning : 
     running this script will drop the entire ' datawarehosue' database if it exists.
     all data in the database will be permanenttly deleted . proceed with caution and ensure you have proper backups before running the scripts 
     
     */


     use master
     go

     -- drop and reccreate the ' datawarehouse' database 

     if exists ( select 1 from sys.databases where name = 'warehouse')
     begin 
     alter database datawarehouse set single_user with ROLLBACK immediate ; 
     drop database datawarehouse;
     end;
     go 

     ------ CREATE DATABASE 

     CREATE DATABASE DATAWAREHOUSE 
     GO;

     USE DATAWAREHOUSE 
     GO;

     -- CREATE SCHEMAS 

     CREATE SCHEMA BRONZE 

     CREATE SCHEMA SILVER 

     CREATE SCHEMA GOLD 
