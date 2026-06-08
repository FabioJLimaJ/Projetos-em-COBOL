      ******************************************************************
      * Author:FABIO
      *> * Date:07-10-2025
      * Purpose:estudos
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. projeto.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-VARIAVEIS.
          03 WS-NOME            PIC X(30) VALUE SPACE.
          03 WS-MATERIA         PIC X(30) VALUE SPACE.
          03 WS-STATUS          PIC X(10) VALUE SPACE.
          03 WS-NOTA-1          PIC 9(2) VALUE ZERO.
          03 WS-NOTA-2          PIC 9(2) VALUE ZERO.
          03 WS-NOTA-3          PIC 9(2) VALUE ZERO.
          03 WS-NOTA-4          PIC 9(2) VALUE ZERO.
          03 WS-MEDIA           PIC 9(2) VALUE ZERO.
       77 WS-CONTINUAR          PIC X(1) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

        LOOPZERA.
        PERFORM FORM THRU FORM-END.
        PERFORM CALCULAR-MEDIA THRU CALCULAR-MEDIA-END.
        PERFORM VERIFICAR-NOTA THRU VERIFICAR-NOTA-END.
        PERFORM EXIBIR-DADOS THRU EXIBIR-DADOS-FIM.
        PERFORM VERIFICAR-LOOP THRU VERIFICAR-LOOP-END.
        LOOPZERA-END.

        PERFORM LOOPZERA THRU LOOPZERA-END
        UNTIL WS-CONTINUAR = 'N'.

        STOP RUN.


       FORM.
       DISPLAY 'DIGITE O NOME DO ALUNO: '
       ACCEPT WS-NOME

       DISPLAY 'NOME DA MATERIA: '
       ACCEPT WS-MATERIA

       DISPLAY 'PRIMEIRA NOTA: '
       ACCEPT WS-NOTA-1

       DISPLAY 'SEGUNDA NOTA: '
       ACCEPT WS-NOTA-2

       DISPLAY 'TERCEIRA NOTA: '
       ACCEPT WS-NOTA-3

       DISPLAY 'QUARTA NOTA: '
       ACCEPT WS-NOTA-4.
       FORM-END.

       CALCULAR-MEDIA.
       COMPUTE WS-MEDIA = (WS-NOTA-1 + WS-NOTA-2 +
       WS-NOTA-3 + WS-NOTA-4) / 4.
       CALCULAR-MEDIA-END.


       VERIFICAR-NOTA.
       IF WS-MEDIA >= 7 THEN
           MOVE 'APROVADO' TO WS-STATUS
       ELSE
           MOVE 'REPROVADO' TO WS-STATUS
       END-IF.
        VERIFICAR-NOTA-END.

        VERIFICAR-LOOP.
            DISPLAY 'QUER CONTINUAR: (S-N)'
            ACCEPT WS-CONTINUAR.
            MOVE FUNCTION UPPER-CASE(WS-CONTINUAR)
            TO WS-CONTINUAR.

            IF WS-CONTINUAR = 'N' THEN
                STOP RUN
            END-IF.
        VERIFICAR-LOOP-END.

        EXIBIR-DADOS.
         DISPLAY '*** RESULTADO DO PROCESSAMENTO ***'
'
         DISPLAY 'NOME DO ALUNO: ' WS-NOME.
         DISPLAY 'MATERIA: ' WS-MATERIA.
         DISPLAY 'MEDIA: ' WS-MEDIA.
         DISPLAY 'STATUS: ' WS-STATUS.
         DISPLAY '*******************************************'.
        EXIBIR-DADOS-FIM.

       END PROGRAM projeto.
