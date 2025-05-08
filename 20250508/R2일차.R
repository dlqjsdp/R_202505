a = c(0, 2, 4)  # 자료형이 같아야 한다.
b = c(1, 2, 3)
c = c(0, 1.2, 'k')  # k 때문에 모두 문자로 인식
x = 0
x == a[1]
x == a[2]

x == a[1] | x == a[2] | x == a[3]

x %in% a  # x가 a에 포함되어 있나? true
x %in% b  # x가 b에 포함되어 있나? false


# list - 리스트
# list(원소명1 = 원소1, 원소명2 = 원소2 ...)

num = seq(from=1, to=10, by=2)
cha = rep(x = c('a', 'b'), each = 2)

lst1 = list(num, cha)
print(lst1)
class(lst1)
print("----------------------")
str(lst1)

lst2 = list(a = num, b = cha, c = lst1)
print(lst2)

str(lst2)

lst1$a
lst2$a
lst2$b
lst2$c

# 리스트 원소 추가
lst2$d <- 1:5
str(lst2)

# 리스트 원소 삭제
lst2$a = NULL
str(lst2)

# 리스트 원소 변경
lst2$b <- letters[1:5]
print(lst2)
print(lst2$b)
lst2$b[1] = 'A'
print(lst2$b)


# 데이터 프레임

# 생성
# data.frame(열이름1 = 열벡터1, 열이름2 = 열벡터2...)

num = seq(from = 1, to = 10, by = 2)
chr <- rep(x=c('a', 'b'), each=3)

df1 = data.frame(num, chr)

cha = letters[1:5]

df1 = data.frame(num, cha)

class(df1)
str(df1)
print(df1)

options('max.print') #dataframe 최대 출력 개수
print(df1)
View(df1)

# 데이터 프레임 원소 선택 
df1[1,1] # 1행 1열
df1[1,2]  # 1행 2열
df1[1:2, 1:2]   # 1~2행 1~2열 
df1[1, ]  # 1행 열 전체 (1,2열)
df1[1:2, ]  # 1~2행 열전체 (1,2열)

df1[, 1]  # 행은 전부다, 1열
df1[, 1:2]  # 행은 전부다, 1~2열

df1[, 'num']
df1[, c('num', 'cha')]

df1$num
df1$cha

# true/false로 반환받기
df1$num > 5

df1[df1$num >= 5, ]

# 데이터 프레임 원소 추가

df1$int = 11:15
View(df1)

# 데이터프레임 열 추가하기 : cbind()
cbind(df1, rep(x = TRUE, times = 5))

cbind(df1, log = rep(x = TRUE, times = 5))

df1 = cbind(df1, log = rep(x = TRUE, times = 5))
View(df1)

cbind(df1, log2 = rep(x = TRUE, times = 7)) # 행 개수가 일치해야함

# 데이터프레임 행 추가하기 : rbind()
df3 = data.frame(num = 6, cha = 'f', int=16, log=TRUE)
print(df3)
rbind(df1, df3)

print(df1)
df1 = rbind(df1, df3)
View(df1)

# 데이터프레임 원소 삭제
df1$num = NULL # 열 삭제
View(df1)
print(df1)

# 행 또는 열 삭제하기
df1[-1, -1]

df1[-1, ] # 1행 삭제
df1[1, ] # 1행 출력
df1[, -1] # 1열 삭제

# 데이터 프레임 원소 변경
print(df1)
df1$cha = letters[1:6]
df1$cha = LETTERS[1:6]

df1$int[1] = '22'

# 조건문
score <- 100
if(score>=70){
  grade = "합격"
}else{
  grade = "불합격"
}

print(grade)

score = seq(from=40, to=100, by=10)

score >= 70

ifelse(test = score >= 70, '합격', '불합격')
ifelse(test = score >= 70, yes='합격', no='불합격')

df1 = data.frame(score)

print(df1)
str(df1)

df1 = data.frame(score); print(df1); str(df1)

df1$grade = ifelse(test = df1$score >= 70, yes='합격', no='불합격')
print(df1)
