      ******************************************************************
      * Author: FABIO
      *> * Date: 17-02-2026
      * Purpose:
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINCIPAL.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO "DADOS.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD ARQUIVO.
       01 REG-DADOS.
           05 FD-ID         PIC 9(03).
           05 FD-NOME       PIC X(20).

       WORKING-STORAGE SECTION.
       01 WS-EOF            PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           OPEN INPUT ARQUIVO

           PERFORM UNTIL WS-EOF = 'S'

           READ ARQUIVO
               AT END
                   MOVE 'S' TO WS-EOF
               NOT AT END
                   DISPLAY "ID: " FD-ID " NOME: " FD-NOME
           END-READ

           END-PERFORM.

           CLOSE ARQUIVO
            STOP RUN.
       END PROGRAM PRINCIPAL.
