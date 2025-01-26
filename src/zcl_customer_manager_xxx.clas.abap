CLASS zcl_customer_manager_xxx DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add_customer
      IMPORTING
        iv_id       TYPE z_customer_id_xxx
        iv_name     TYPE z_customer_name_xxx
        iv_activo   TYPE z_customer_activo_xxx
      EXPORTING
        ev_code     TYPE sy-subrc.

    METHODS update_customer
      IMPORTING
        iv_id       TYPE z_customer_id_xxx
        iv_name     TYPE z_customer_name_xxx
        iv_activo   TYPE z_customer_activo_xxx
      EXPORTING
        ev_code     TYPE sy-subrc.

    METHODS delete_customer
      IMPORTING
        iv_id       TYPE z_customer_id_xxx
      EXPORTING
        ev_code     TYPE sy-subrc.

ENDCLASS.



CLASS zcl_customer_manager_xxx IMPLEMENTATION.

  METHOD add_customer.
  DATA: ls_customer TYPE ztcustomer_xxxx.

  ls_customer-customer_id = iv_id.
  ls_customer-customer_name = iv_name.
  ls_customer-customer_activo = iv_activo.

  INSERT INTO ztcustomer_xxxx VALUES @ls_customer.

  ev_code = sy-subrc.
ENDMETHOD.



  METHOD update_customer.
    UPDATE ztcustomer_xxxx
      SET customer_name = @iv_name,
          customer_activo = @iv_activo
      WHERE customer_id = @iv_id.
    ev_code = sy-subrc.
  ENDMETHOD.

  METHOD delete_customer.
    DELETE FROM ztcustomer_xxxx
      WHERE customer_id = @iv_id.
    ev_code = sy-subrc.
  ENDMETHOD.

ENDCLASS.

