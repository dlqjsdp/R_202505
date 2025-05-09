getwd()

menu = c('짜장면', '탕수육', '깐풍기', '짬뽕', '샥스핀', '양장피')

for(item in menu){ 
  print(item)
}

for(item in menu){
  print(item, '시킬까요\n'); # 출력 불가
}

for(item in menu){
  cat(item, '시킬까요\n'); # 출력 가능
}

for(item in menu){
  text = cat(item, '시킬까요\n'); # cat 반환 타입이 없다.
  print(text)
}

for(item in menu){
  text = paste(item, '시킬까요\n'); 
  print(text)
}

for(item in menu){
  if(item %in% c('짜장면', '짬뽕')){
    cat(item, '요리부터 주문합시다!\n', sep='?')
  }else{
    cat(item, '다음 메뉴는 뭔가요?\n', sep='?')
  }
}

for(item in menu){
  if(item %in% c('짜장면', '짬뽕')){
    next  # continue
    cat(item, '요리부터 주문합시다!\n', sep='?')
  }else{
    cat(item, '다음 메뉴는 뭔가요?\n', sep='?')
  }
}

i=0

repeat{
  i = i+1;
  if(i > 10000) break
  print(i)
}

i = 0
while(TRUE) {
  i = i + 1
  if(i > 10000) break
  print(i)
}

new_sum = function(x,y){
  return (x+y)
}

print(new_sum(5, 4))

py = function(a,b){
  return(sqrt(a^2 + b^2))
}

print(py(3,4))


# apply() -> 벡터를 넣어 반복실행하는 함수
# apply(x=객체명, margin=1(행) 또는 2(열), fun=함수)

getwd()

str(iris)

head(iris, n=3L)
tail(iris)

irisMat1 = as.matrix(iris) # 행렬로 변환
head(irisMat1)

irisMat2 = as.matrix(iris[, 1:4]) # 행렬로 변환하는데, 행 전체, 열은 1:4까지
head(irisMat2)


apply(X=iris[, 1:4], MARGIN=1, FUN = mean)

apply(X=iris[, 1:4], MARGIN=2, FUN = mean)

apply(X=iris[, 1:4], MARGIN=2, FUN = sum)


list.files()
getwd()

setwd(dir='D:\\Dev\\Works\\R')
getwd()
list.files()

# 엑셀파일 입출력
# write_xlsx(x=객체명, path='저장할 xlsx 파일명')
# read_xlsx(path='읽을 xlsx파일명', sheet='시트명', skip='생략할 행 개수')

write_xlsx(x = iris, path='iris.xlsx')

library(writexl) # import
write_xlsx(x = iris, path='iris.xlsx')

install.packages('writexl') # 패키지 설치
library(writexl) # import
write_xlsx(x = iris, path='iris.xlsx')

list.files()

install.packages('readxl') # 패키지 설치
library(readxl)

obj1 = read_xlsx(path='iris.xlsx')
str(obj1)

# 텍스트 파일 입출력 : csv파일
# write.csv(x=객체명, file='경로명', sep=','
#           row.names = TRUE,
#           col.names = TRUE,
#           fileEncoding = ''
#           )

# read.csv(file='읽을 csv 파일명',
#          sep=",",
#          header=TRUE,
#          skip = 생략할 행 개수,
#          fileRncoding = ''
#          )

write.csv(x=iris, file='iris.csv')
list.files()

obj2 = read.csv(file='iris.csv')
str(obj2)
head(obj2)

fileName = 'APT_Price_Gangnam_2020.csv'
price = read.csv(fileName, fileEncoding = 'utf-8')
head(price)

str(price)

