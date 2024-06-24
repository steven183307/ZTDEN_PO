    CLASS ztdbc_po DEFINITION
      PUBLIC
      FINAL
      CREATE PUBLIC .

      PUBLIC SECTION.

        INTERFACES if_badi_interface .
        INTERFACES if_ex_mmpur_final_check_po .
      PROTECTED SECTION.
      PRIVATE SECTION.
ENDCLASS.



CLASS ZTDBC_PO IMPLEMENTATION.


      METHOD if_ex_mmpur_final_check_po~check.

      if purchaseorder-purchasinggroup Is not  INITIAL.
         append value #( messagetype = 'W' messagenumber = '222'  messagevariable1 = 'purchasinggroup is INITIAL'  ) to messages.
       ENDIF.

      ENDMETHOD.
ENDCLASS.
