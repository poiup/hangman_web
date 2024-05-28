FROM python:3.8-slim-buster
LABEL maintainer = "여긴 필요한 정보 적으면됨, EXPOSE는 해당포트번호를 사용하니 포트매핑때 참고하라는 정보"
WORKDIR /app
COPY app.py ./
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
EXPOSE 4000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]