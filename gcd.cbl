       IDENTIFICATION DIVISION.
       PROGRAM-ID. GCDALG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A                  PIC 9999.
       01  B                  PIC 9999.
       01  X                  PIC 9999.
       01  Y                  PIC 9999.
       01  R                  PIC 9999.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM GCD-CALC THRU GCD-DISPLAY
               VARYING A FROM 1 BY 1 UNTIL A > 5
           STOP RUN.
       GCD-CALC.
           EVALUATE A
               WHEN 1 MOVE 56   TO X MOVE 98  TO Y
               WHEN 2 MOVE 100  TO X MOVE 75  TO Y
               WHEN 3 MOVE 270  TO X MOVE 192 TO Y
               WHEN 4 MOVE 48   TO X MOVE 18  TO Y
               WHEN 5 MOVE 1071 TO X MOVE 462 TO Y
           END-EVALUATE
           MOVE X TO A MOVE Y TO B
           PERFORM UNTIL Y = 0
               COMPUTE R = FUNCTION MOD(X, Y)
               MOVE Y TO X
               MOVE R TO Y
           END-PERFORM.
       GCD-DISPLAY.
           DISPLAY "GCD(" A "," B ") = " X.
