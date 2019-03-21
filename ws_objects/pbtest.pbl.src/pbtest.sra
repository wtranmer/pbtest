$PBExportHeader$pbtest.sra
$PBExportComments$Generated Application Object
forward
global type pbtest from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pbtest from application
string appname = "pbtest"
end type
global pbtest pbtest

on pbtest.create
appname="pbtest"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbtest.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

