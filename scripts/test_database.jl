using SQLite
using DataFrames
data = SQLite.DB("/home/alfredo/FuchoDatos/database.sqlite")
tab = SQLite.tables(data)[:name]

players = SQLite.query(data, "SELECT * FROM Player" )
p_attributes= SQLite.query(data, "SELECT * FROM Player_Attributes" )
teams = SQLite.query(data, "SELECT * FROM Team" )
t_attributes = SQLite.query(data, "SELECT * FROM Team_Attributes")

SQLite.query(data,"SELECT * from Match" )
