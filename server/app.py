# 라이브러리 로드
from flask import Flask, render_template, request, redirect

# Flask 클래스 생성
# __name__ : 현재 파일의 이름
app = Flask(__name__)

# api 생성
# 네비게이션 함수
# 해당하는 주소로 요청이 들어왔을 때 아래의 함수르르 실행해준다.
# localhost(127.0.0.1) -> 자기 자신의 컴퓨터
# localhost:3000/ 요청 시 아래의 함수를 실행
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/second')
def second():
    return render_template('second.html')
# post 형태의 api 생성
@app.route('/login', methods=['post'])
def login():
    # 유저가 보낸 데이터를 변수에 대입
    # _id부분은 html의 input 안의 name이라는 속성의 값
    id = request.form['_id']
    password = request.form['_pass']
    print(id, password)
    if (id == "test") & (password == "1234"):
        return render_template('main.html', _id = id)
    else:
        return redirect('/')


app.run(port=3000)