FROM ubuntu:18.04

RUN apt-get update && apt-get -y install python3 && apt-get -y install python3-pip && apt-get -y install git && git clone https://github.com/anfederico/Flaskex

WORKDIR /Flaskex

RUN pip3 install -r requirements.txt

RUN pip3 uninstall WTForms -y

RUN pip3 install WTForms==2.3.3

CMD ["python3", "app.py"]

#при запуске открыть порт 5000 командой docker run -p 5000:5000 <dockerimage>