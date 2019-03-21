$PBExportHeader$empty_class.sru
forward
global type empty_class from nonvisualobject
end type
end forward

global type empty_class from nonvisualobject
end type
global empty_class empty_class

event constructor;messagebox("created empty_class", "I should be in pbtest_secondary.pbl")
end event

on empty_class.create
call super::create
TriggerEvent( this, "constructor" )
end on

on empty_class.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

