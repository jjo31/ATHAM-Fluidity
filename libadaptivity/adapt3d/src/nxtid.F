C Copyright (C) 2006 Imperial College London and others.
C 
C Please see the AUTHORS file in the main source directory for a full list
C of copyright holders.
C 
C Adrian Umpleby
C Applied Modelling and Computation Group
C Department of Earth Science and Engineering
C Imperial College London
C 
C adrian@Imperial.ac.uk
C 
C This library is free software; you can redistribute it and/or
C modify it under the terms of the GNU Lesser General Public
C License as published by the Free Software Foundation; either
C version 2.1 of the License.
C 
C This library is distributed in the hope that it will be useful,
C but WITHOUT ANY WARRANTY; without even the implied warranty of
C MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
C Lesser General Public License for more details.
C 
C You should have received a copy of the GNU Lesser General Public
C License along with this library; if not, write to the Free Software
C Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
C USA
      INTEGER FUNCTION NXTID( CURNXT )
C-----------------------------------------------------------------------
C
C
C
C-----------------------------------------------------------------------
      IMPLICIT NONE
C
      INTEGER CURNXT
C
c      INCLUDE 'blkbig.i'
C
      INCLUDE 'blkerr.i'
C
      INCLUDE 'blknxt.i'
C
      INTEGER I
C
      NXTID = 0
C
      IF( IERR .NE. 0 ) RETURN
C
      I = 1
C
 10   IF( NEXTLS(I) .EQ. 0 ) THEN
         NXTID = I
         NEXTLS(I) = CURNXT
      ELSE
         I = I + 1
         IF( I .LE. MXNEXT ) GOTO 10
         PRINT*,'*** ADDNXT: NEXT POINTER LIST IS FULL'
         IERR = -300
      END IF
C
      RETURN
      END
C
