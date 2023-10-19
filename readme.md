Change time zone in PBI  
In ADO - you can configure time zone  
In PBI - UTC  

To change hour only  
```Paris Time Measure = 
FORMAT(TIMEVALUE(POD_servers[End time]) + TIME(1, 0, 0), "HH:mm")
```

To change date and hour  
```
French_DateTime = POD_servers[Migration forecast (end) UTC] + TIME(1, 0, 0)
```
