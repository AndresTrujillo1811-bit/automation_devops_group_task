FROM python:3.11-slim 

WORKDIR /app 

COPY get_api.py .
COPY requirements.txt . 
COPY dashboard.py .      

RUN pip install -r requirements.txt 

CMD ["streamlit", "run", "dashboard.py", "--server.address:0.0.0.0", "--server.port:8501"]