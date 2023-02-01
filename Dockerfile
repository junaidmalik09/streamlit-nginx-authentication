FROM python:3.9

COPY requirements.txt /app/
COPY app.py /app/

WORKDIR /app

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.address 0.0.0.0 --server.baseUrlPath /streamlit
