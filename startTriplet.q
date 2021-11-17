#!/bin/bash
SET QHOME=C:/dev/q/q
cd C:/dev/kdb-tick-risk
C:/dev/q/q/w32/q.exe  tick.q sym C:/dev/kdb-tick-risk/TPlogs -p 8000 &
C:/dev/q/q/w32/q.exe  tick/rtdb.q localhost:8000 localhost:8002 -p 8001 &
C:/dev/q/q/w32/q.exe  tick/hdb.q C:/dev/kdb-tick-risk/TPlogs/sym -p 8002 &