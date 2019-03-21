$PBExportHeader$target2.sra
$PBExportComments$Generated Application Object
forward
global type target2 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type target2 from application
string appname = "target2"
end type
global target2 target2

on target2.create
appname = "target2"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on target2.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

