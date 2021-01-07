# kdb-tick-risk

This is a kdb repo for persisting own private data (pnl, risk position, trades, orders).
It is an adaptation from https://github.com/KxSystems/kdb-tick/tree/master/tick and https://code.kx.com/q/wp/rt-tick/.

## Set up

This project expects you to have `kdb+/q` installed and the below folder structure:

```
C:/dev/kdb-tick-marketdata/
├── tick/
│   ├── rtdb.q
│   ├── hdb.q
│   ├── sym.q
│   └── u.q
├── TPlogs/
└── tick.q
└── README.md
```

To setup the kdb instances, open your command line and go to `C:/dev/kdb-tick-risk`
- to start the TP, run: `q tick.q sym C:/dev/kdb-tick-risk/TPlogs -p 8000`
- to start the RTDB, run: `q tick/rtdb.q localhost:8000 localhost:5002 -p 8001`
- to start the HDB, run: `q tick/hdb.q C:/dev/kdb-tick-risk/TPlogs/sym -p 8002`

## Tables
Tables are defined in `tick/sym.q`.

## How does it work?
You need to setup a Feedhandler (like https://github.com/Arthurim/feedHandlerMarketData) that writes data to the TP. The RTDB subscribes to the TP and the data in the TP is published to the RTDB.
At the end of the day the RTDB data is rolled to the HDB. You can create realtime applications that subscribe to the TP as well. 

In case the RTDB goes down just restart it and it will replay the TP log files located in `TPlogs/`.


NB: The RTDB is in memory so it's fast to be queried while the HDB is partitioned so when querying it, always filter by `date` and `sym` first.
