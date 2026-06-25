       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N                  PIC 99.
       01  I                  PIC 99.
       01  FACT               PIC 9(12) VALUE 1.
       01  OUT-N              PIC Z9.
       01  OUT-F              PIC Z(11)9.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM VARYING N FROM 0 BY 1 UNTIL N > 12
               MOVE 1 TO FACT
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
                   MULTIPLY I BY FACT
               END-PERFORM
               MOVE N TO OUT-N
               MOVE FACT TO OUT-F
               DISPLAY OUT-N "! = " OUT-F
           END-PERFORM
           STOP RUN.
