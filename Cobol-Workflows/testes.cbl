       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 USUARIO         PIC X(20) VALUE "Paulo".
       
       01 USUARIO-VALIDADO     PIC X.
       
       01 SENHA           PIC X(6) VALUE '123456'.
       01 SENHA-VALIDADA  PIC X.
       
       01 CONTADOR-ERROS  PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           CALL 'LOGIN' USING USUARIO USUARIO-VALIDADO
               IF USUARIO-VALIDADO = "S"
                   DISPLAY "TESTE USUARIO PASSOU",,
               ELSE
                   DISPLAY "TESTE USUARIO FALHOU"
           ADD 1 TO CONTADOR-ERROS
           END-IF

           CALL 'SENHA' USING SENHA SENHA-VALIDADA
               IF SENHA-VALIDADA = "S"
                  DISPLAY "TESTE SENHA PASSOU"
               ELSE
                   DISPLAY "TESTE SENHA FALHOU"
                   ADD 1 TO CONTADOR-ERROS
           END-IF

           IF CONTADOR-ERROS > 0
               
               STOP RUN RETURNING 1
           ELSE
               STOP RUN.


           
           END PROGRAM TESTES.
