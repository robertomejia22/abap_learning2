CLASS zcl_2199_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_2199_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'Hello World' ).


  DATA: name type c LENGTH 10 VALUE 'mundo',
        text TYPE c LENGTH 20.

  text = replace(
           val   = 'Hello world'
           with  = name
           sub   = 'world' ).

  out->write( text ).

   text = COND #( when text = '' then 'Hola' && name else text ).

  out->write( text ).

  ENDMETHOD.
ENDCLASS.
