select TRANSDATE,sum(GROSSAMOUNT)/1000000.0  from RETAILTRANSACTIONTABLE A where PARTITION=5637144576 and DATAAREAID='phct'
and TRANSDATE between '2023-05-01' and '2023-07-17' and store in (select storeid from PMCAPPSTOREEXT)
and type in (2,19) and ENTRYSTATUS in (0,2)
group by TRANSDATE
order by TRANSDATE
