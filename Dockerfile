FROM python:3.7.3-stretch


#working directory
WORKDIR /app

#COPY source code to wroking directory 
COPY . app.py /app/

# INstall packages from requirments.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
