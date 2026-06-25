       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIEVE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N                  PIC 999 VALUE 100.
       01  I                  PIC 999.
       01  J                  PIC 9999.
       01  K                  PIC 9999.
       01  PRIME-TABLE.
           05 PRIME-FLAG      PIC 9 OCCURS 100 TIMES.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM INIT-TABLE
           PERFORM SIEVE-LOOP
           PERFORM PRINT-PRIMES
           STOP RUN.
       INIT-TABLE.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I > N
               MOVE 1 TO PRIME-FLAG(I)
           END-PERFORM.
       SIEVE-LOOP.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I > N
               IF PRIME-FLAG(I) = 1
                   COMPUTE J = I * I
                   PERFORM VARYING K FROM J BY I UNTIL K > N
                       MOVE 0 TO PRIME-FLAG(K)
                   END-PERFORM
               END-IF
           END-PERFORM.
       PRINT-PRIMES.
           DISPLAY "PRIMES UP TO 100:".
           PERFORM VARYING I FROM 2 BY 1 UNTIL I > N
               IF PRIME-FLAG(I) = 1
                   DISPLAY I
               END-IF
           END-PERFORM.
