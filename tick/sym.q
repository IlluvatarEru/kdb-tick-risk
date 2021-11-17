pnl:([] time:`timespan$();
    sym:`symbol$();
    gatewayTimestamp:`timestamp$();
    tradeTimestamp:`timestamp$();
    market:`symbol$();
    executionId:`symbol$();
    price:`float$();
    lhsFlow:`float$();
    rhsFlow:`float$();
    pnl:`float$();
    fees:`float$();
    instrumentType:`symbol$();
    strategy:`symbol$())

trades:([] time:`timespan$();
    sym:`symbol$();
    gatewayTimestamp:`timestamp$();
    tradeTimestamp:`timestamp$();
    market:`symbol$();
    tradeId:`symbol$();
    orderId:`symbol$();
    executionId:`symbol$();
    lhsFlow:`float$();
    price:`float$();
    rhsFlow:`float$();
    fees:`float$();
    instrumentType:`symbol$();
    strategyId:`symbol$();
    hedgingClassification:`symbol$();
    pnl:`float$())

orders:([] time:`timespan$();
    sym:`symbol$();
    gatewayTimestamp:`timestamp$();
    marketTimestamp:`timestamp$();
    market:`symbol$();
    orderId:`symbol$();
    executionId:`symbol$();
    openTimestamp:`timestamp$();
    startTimestamp:`timestamp$();
    endTimestamp:`timestamp$();
    orderStatus:`symbol$();
    orderType:`symbol$();
    leverage:`float$();
    lhsFlow:`float$();
    price:`float$();
    rhsFlow:`float$();
    executedLhsFlow:`float$();
    stopLoss:`float$();
    takeProfit:`float$();
    fees:`float$();
    instrumentType:`symbol$();
    strategy:`symbol$();
    misc:())