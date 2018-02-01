
#其中"UTF-8"可变，取决于数据库中中文字符的数据类型
myEncode=function(x){
  Encoding(x)="UTF-8" 
  return(x)
}
MyReadTable<-function(db,table)
{MyTable<-dbReadTable(offline_con,table)
MyTable<-apply(MyTable,2,myEncode)
return(data.table(MyTable))}
fb_cnt<-MyReadTable(offline_con,"fb_cnt")