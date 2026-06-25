       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A                  PIC 9(10) VALUE 0.
       01  B                  PIC 9(10) VALUE 1.
       01  C                  PIC 9(10).
       01  I                  PIC 99.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "FIBONACCI SEQUENCE (FIRST 20 TERMS):"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 20
               DISPLAY A
               COMPUTE C = A + B
               MOVE B TO A
               MOVE C TO B
           END-PERFORM
           STOP RUN.
