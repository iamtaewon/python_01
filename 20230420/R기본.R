# 벡터 데이터를 생성
a = c(1,2,3,4,5)
a
1:5 -> b
b
a = c(1, "test")
a

# 행렬
d = array(1:20, dim = c(4,5))
d
e = matrix(1:20, nrow=2)
e

# 리스트 형태 (python에서는 dict 형태와 흡사)
f = list(name = 'test', age = 20, phone = '01012345678')
f
f['name']
f['age']

# 데이터프레임
df = data.frame(name = c('test', 'test2'),
                age = c(20, 30),
                phone = c('01012345678', '01098765432'))
df

# 조건문 (if문)
a <- 15
if (a > 15){
  print('a는 15보다 크다')
}else if (a == 15){
  print('a는 15와 같다')
}else{
  print('a는 15보다 작거나 같다')
}

# which문 (python에서 find() 흡사)
name = c("test", "test2", "test3")
which(name == 'test2')
which(name != 'test2')
which(name == 'test5')

# 패키지 설치
install.packages('dplyr')
Yes

# 패키지 로드
library(dplyr)

# 연산자 생성
'%s%' = function(x,y){
  result = x + y
  return(result)
}
5 %s% 3

func_1 = function(){
  print('Hello world')
}
func_1()
func_2 = function(x,y){
  result = x ^ y
  return(result)
}
func_2(5,2)
'%a%' = function(x,y){
  result = x ^ y
  return(result)
}
5%a%2
func_2(5,2)

# 함수의 매개변수에 기본값을 지정
func_3 = function(x, y=3){
  result = x - y
  return(result)
}
func_3(5)
func_3(5,1)

# 데이터프레임

name = c("test1", "test2", "test3", "test4")
grade = c(1,3,2,1)

student = data.frame(name,grade)
student

# 행렬
midterm = c(70, 80, 60, 90)
final = c(60, 90, 80, 90)
score = cbind(midterm, final)

score

total_score = midterm + final
total_score

# 데이터프레임 생성 시 행렬이든 데이터프레임이든 벡터든
# 조건만 맞다면데이터프레임으로 연결이 가능
students = data.frame(student, score, total_score)
students

# gender 컬럼을 추가
gender = c("F", "M", "M", "F")
# 컬럼을 추가하는 함수
cbind(students, gender)
# 데이터프레임을 생성하는 함수
data.frame(students, gender)
# 데이터프레임에 파생변수를 생성
students$gender = gender
students

# 컬럼을 하나(midterm)만 출력하려면?
students$midterm
students[['midterm']]  
students[[3]]

# 행을 추가한다
new_student = data.frame(
  name = "test5",
  grade = 3,
  midterm = 80,
  final = 60,
  gender = "F",
  total_score = 140
)
new_student

rbind(students, new_student) -> students
students

# 데이터프레임의 필터링
students[1,]
students[c(2,4),]
students[1:3,]
#해당 인덱스를 제외하고 출력
students[-1,]
students[c(-2,-4),]
# 특정한 조건을 이용해서 필터링
# 학년이 2학년 이상인 경우만 출력
students[['grade']] >= 2
students[students[['grade']] >= 2, ]

# 중간 성적이 70이상이고 기말의 성적이 90이상인 학생들의 정보 출력
students$midterm >= 70 & students$final >= 90 -> flag
students[flag, ]
students[students[['midterm']] >= 70 & students[['final']] >= 90, ]

# 정렬 변경
order(students$grade)
students[order(-students$grade), ]
students[order(students$grade, decreasing = TRUE), ]
