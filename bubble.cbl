       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLESRT.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N                  PIC 99 VALUE 10.
       01  I                  PIC 99.
       01  J                  PIC 99.
       01  TEMP               PIC 999.
       01  SORT-TABLE.
           05 ARR             PIC 999 OCCURS 10 TIMES.
       PROCEDURE DIVISION.
       MAIN-PARA.
           MOVE 64  TO ARR(1)
           MOVE 34  TO ARR(2)
           MOVE 25  TO ARR(3)
           MOVE 12  TO ARR(4)
           MOVE 22  TO ARR(5)
           MOVE 11  TO ARR(6)
           MOVE 90  TO ARR(7)
           MOVE 45  TO ARR(8)
           MOVE 73  TO ARR(9)
           MOVE 8   TO ARR(10)
           DISPLAY "BEFORE SORT:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               DISPLAY ARR(I)
           END-PERFORM
           PERFORM VARYING I FROM 1 BY 1 UNTIL I >= N
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > N - I
                   IF ARR(J) > ARR(J + 1)
                       MOVE ARR(J)     TO TEMP
                       MOVE ARR(J + 1) TO ARR(J)
                       MOVE TEMP       TO ARR(J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM
           DISPLAY "AFTER SORT:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               DISPLAY ARR(I)
           END-PERFORM
           STOP RUN.
