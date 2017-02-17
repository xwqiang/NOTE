nc 172.21.62.101 7088 < oa.http
oa.http如下:
```
POST /saveFlySummaryData HTTP/1.1
Content-Type:application/x-www-form-urlencoded
Host:localhost
Content-Length:423
User-Agent:Mozilla/5.0 (Windows; U; Windows NT 5.0; zh-CN; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4

title=test&userId=1841&userName=前台&yearMonth=2016-06&flgRecordList=[{"id":"140"},{"id":"147","flyNo":"11","changeFee":1,"refundFee":1,"ticketPrice":9},{"id":"141","flyNo":"1","changeFee":1,"refundFee":1},{"id":"133","flyNo":"te","changeFee":2,"refundFee":22,"ticketPrice":232},{"id":"144","flyNo":"1","changeFee":2,"refundFee":2,"ticketPrice":2},{"id":"143","flyNo":"2","changeFee":2,"refundFee":2,"ticketPrice":2.23}]
```
